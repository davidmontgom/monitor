

service "monit"
template "/etc/monit/conf.d/git-service-monitor.conf" do
  path "/etc/monit/conf.d/git-service-monitor.conf"
  source "monit.git-zk-service-monitor.conf.erb"
  owner "root"
  group "root"
  mode "0755"
  notifies :restart, resources(:service => "monit")
end