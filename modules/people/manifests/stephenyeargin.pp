##
# Sublime Text
##
include sublime_text_2

# sublime_text_2::package { 'CoffeeScript':
#   source => 'sergeche/emmet-sublime'
# }

##
# Homebrew Modules
##

include homebrew

# package { 'autoconf':
#   ensure => present
# }

# package { 'automake':
#   ensure => present
# }

package { 'bash':
  ensure => present
}

package { 'bash-completion':
  ensure => present
}

package { 'fortune':
  ensure => present
}

# package { 'freetype':
#   ensure => present
# }

# package { 'gdbm':
#   ensure => present
# }

package { 'gettext':
  ensure => present
}

# package { 'gifsicle':
#   ensure => present
# }

package { 'git':
  ensure => present
}

package { 'gnupg':
  ensure => present
}

# package { 'help2man':
#   ensure => present
# }

package { 'heroku-toolbelt':
  ensure => present
}

package { 'hub':
  ensure => present
}

# package { 'icu4c':
#   ensure => present
# }

package { 'imagemagick':
  ensure => present
}

package { 'ios-sim':
  ensure => present
}

# package { 'jpeg':
#   ensure => present
# }

# package { 'json-c':
#   ensure => present
# }

# package { 'keybase':
#   ensure => present
# }

# package { 'libiconv':
#   ensure => present
# }

# package { 'libpng':
#   ensure => present
# }

# package { 'libtool':
#   ensure => present
# }

# package { 'libxml2':
#   ensure => present
# }

# package { 'libxslt':
#   ensure => present
# }

# package { 'libyubikey':
#   ensure => present
# }

package { 'lynx':
  ensure => present
}

package { 'mysql':
  ensure => present
}

package { 'node':
  ensure => present
}

package { 'openssl':
  ensure => present
}

# package { 'ossp-uuid':
#   ensure => present
# }

# package { 'pam_yubico':
#   ensure => present
# }

# package { 'pkg-config':
#   ensure => present
# }

package { 'pngcrush':
  ensure => present
}

# package { 'pngnq':
#   ensure => present
# }

package { 'postgresql':
  ensure => present
}

package { 'python3':
  ensure => present
}

package { 'rbenv':
  ensure => present
}

package { 'readline':
  ensure => present
}

package { 'sqlite':
  ensure => present
}

package { 'ssh-copy-id':
  ensure => present
}

# package { 'unixodbc':
#   ensure => present
# }

package { 'wget':
  ensure => present
}

# package { 'xz':
#   ensure => present
# }

# package { 'ykclient':
#   ensure => present
# }

# package { 'ykpers':
#   ensure => present
# }

# package { 'zlib':
#   ensure => present
# }
