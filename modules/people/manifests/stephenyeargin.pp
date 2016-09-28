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
      'a-better-finder-rename',
      'alfred',
      'angry-ip-scanner',
      'appzapper',
      'atom',
      'boxer',
      'caffeine',
      'dash',
      'dropbox',
      'fabric',
      'flux',
      'github',
      'geekbench',
      'imagealpha',
      'imageoptim',
      'joinme',
      'keybase',
      'lastfm',
      'licecap',
      'linein',
      'minecraft',
      'macid',
      'openemu',
      'pgadmin3',
      'sequel-pro',
      'sidestep',
      'sizeup',
      'skype',
      'steam',
      'trailer',
      'transmission',
      'vlc',
      'yubikey-neo-manager',
      'zoomus'
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
      'enchant',
      'fortune',
      'gettext',
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
      'wget'
    ]:
    ensure => present
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
  osx::recovery_message { 'Call or text (615) 829-6584 if recovered.': }
}
