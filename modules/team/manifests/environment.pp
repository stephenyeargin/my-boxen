class team::environment {

  ##
  # Brewcask
  ##
  include brewcask
  package {
    [
      'tunnelblick',
      'xquartz'
    ]:
    install_options => ['--appdir=/Applications'],
    provider => 'brewcask'
  }

  ##
  # Ruby
  ##
  ruby::version { '1.8.7': }
  ruby::version { '1.9.3': }
  ruby::version { '2.0.0': }
  ruby::version { '2.1.2': }
  class { 'ruby::global':
    version => '2.1.2'
  }
  ruby_gem { 'bundler for all rubies':
    gem          => 'bundler',
    version      => '~> 1.0',
    ruby_version => '*',
  }


  ##
  # Node
  ##
  include nodejs::v0_10
  class { 'nodejs::global':
    version => 'v0.10'
  }
  nodejs::module {
    [
      'bower',
      'coffee-script',
      'grunt-cli',
      'yo'
    ]:
    node_version => 'v0.10'
  }


  ##
  # Homebrew
  ##
  package {
    [
      'brew-cask',
      'forego',
      'heroku-toolbelt',
      'imagemagick',
      'mysql',
      'postgresql',
      'ssh-copy-id',
      'sqlite'
    ]:
  }

}
