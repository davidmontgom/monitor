service "monit"
template "/etc/monit/conf.d/monitor.conf" do
  path "/etc/monit/conf.d/monitor.conf"
  source "monit.monitor.conf.erb"
  owner "root"
  group "root"
  mode "0755"
  notifies :restart, resources(:service => "monit")
end