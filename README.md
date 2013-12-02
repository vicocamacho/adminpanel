# Adminpanel

This gem is developed to be a CMS for Ruby 1.8.7 and Rails 3.2.12 

## Installation

Add this line to your application's Gemfile:

    gem 'adminpanel'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install adminpanel

## Usage

In you application.rb 

    config.default_locale = :es
no other language is currently supported, but pull requests are welcome.

Then run:

    rails g adminpanel:install
    rake db:migrate
to create the database that the adminpanel it's expecting.

Any doubt feel free to ask me!

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
