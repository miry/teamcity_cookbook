remote_file node['teamcity']['server']['jdbc']['driver_path'] do
  backup false
  mode 00644
  source node['teamcity']['server']['jdbc']['driver_url']
  action :create_if_missing
end

data_config_directory = "#{node['teamcity']['server']['data_dir']}/config"

template "#{data_config_directory}/database.properties" do
  source "database.properties.erb"
  user node['tomcat']['user']
  group node['tomcat']['group']
end
