#
# Cookbook:: task1_apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
package 'httpd'

package 'net-tools'

service 'httpd' do
  action [:enable, :start]
end

template '/var/www/html/index.html' do # ~FC033
  source 'index.html.erb'
end

# ifconfig '192.168.56.200' do
#   device 'enp0s3'
# end