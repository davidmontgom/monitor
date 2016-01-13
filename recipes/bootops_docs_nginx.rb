template "/etc/nginx/sites-available/docs.nginx.conf" do
  path "/etc/nginx/sites-available/docs.nginx.conf"
  source "bootops.nginx.conf.erb"
  owner "root"
  group "root"
  mode "0644"
  notifies :reload, resources(:service => "nginx")
  #variables :nginx_port => nginx_port, :uwsgi_port => uwsgi_port
end

link "/etc/nginx/sites-enabled/docs.nginx.conf" do
  to "/etc/nginx/sites-available/docs.nginx.conf"
end
service "nginx"