class teams::developers {

  ##
  # Brewcask
  ##
  include brewcask
  package {
    [
      'backblaze',
      'firefox',
      'google-chrome',
      'tunnelblick',
      'vagrant',
      'virtualbox'
    ]:
    install_options => ['--appdir=/Applications'],
    provider => 'brewcask',
    ensure => present
  }

  ##
  # Ruby
  ##
  ruby_gem { 'bundler for all rubies':
    gem          => 'bundler',
    version      => '~> 1.0',
    ruby_version => '*',
  }

  ##
  # Node
  ##
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
      'bash',
      'bash-completion',
      'git',
      'mysql',
      'postgresql',
      'sqlite',
      'vim'
    ]:
    ensure => present
  }
}
