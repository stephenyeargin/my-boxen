class people::stephenyeargin {

  $HOME = "/Users/${::boxen_user}"

  include teams::developers

  ##
  # Brewcask
  ##
  package {
    [
      'alfred',
      'appzapper',
      'atom',
      'backblaze',
      'bittorrent-sync',
      'boxer',
      'caffeine',
      'cloud',
      'dash',
      'dropbox',
      'evernote',
      'firefox',
      'flux',
      'github',
      'google-chrome',
      'imagealpha',
      'imageoptim',
      'linkinus',
      'minecraft',
      'mou',
      'openemu',
      'sidestep',
      'sizeup',
      'skitch',
      'steam',
      'trailer',
      'transmission',
      'vagrant',
      'virtualbox',
      'vlc',
    ]:
    install_options => ['--appdir=/Applications'],
    provider => 'brewcask',
    ensure => present
  }

  ##
  # Homebrew Modules
  ##
  package {
    [
      'bash',
      'bash-completion',
      'fortune',
      'gettext',
      'git',
      'gnupg',
      'heroku-toolbelt',
      'imagemagick',
      'ios-sim',
      'lynx',
      'openssl',
      'pngcrush',
      'python3',
      'readline',
      'ssh-copy-id',
      'vim',
      'wget'
    ]:
    ensure => present
  }

  ##
  # Git Defaults
  ##
  git::config::global {
    'user.name':
      value => 'Stephen Yeargin';
    'user.email':
      value => 'stephen.yeargin@gmail.com';
    'github.user':
      value => 'stephenyeargin';
    'color.ui':
      value => 'true';
    'core.quotepath':
      value => 'false';
    'diff.tool':
      value => 'opendiff';
    'merge.tool':
      value => 'opendiff';
    'push.default':
      value => 'simple';
    'alias.amend':
      value => 'commit --amend -C HEAD';
  }

  ##
  # OSX Defaults
  ##
  boxen::osx_defaults {
    "Set aqua color variant to graphite":
      ensure => present,
      key    => 'AppleAquaColorVariant',
      domain => 'NSGlobalDomain',
      user   => $::boxen_user,
      type   => 'int',
      value  => 6;
    "disables Dashboard":
      user   => $::boxen_user,
      domain => 'com.apple.dashboard',
      key    => 'mcx-disabled',
      value  => true;
  }
  ~> exec { 'killall Finder':
    refreshonly => true
  }
  class { 'osx::global::natural_mouse_scrolling':
    enabled => false
  }
  include osx::global::enable_keyboard_control_access
  include osx::no_network_dsstores
  include osx::dock::dim_hidden_apps
  class { 'osx::dock::icon_size':
    size => 72
  }
  osx::recovery_message { 'Call or text (615) 364-6380 if recovered.': }
}