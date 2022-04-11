require_relative 'cortana'
#$LOAD_PATH << "."
#require 'cortana'

users = [
    { username: "admin", password: "centos"},
    { username: "mmagnani", password: "fedora"}
]

hashed_users = Cortana.create_secure_users(users)
puts hashed_users