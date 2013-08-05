puppet-download
===============

Puppet modules for downloading files using wget.


### Sample usage

```
  download::wget { '/opt/packages/elasticsearch.deb':
    uri => 'https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-0.90.2.deb',
  }

  class { 'elasticsearch':
    require => Download::Wget['/opt/packages/elasticsearch.deb'],
    pkg_source => '/opt/packages/elasticsearch.deb',
  }
```




