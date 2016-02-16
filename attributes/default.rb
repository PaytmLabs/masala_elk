
default['logstash']['instance_default']['version']        = '2.1.1'
default['logstash']['instance_default']['source_url']     = 'https://download.elasticsearch.org/logstash/logstash/logstash-2.1.1.tar.gz'
default['logstash']['instance_default']['checksum']       = '2ea975e16a02b416a5bd9eed5ab280224820f278d54f6e0ec4cccf0d8f5ca610'
# They say this is deprecated, but really is all that works reliably
default['logstash']['instance_default']['init_method']    = 'native'

default['kibana']['version']  = '4.3.1-linux-x64'
default['kibana']['checksum'] = 'c6a91921a0055714fd24fb94a70b7057f43492da6bd8c4f2f1acbf0964bf09b9'

default['kibana']['dependency']['install_java'] = false
default['kibana']['dependency']['install_elasticsearch'] = false

default['masala_elk']['cluster_name'] = 'no_name'

# ES config values
default['masala_elk']['elastic_search']['node.master'] = true
default['masala_elk']['elastic_search']['node.data'] = true
default['masala_elk']['elastic_search']['discovery.zen.ping.multicast.enabled'] = false
default['masala_elk']['elastic_search']['path.data'] = '/elasticsearch/data'
default['masala_elk']['elastic_search']['path.logs'] = '/elasticsearch/logs'

