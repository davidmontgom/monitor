
service "supervisord"
template "/etc/supervisor/conf.d/git-service.conf" do
  path "/etc/supervisor/conf.d/git-service.conf"
  source "supervisord.git-service.conf.erb"
  owner "root"
  group "root"
  mode "0755"
  notifies :restart, resources(:service => "supervisord")
end
