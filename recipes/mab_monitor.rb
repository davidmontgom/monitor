


service "supervisord"
template "/etc/supervisor/conf.d/mab-monitor.conf" do
  path "/etc/supervisor/conf.d/mab-monitor.conf"
  source "supervisord.mab-monitor.conf.erb"
  owner "root"
  group "root"
  mode "0755"
  notifies :restart, resources(:service => "supervisord")
end
