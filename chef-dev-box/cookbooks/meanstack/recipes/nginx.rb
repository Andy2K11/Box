cookbook_file '/etc/yum.repos.d/nginx.repo' do
    source 'nginx.repo'
    mode '0755'
    owner 'root'
    group 'root'
    action :create_if_missing
end

package 'nginx' do
    action :install
end

cookbook_file '/etc/nginx/nginx.conf' do
    source 'nginx.conf'
    mode '0644'
    owner 'root'
    group 'root'
    action :create
end

service 'nginx' do
    action :start
end
