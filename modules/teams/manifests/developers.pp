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
