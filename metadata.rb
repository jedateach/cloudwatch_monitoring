name             'cloudwatch_monitoring'
maintainer       'vimtaku'
maintainer_email 'vimtaku@gmail.com'
license          'Apache 2.0'
description      'This script is forked from https://github.com/alexism/cloudwatch_monitoring. cloudwatch_monitoring installs the Amazon CloudWatch Monitoring Scripts for Linux - custom metrics that reports memory, swap, and disk space utilization metrics.'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version "1.3.1"

%w{ ubuntu debian redhat centos amazon }.each do |os|
  supports os
end

%w{cron}.each do |cookbook|
  depends cookbook
end
