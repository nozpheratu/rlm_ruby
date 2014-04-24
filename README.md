# RlmRuby

A simple unofficial ruby wrapper for [Reprise License Manager](http://www.reprisesoftware.com/index.php]) (RLM).

## Installation

Add this line to your application's Gemfile:

    gem 'rlm_ruby'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rlm_ruby

## Usage

Generate a new activation key:
```ruby
RlmRuby::License.create(contact: {name: "Stan Still", email: "stans@example.com", phone: "012-345-6789"}, products: { "1" => 30, "2" => 100, "3" => 1 })
```

## Contributing

1. Fork it ( http://github.com/<my-github-username>/rlm_ruby/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
