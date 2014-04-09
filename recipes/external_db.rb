data_directory = node['teamcity']['server']['data_dir']

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
  source "database.properties.erb"
end
