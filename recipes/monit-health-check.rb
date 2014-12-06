role_list_hc = node['monitor']['role_list_hc'] 

service "monit"
template "/etc/monit/conf.d/health-check-monitor.conf" do
  path "/etc/monit/conf.d/health-check-monitor.conf"
  source "monit.health-check-monitor.conf.conf.erb"
  owner "root"
  group "root"
  mode "0755"
  variables :role_list_hc => role_list_hc
  notifies :restart, resources(:service => "monit")
end