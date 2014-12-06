


role_list_hc = node['monitor']['role_list_hc'] 

service "supervisord"
template "/etc/supervisor/conf.d/health-check.conf" do
  path "/etc/supervisor/conf.d/health-check.conf"
  source "supervisord.health-check.conf.erb"
  owner "root"
  group "root"
  mode "0755"
  variables :role_list_hc => role_list_hc
  notifies :restart, resources(:service => "supervisord")
end
