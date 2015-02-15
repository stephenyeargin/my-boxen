class projects::seatshare {
  include phantomjs

  boxen::project { 'seatshare':
    dir        => '/Users/stephen/Sites/seatshare-rails',
    ruby       => '2.1.0',
    mysql      => false,
    postgresql => true,
    redis      => true,
    nginx      => true,
    source     => 'seatshare/seatshare-rails'
  }
}