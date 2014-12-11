

service "monit"
template "/etc/monit/conf.d/redis-queue-monitor.conf" do
  path "/etc/monit/conf.d/redis-queue-monitor.conf"
  source "monit.redis-queue-monitor.conf.erb"
  owner "root"
  group "root"
  mode "0755"
  notifies :restart, resources(:service => "monit")
end