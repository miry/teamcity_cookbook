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
#



remote_file ::File.join(node['tomcat']['webapp_dir'], node['teamcity']['server']['path']+'.war') do
  backup false
  mode 00644
  owner node['tomcat']['user']
  group node['tomcat']['group']
  source node['teamcity']['server']['archive_url']
  action :create_if_missing
end


# remote_file ::File.join(node['teamcity']['data_path'], node['teamcity']['server']['archive_name']) do
#   backup false
#   mode 00644
#   owner node['tomcat']['user']
#   group node['tomcat']['group']
#   source node['teamcity']['server']['archive_url']
#   action :create_if_missing
# end

#
#
# application node['teamcity']['server']['name'] do
#   path         ::File.join(node['teamcity']['data_path'], node['teamcity']['server']['name'])
#   repository   ::File.join(node['teamcity']['data_path'], node['teamcity']['server']['archive_name'])
#   revision     'HEAD'
#   scm_provider Chef::Provider::File::Deploy
#
#   java_webapp
#
#   tomcat
# end


# application node['teamcity']['server']['name'] do
#   path         ::File.join(node['teamcity']['data_path'], node['teamcity']['server']['name'])
#   repository   node['teamcity']['server']['archive_url']
#   revision     '...'
#   scm_provider Chef::Provider::RemoteFile::Deploy
#
#   java_webapp
#
#   tomcat
# end
