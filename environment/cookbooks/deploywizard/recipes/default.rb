#
# Cookbook Name:: deploywizard
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

deploywizard 'dropwizard-example' do
  name 'dropwizard-example'
  group_id 'io.dropwizard'
  version '0.7.1-SNAPSHOT'
  repository 'http://10.0.2.2:8081/nexus/content/repositories/dwexample-snapshot/'
end

template "/opt/microservices/dropwizard-example/dropwizard-example.yml" do
  source 'dropwizard-example.yml.erb'
  owner node['deploywizard']['user']
end
