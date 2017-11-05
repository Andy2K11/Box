selinux_config = "/etc/selinux/config"

ruby_block "disable selinux" do
    block do
        sed = Chef::Util::FileEdit.new(selinux_config)
        sed.search_file_replace(/SELINUX=enforcing/, 'SELINUX=disabled')
        sed.write_file
    end
end

# execute "disable now" do
#     command 'setenforce 0'
# end
