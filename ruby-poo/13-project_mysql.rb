# Learning how to connect to a MySQL database using Ruby
# https://github.com/brianmario/mysql2
# sudo dnf install mysql-community-devel --nogpgcheck
# gem install mysql2
# docker run --name mysql -p 3306:3306 -v /tmp/mysql-docker:/var/lib/mysql/ -d -e "MYSQL_ROOT_PASSWORD=redhat" -e "MYSQL_ROOT_HOST=%" mysql
# docker cp 13-project-mysql-data.sql mysql:/tmp
# docker exec -it mysql bash
# mysql -u root -p
# source /tmp/13-project-mysql-data.sql
# ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'redhat';
# ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'redhat';

require 'mysql2'

begin
	host = String('127.0.0.1')
    port = String('3306')
	database = String('tse')
    username = String('root')
	password = String('redhat')

    client = Mysql2::Client.new(:host => host, :port => port, :username => username, :database => database, :password => password)
    puts 'Successfully created connection to database.'

    resultSet = client.query('SELECT * from eleitor;')
    resultSet.each do |row|
        puts 'Data row = (%s, %s, %s)' % [row['id_pessoa'], row['nome'], row['sobrenome']]
    end
    puts 'Read ' + resultSet.count.to_s + ' row(s).'

rescue Exception => e
    puts e.message

ensure
    client.close if client
    puts 'Done.'
end