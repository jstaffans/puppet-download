class download {

  define wget($uri, $timeout = 300) {
    exec { "wget $uri":
      path    => ['/bin', '/sbin', '/usr/bin'],
      command => "wget -q '$uri' -O '$name'",
      creates => $name,
      timeout => $timeout,
      require => Package['wget'],
    }
  }

}
