
redis_queue = node['monitor']['redis_queue'] 
redis_queue=redis_queue.to_json
file "/var/redis_queue_list.json" do
  owner 'root'
  group 'root'
  mode '0666'
  content "#{redis_queue}"
end

service "supervisord"
template "/etc/supervisor/conf.d/redis-queue-monitor.conf" do
  path "/etc/supervisor/conf.d/redis-queue-monitor.conf"
  source "supervisord.redis-queue-monitor.conf.erb"
  owner "root"
  group "root"
  mode "0755"
  notifies :restart, resources(:service => "supervisord")
end
