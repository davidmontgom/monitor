
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
easy_install_package "zc.zk" do
  action :install
end

service "supervisord"
template "/etc/supervisor/conf.d/firewall.conf" do
  path "/etc/supervisor/conf.d/firewall.conf"
  source "supervisord.ufw_firewall.conf.erb"
  owner "root"
  group "root"
  mode "0755"
  notifies :restart, resources(:service => "supervisord")
end 