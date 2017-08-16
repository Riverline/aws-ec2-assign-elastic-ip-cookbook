#
# Cookbook Name:: aws-ec2-assign-elastic-ip
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "poise-python"

python_package "aws-ec2-assign-elastic-ip" do
  action :upgrade
end

execute "assign-elastic-ip" do
  command "aws-ec2-assign-elastic-ip \
          --access-key '#{node["aws-ec2-assign-elastic-ip"]["access-key"]}' \
          --secret-key '#{node["aws-ec2-assign-elastic-ip"]["secret-key"]}' \
          --region     '#{node["aws-ec2-assign-elastic-ip"]["region"]}' \
          --valid-ips  '#{node["aws-ec2-assign-elastic-ip"]["valid-ips"].join(',')}' \
  "
end
