
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
default['elasticsearch']['checksums']['2.4.1']['debian'] = 'cdf94b84cbf3024961cd09a689957fe39df6da9afcfe76ceba20dbfb50b92945'
default['elasticsearch']['checksums']['2.4.1']['rhel'] = 'c8a275d12876165da532ebfde1eeb6a502613bda919d95516f30f6495ae5086d'
default['elasticsearch']['checksums']['2.4.1']['tar'] = '23a369ef42955c19aaaf9e34891eea3a055ed217d7fbe76da0998a7a54bbe167'
default['elasticsearch']['checksums']['2.4.2']['debian'] = '22be39704aa19fa7882a0b0024a13f19a60ee2bd0f43731ca9273a085784302c'
default['elasticsearch']['checksums']['2.4.2']['rhel'] = 'e1f3ef8325af7f85485b4fd6c4eb72ecbc0fb2437de848dd149d84706833cc8e'
default['elasticsearch']['checksums']['2.4.2']['tar'] = '7741a2e78f5f155c5005ba891f9b6e57a4e45178cb540beed101d30517cbe22f'
default['elasticsearch']['checksums']['2.4.3']['debian'] = 'a5c008459a678392550875deef71792c7ec06ce546a55efa23d129eebb5c7a66'
default['elasticsearch']['checksums']['2.4.3']['rhel'] = 'e5349ea8eeedf03397738a626fe9c7dd7eb8d8f063d03862bd74337b82ffb55e'
default['elasticsearch']['checksums']['2.4.3']['tar'] = '01eb684943be01d4af3131c6795073187b1a5868b6525d9686cc0d7a315db12e'
default['elasticsearch']['checksums']['2.4.4']['debian'] = '9236f86a4896671553a41cb43e7d0dc59be6f2c52e793b1506735fe6b2a8a525'
default['elasticsearch']['checksums']['2.4.4']['rhel'] = 'bcf2f72197dc22b6254fd34e800863e4f1a21ecbd9c9222164b1690a4c90ab5d'
default['elasticsearch']['checksums']['2.4.4']['tar'] = '981092e6ca65ba5560b8b97a74e5ed0eb2236e9128efdb85bb652cec340158e2'
default['elasticsearch']['checksums']['2.4.5']['debian'] = '493d1890b255c6575d107f189431e483b507c8eaab60750b0228e933bc4e86de'
default['elasticsearch']['checksums']['2.4.5']['rhel'] = 'a79adb53d28fd41da8aed9a79a78af4866b8223270ec87a52cbf1260b2b131ba'
default['elasticsearch']['checksums']['2.4.5']['tar'] = '87fb4d2bcd7e856f2da6945d27a3cf81672de35d33aaffbdbfb81d68e644ad8f'

# ES config values
default['masala_elk']['elastic_search_version'] = '2.4.4'
default['masala_elk']['elastic_search_gc_settings'] = <<-GC_CONFIG
     -XX:+UseParNewGC
     -XX:+UseConcMarkSweepGC
     -XX:CMSInitiatingOccupancyFraction=75
     -XX:+UseCMSInitiatingOccupancyOnly
     -XX:+HeapDumpOnOutOfMemoryError
     -XX:+DisableExplicitGC
    GC_CONFIG
default['masala_elk']['elastic_search']['node.master'] = true
default['masala_elk']['elastic_search']['node.data'] = true
default['masala_elk']['elastic_search']['cluster.routing.allocation.awareness.attributes'] = 'rack_id,zone_id'
default['masala_elk']['elastic_search']['node.rack_id'] = 'default_rack'
default['masala_elk']['elastic_search']['node.zone_id'] = 'default_zone'
default['masala_elk']['elastic_search']['discovery.zen.ping.multicast.enabled'] = false
default['masala_elk']['elastic_search']['path.data'] = '/elasticsearch/data'
default['masala_elk']['elastic_search']['path.logs'] = '/elasticsearch/logs'

