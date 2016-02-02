#
# Cookbook Name:: masala_elk
# Recipe:: elastic_search
#
# Copyright 2016, Paytm Labs
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

include_recipe 'masala_base::default'

primary_if = node['network']['interfaces'][node['system']['primary_interface']]
primary_addrs = primary_if['addresses']
primary_addrs_ipv4 = primary_addrs.select { |_addr, attrs| attrs['family'] == 'inet' }
primary_ip = primary_addrs_ipv4.keys.first

elasticsearch_user 'elasticsearch'

elasticsearch_install 'elasticsearch' do
  version '2.1.1'
end

elasticsearch_configure 'elasticsearch' do
  action :manage
  configuration ({
    'node.name' => node['system']['short_hostname'],
    'cluster.name' => node['masala_elk']['cluster_name'],
    'network.bind_host' => primary_ip,
    'network.publish_host' => primary_ip,
    'node.master' => node['masala_elk']['elastic_search']['master'],
    'node.data' => node['masala_elk']['elastic_search']['data'],
    'discovery.zen.ping.multicast.enabled' => "false",
    'discovery.zen.ping.unicast.hosts' => node['masala_elk']['elastic_search']['unicast_discovery_hosts']
  })
end

elasticsearch_service 'elasticsearch'

elasticsearch_plugin 'head' do
  url 'mobz/elasticsearch-head'
  notifies :restart, 'elasticsearch_service[elasticsearch]', :delayed
end

# Not 2.0+ compliant, but nice...
#elasticsearch_plugin 'paramedic' do
#  url 'karmi/elasticsearch-paramedic'
#  notifies :restart, 'elasticsearch_service[elasticsearch]', :delayed
#end

