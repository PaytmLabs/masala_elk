# masala_elk

This is a component of the [masala toolkit](https://github.com/PaytmLabs/masala).

This is a [wrapper cookbook](http://blog.vialstudios.com/the-environment-cookbook-pattern/#thewrappercookbook) for providing recipes for a simplified configuration elasticsearch, logstash, and kibana.

## Supported Platforms

The platforms supported are:
- Centos 6.7+ / Centos 7.1+
- Ubuntu 14.04 LTS (And future LTS releases)
- Debioan 8.2+

## Attributes

Please also see the documentation for the cookbooks included by masala_elk. (See [metadata.rb](https://github.com/PaytmLabs/masala_elk/blob/develop/metadata.rb) file)

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['masala_elk']['cluster_name']</tt></td>
    <td>String</td>
    <td>Name for the cluster</td>
    <td><tt>no_name</tt></td>
  </tr>
  <tr>
    <td><tt>['masala_elk']['elastic_search']['data']</tt></td>
    <td>Boolean</td>
    <td>If a node running Elasticsearch should hold data and perform data operations</td>
    <td><tt>true</tt></td>
  </tr>
  <tr>
    <td><tt>['masala_elk']['elastic_search']['master']</tt></td>
    <td>Boolean</td>
    <td>If a node running Elasticsearch should be eligible to be elected as a master node</td>
    <td><tt>true</tt></td>
  </tr>
  <tr>
    <td><tt>['masala_elk']['elastic_search']['unicast_discovery_hosts']</tt></td>
    <td>String</td>
    <td>A list IP addresses of nodes participating in the ES cluster. Normally set by a provisioner. Recipe forces unicast to enable operating in environment without multicast such as AWS</td>
    <td><tt>true</tt></td>
  </tr>
  <tr>
    <td><tt>['masala_elk']['logstash']['input'][*]</tt></td>
    <td>Hash</td>
    <td>Input driver configuration. See templates/logstash/input and the .kitchen.yml for details</td>
    <td><tt>None</tt></td>
  </tr>
  <tr>
    <td><tt>['masala_elk']['logstash']['output'][*]</tt></td>
    <td>Hash</td>
    <td>Output driver configuration. See templates/logstash/output and the .kitchen.yml for details</td>
    <td><tt>None</tt></td>
  </tr>
</table>

## Usage

### masala_elk::default

Include `masala_elk` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[masala_elk::default]"
  ]
}
```

## License, authors, and how to contribute

See:
- [LICENSE](https://github.com/PaytmLabs/masala_elk/blob/develop/LICENSE)
- [MAINTAINERS.md](https://github.com/PaytmLabs/masala_elk/blob/develop/MAINTAINERS.md)
- [CONTRIBUTING.md](https://github.com/PaytmLabs/masala_elk/blob/develop/CONTRIBUTING.md)

