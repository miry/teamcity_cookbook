#
# Cookbook Name:: teamcity
# Recipe:: default
#
# Copyright 2014, Michael Nikitochkin
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

data_directory = node['teamcity']['server']['data_dir']
jdbc_driver_filename = "postgresql-#{node["teamcity-server"]["postgresql"]["driver_version"]}.jdbc4.jar"


directory node['teamcity']['server']['jdbc']['driver_directory'] do
  recursive true
  action :create
end

remote_file node['teamcity']['server']['jdbc']['driver_path'] do
  backup false
  mode 00644
  source node['teamcity']['server']['jdbc']['driver_url']
  action :create_if_missing
end

data_config_directory = "#{data_directory}/config"
directory data_config_directory do
  recursive true
  action :create
end

template "#{data_config_directory}/database.properties" do
  source "database.properties"
end
