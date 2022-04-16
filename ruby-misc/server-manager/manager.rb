require 'socket'
require 'sinatra'
require 'open3'

#set :bind, '0.0.0.0'

get '/' do
  endpoints = "server_info | ruby_info | os_info"
  return "<h1> Welcome to Server Manager!</h1><br> The current endpoints are:<br><br>#{endpoints}"
end

get "/server_info" do
  return  "<h3>#{Socket.ip_address_list.find { |ai| ai.ipv4? && !ai.ipv4_loopback? }.ip_address} and port #{settings.port}</h3>"
end

get "/ruby_info" do
  return "<h3> About Ruby: #{RUBY_DESCRIPTION} </h3>"
end

get "/os_info" do
  return "<h3> The OS is: #{RUBY_PLATFORM}</h3>"
end

get "/run_command/:command" do
  #http://localhost:4567/run_command/ls%20-la
  #{system('bash -c "echo $SHELL"')}
  stdout, stderr, status = Open3.capture3(params[:command])
  return "<h3> The command you entered is: #{params[:command]} <br> The result is: #{stdout}  </h3>"
end


=begin
get "/server_report" do
  report = "<br> <br> OS: #{get_os_info} <br> <br> Network: #{get_network_info} <br> <br> Hardware: #{get_hardware_info}"
  return "<h3> The server report is: #{report} </h3>"
end

def get_os_info
  stdout, stderr, status = Open3.capture3("uname -a")
  return stdout.to_s
end

def get_network_info
  stdout, stderr, status = Open3.capture3("ifconfig")
  return stdout.to_s
end

def get_hardware_info
  stdout, stderr, status = Open3.capture3("lscpu")
  return stdout.to_s
end
=end