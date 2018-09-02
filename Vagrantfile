# -*- mode: ruby -*-

dir = File.dirname(File.expand_path(__FILE__))

require 'yaml'
require "#{dir}/puphpet/ruby/deep_merge.rb"
require "#{dir}/puphpet/ruby/to_bool.rb"
require "#{dir}/puphpet/ruby/puppet.rb"

configValues = YAML.load_file("#{dir}/puphpet/config.yaml")

ENV['VAGRANT_DEFAULT_PROVIDER'] = 'virtualbox'

provider = ENV['VAGRANT_DEFAULT_PROVIDER'] ? ENV['VAGRANT_DEFAULT_PROVIDER'] : 'local'
if File.file?("#{dir}/puphpet/config-#{provider}.yaml")
  custom = YAML.load_file("#{dir}/puphpet/config-#{provider}.yaml")
  configValues.deep_merge!(custom)
end

if File.file?("#{dir}/puphpet/config-custom.yaml")
  custom = YAML.load_file("#{dir}/puphpet/config-custom.yaml")
  configValues.deep_merge!(custom)
end

data = configValues['vagrantfile']

Vagrant.require_version '>= 1.8.1'

Vagrant.configure('2') do |config|

	config.push.define "stb-ga", strategy: "ftp" do |push|
	  push.host = "172.31.10.115"
	  push.username = "root"
	  push.password = "mn2111td"
	  push.secure = true
	  push.passive = false
	  push.dir = "./puphpet/files"
	  push.destination = "/var/www/html/xtv-ws-client/webclient/"
	  # push.include = ""
	  # push.exclude = ""
	end

	config.push.define "production", strategy: "ftp" do |push|
	  push.host = "172.31.10.115"
	  push.username = "root"
	  push.password = "mn2111td"
	  push.secure = true
	  push.dir = "./"
	  push.destination = "/var/www"
	  # push.include = ""
	  # push.exclude = ""
	end

  eval File.read("#{dir}/puphpet/vagrant/Vagrantfile-#{data['target']}")
end
