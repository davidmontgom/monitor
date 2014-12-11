
service "supervisord"
template "/etc/supervisor/conf.d/redis-queue-monitor.conf" do
  path "/etc/supervisor/conf.d/redis-queue-monitor.conf"
  source "supervisord.redis-queue-monitor.conf.erb"
  owner "root"
  group "root"
  mode "0755"
  notifies :restart, resources(:service => "supervisord")
end
