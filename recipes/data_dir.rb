directory node['teamcity']['server']['data_dir'] do
  recursive true
  owner node['tomcat']['user']
  group node['tomcat']['group']
  action :create
end

directory node['teamcity']['server']['jdbc']['driver_directory'] do
  recursive true
  owner node['tomcat']['user']
  group node['tomcat']['group']
  action :create
end

directory ::File.join(node['teamcity']['server']['data_dir'], 'config') do
  recursive true
  owner node['tomcat']['user']
  group node['tomcat']['group']
  action :create
end

execute 'fix_permission for data directory' do
  command "chown -Rf #{node['tomcat']['user']}:#{node['tomcat']['group']} #{node['teamcity']['server']['data_dir']}"
end
