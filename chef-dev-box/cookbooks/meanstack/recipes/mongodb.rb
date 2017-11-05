cookbook_file '/etc/yum.repos.d/mongodb-org-3.4.repo' do
    source 'mongodb-org-3.4.repo'
    mode '0755'
    owner 'root'
    group 'root'
    action :create_if_missing
  end

package 'mongodb-org' do
    action :install
end

directory '/data/db' do
    owner 'root'
    group 'root'
    mode '0755'
    recursive true
    action :create
end

service 'mongod' do
    action :start
end
