##  Ruby and Ruby on Rails Notes

### Install RVM Fedora

```
# https://www.matthewhoelter.com/2019/05/10/setup-and-install-multiple-versions-of-ruby-and-rails-with-rvm.html

$ sudo dnf install gcc-c++ patch readline readline-devel zlib zlib-devel \
    libyaml-devel libffi-devel openssl-devel make \
    bzip2 autoconf automake libtool bison sqlite-devel
$ curl -sSL https://rvm.io/mpapis.asc | sudo gpg2 --import -
$ curl -sSL https://rvm.io/pkuczynski.asc | sudo gpg2 --import -
$ curl -L get.rvm.io | sudo bash -s stable
$ source /etc/profile.d/rvm.sh
$ rvmsudo rvm get stable --auto-dotfiles
$ rvm fix-permissions system
$ rvm group add rvm $USER
$ rvm reload
$ rvm requirements run
$ rvm list known
$ rvm install ruby-3.1.1
$ rvm install ruby-2.7.5
$ rvm list
$ rvm use 3.1.1 --default
$ gem install rails # Latest version
$ gem install rails --version=4.2.11.1 # For a specific version
# Quickly Create a New Project With Specific Version
$ rails _4.2.11.1_ new new_project
```

```
$ gem install rails -v 6.1.5
$ rails new blog
$ sudo dnf install nodejs
$ rails webpacker:install
$ sudo npm install --global yarn
$ rails webpacker:install
$ rails s
```