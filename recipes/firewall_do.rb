
easy_install_package "dop" do
  action :install
end
easy_install_package "timeout" do
  action :install
end
easy_install_package "stopwatch" do
  action :install
end
package "libffi-dev" do
  action :install
end

package "libssl-dev" do
  action :install
end

easy_install_package "paramiko" do
  options "-U"
  action :install
end

service "supervisord"
template "/etc/supervisor/conf.d/firewall_do.conf" do
  path "/etc/supervisor/conf.d/firewall_do.conf"
  source "supervisord.firewall_do.conf.erb"
  owner "root"
  group "root"
  mode "0755"
  notifies :restart, resources(:service => "supervisord")
end