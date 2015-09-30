easy_install_package "dop" do
  action :install
end
easy_install_package "boto" do
  action :install
end
easy_install_package "paramiko" do
  action :install
end
easy_install_package "libcurl4-openssl-dev" do
  action :install
end
easy_install_package "pycurl" do
  action :install
end
easy_install_package "requests" do
  action :install
end
easy_install_package "pytz" do
  action :install
end
easy_install_package "hiredis" do
  action :install
end
easy_install_package "redis" do
  action :install
end
easy_install_package "stopwatch" do
  action :install
end
easy_install_package "timeout" do
  action :install
end
easy_install_package "nose" do
  action :install
end
easy_install_package "timeout" do
  action :install
end
easy_install_package "pyyaml" do
  action :install
end
easy_install_package "python-digitalocean" do
  action :install
end

easy_install_package "fabric" do
  action :install
end
easy_install_package "nose" do
  action :install
end
easy_install_package "cm_api" do
  action :install
end
easy_install_package "hash_ring" do
  action :install
end
package "libyaml-dev" do
  action :install
end
package "at" do
  action :install
end
package "python-pip" do
  action :install
end
easy_install_package "pychef" do
  action :install
end

package "python-redis" do
  action :install
end

bash "apache-libcloud" do
    user "root"
    code <<-EOH
      pip install apache-libcloud
      touch /var/chef/cache/apache-libcloud.lock
  EOH
  action :run
  not_if {File.exists?("/var/chef/cache/apache-libcloud.lock")}
end



