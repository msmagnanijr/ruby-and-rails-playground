require_relative 'starscream'

class DockerManager
    include Starscream
    attr_accessor :username, :password, :serveraddress
    def initialize(username, password, serveraddress)
        @username = username
        @password = password
        @serveraddress = serveraddress
    end
end

container_manager = DockerManager.new("mmagnani", "xxxxxxx", "docker.io")
puts container_manager.get_docker_info
puts container_manager.docker_authenticate(container_manager.username, container_manager.password, container_manager.serveraddress)
