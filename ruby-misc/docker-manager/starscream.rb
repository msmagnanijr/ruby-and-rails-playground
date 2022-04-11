# https://github.com/upserve/docker-api
require 'json'

module Starscream
    puts "Module Starscream loaded"
    require 'docker'

    def get_docker_info
        puts JSON.pretty_generate(Docker.version)
        puts JSON.pretty_generate(Docker.info)
    end

    def docker_authenticate(username, password, serveraddress)
        Docker.authenticate!('username' => username, 'password' => password, 'serveraddress' => serveraddress)
    end

    def list_images_info
        puts JSON.pretty_generate(Docker::Image.all)
    end
end