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
RlmRuby::ActivationKey.new(akey: "0280-5283-5409-6035", contact: "Stan Still", company: "Acme Corp")
```



## Contributing

1. Fork it ( http://github.com/<my-github-username>/rlm_ruby/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
