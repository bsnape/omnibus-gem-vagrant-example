node default {

  include rvm

  rvm_system_ruby {
    'ruby-2.1':
    ensure      => 'present',
    default_use => true;
  }

  package { "rpm-build":
    ensure => "installed"
  }

}
