
default['logstash']['instance_default']['version']        = '2.1.1'
default['logstash']['instance_default']['source_url']     = 'https://download.elasticsearch.org/logstash/logstash/logstash-2.1.1.tar.gz'
default['logstash']['instance_default']['checksum']       = '2ea975e16a02b416a5bd9eed5ab280224820f278d54f6e0ec4cccf0d8f5ca610'
# They say this is deprecated, but really is all that works reliably
default['logstash']['instance_default']['init_method']    = 'native'

default['kibana']['version']  = '4.6.4-linux-x86_64'
default['kibana']['checksum'] = '05699ab7810d1291d555b429081e0299575270e0eb06491af44ba76b355acead'

default['kibana']['dependency']['install_java'] = false
default['kibana']['dependency']['install_elasticsearch'] = false

default['masala_elk']['cluster_name'] = 'no_name'

# updates to ES not included in their cookbook:
default['elasticsearch2']['checksums']['2.4.5']['debian'] = '493d1890b255c6575d107f189431e483b507c8eaab60750b0228e933bc4e86de'
default['elasticsearch2']['checksums']['2.4.5']['rhel'] = 'a79adb53d28fd41da8aed9a79a78af4866b8223270ec87a52cbf1260b2b131ba'
default['elasticsearch2']['checksums']['2.4.5']['tar'] = '87fb4d2bcd7e856f2da6945d27a3cf81672de35d33aaffbdbfb81d68e644ad8f'
default['elasticsearch2']['checksums']['2.4.6']['debian'] = 'd31ede096cef6129c31343185122790d713e1b27ca9000bb6fbb6abf3634c956'
default['elasticsearch2']['checksums']['2.4.6']['rhel'] = '60ba57ba98f9afd158bce637aa759c0942b4ce117b90e0947aac1e0fb38efc73'
default['elasticsearch2']['checksums']['2.4.6']['tar'] = '5f7e4bb792917bb7ffc2a5f612dfec87416d54563f795d6a70637befef4cfc6f'

# ES config values
default['masala_elk']['elastic_search_version'] = '2.4.4'
default['masala_elk']['elastic_search_gc_settings'] = <<-GC_CONFIG
     -XX:+UseParNewGC
     -XX:+UseConcMarkSweepGC
     -XX:CMSInitiatingOccupancyFraction=75
     -XX:+UseCMSInitiatingOccupancyOnly
     -XX:+HeapDumpOnOutOfMemoryError
     -XX:+DisableExplicitGC
     -XX:HeapDumpPath=/elasticsearch/log
    GC_CONFIG
default['masala_elk']['elastic_search']['node.master'] = true
default['masala_elk']['elastic_search']['node.data'] = true
default['masala_elk']['elastic_search']['cluster.routing.allocation.awareness.attributes'] = 'rack_id,zone_id'
default['masala_elk']['elastic_search']['node.rack_id'] = 'default_rack'
default['masala_elk']['elastic_search']['node.zone_id'] = 'default_zone'
default['masala_elk']['elastic_search']['discovery.zen.ping.multicast.enabled'] = false
default['masala_elk']['elastic_search']['path.data'] = '/elasticsearch/data'
default['masala_elk']['elastic_search']['path.logs'] = '/elasticsearch/logs'

