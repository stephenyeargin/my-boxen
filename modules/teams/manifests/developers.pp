class teams::developers {

  ##
  # Brewcask
  ##
  include brewcask
  package {
    [
      'backblaze',
      'tunnelblick',
      'vagrant',
      'virtualbox'
    ]:
    install_options => ['--appdir=/Applications'],
    provider => 'brewcask',
    ensure => present
  }

  ##
  # Node
  ##
  npm_module {
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
