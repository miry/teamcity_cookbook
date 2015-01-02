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
  #action :create_if_missing
  checksum node['teamcity']['server']['checksum']
  use_conditional_get true
  use_etag true
  use_last_modified true
end
