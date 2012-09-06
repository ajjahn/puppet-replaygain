class replaygain::install {

  package { "mp3gain":
    ensure => latest,
  }

  file { "/tmp/aacgain.deb":
    ensure => present,
    source => "puppet:///modules/${module_name}/aacgain_1.9-0.0medibuntu1_${::architecture}.deb",
  }

  package { "aacgain":
    ensure => latest,
    provider => dpkg,
    source => '/tmp/aacgain.deb',
    require => File['/tmp/aacgain.deb'],
  }

}
