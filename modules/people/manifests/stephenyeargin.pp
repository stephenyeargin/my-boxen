class people::stephenyeargin {

  $HOME = "/Users/${::boxen_user}"

  ##
  # Developer
  include teams::developers
  
  ##
  # All Projects
  include projects::all

  ##
  # Firefox
  include firefox

  ##
  # Chrome
  include chrome

  ##
  # Brewcask
  package {
    [
      'alfred',
      'appzapper',
      'atom',
      'bittorrent-sync',
      'boxer',
      'caffeine',
      'cloud',
      'dash',
      'dropbox',
      'evernote',
      'flux',
      'github',
      'imagealpha',
      'imageoptim',
      'linkinus',
      'minecraft',
      'mou',
      'openemu',
      'screenhero',
      'sidestep',
      'sizeup',
      'skitch',
      'steam',
      'trailer',
      'transmission',
      'vlc',
    ]:
    install_options => ['--appdir=/Applications'],
    provider => 'brewcask',
    ensure => present
  }

  ##
  # Homebrew Modules
  package {
    [
      'cloc',
      'fortune',
      'gettext',
      'gnupg',
      'heroku-toolbelt',
      'imagemagick',
      'ios-sim',
      'lynx',
      'keybase',
      'openssl',
      'pngcrush',
      'python3',
      'readline',
      'ssh-copy-id',
      'wget'
    ]:
    ensure => present
  }

  ##
  # Whiskey Disk
  ##
  ruby_gem { 'whiskey_disk for all rubies':
    gem          => 'whiskey_disk',
    version      => '~> 0.6',
    ruby_version => '*',
  }

  ##
  # Git Defaults
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
      value => 'current';
    'alias.amend':
      value => 'commit --amend -C HEAD';
  }

  ##
  # OSX Defaults
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