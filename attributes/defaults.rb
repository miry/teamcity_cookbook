default['teamcity']['server']['version'] = '8.1'
default['teamcity']['server']['archive_name'] = "TeamCity-#{node['teamcity']['server']['version']}.war"
# 'http://download.jetbrains.com/teamcity/eap/TeamCity-29848.war'
default['teamcity']['server']['archive_url'] = "http://download.jetbrains.com/teamcity/eap/#{node['teamcity']['server']['archive_name']}"
default['teamcity']['server']['data_dir'] = "/root/.BuildServer"
default['teamcity']['server']['name'] = "teamcity"

# http://jdbc.postgresql.org/download.html
default['teamcity']['server']['jdbc']['driver'] = "postgresql"
default['teamcity']['server']['jdbc']['driver_filename'] = "postgresql-9.3-1101.jdbc41.jar"
default['teamcity']['server']['jdbc']['driver_directory'] = "#{node['teamcity']['server']['data_dir']}/lib/jdbc"
default['teamcity']['server']['jdbc']['driver_path'] = "#{node['teamcity']['server']['jdbc']['driver_directory']}/#{node['teamcity']['server']['jdbc']['driver_filename']}"
default['teamcity']['server']['jdbc']['driver_url'] = "http://jdbc.postgresql.org/download/#{node['teamcity']['server']['jdbc']['driver_filename']}"


default['teamcity']['server']['jdbc']['user']     = node['teamcity']['server']['name']
default['teamcity']['server']['jdbc']['password'] = node['teamcity']['server']['name']
# default['teamcity']['server']['jdbc']['database'] = 'teamcity'
# default['teamcity']['server']['jdbc']['port'] = '5432'
# default['teamcity']['server']['jdbc']['host'] = 'localhost'
default['teamcity']['server']['jdbc']['url']      = "jdbc:postgresql://localhost:5432/#{node['teamcity']['server']['name']}"
default['teamcity']['server']['jdbc']['max_connections'] = 50


