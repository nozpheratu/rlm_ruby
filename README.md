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

Use `RlmRuby::License.generate_keys` to genenerate activation keys for one or more products. In the example below we generate three keys for the contact "Stan Still" for three seperate products:
```ruby
RlmRuby::License.generate_keys(contact: { name: "Stan Still",
                                         email: "stans@example.com",
                                         phone: "012-345-6789" },
                              products: [{ id: 1, count: 100 },
                                         { id: 2, count: 30 },
                                         { id: 3, count: 1 }])
#=> [<#= RlmRuby::ActivationKey #>, <#= RlmRuby::ActivationKey #>, <#= RlmRuby::ActivationKey #>]
```

Working with ActivationKeys:
```ruby
my_key = RlmRuby::License.generate_keys(contact: { name: "Stan Still",
                                                  email: "stans@example.com",
                                                  phone: "012-345-6789" },
                                       products: [{ id: 1, count: 1 }]).first
puts my_key # => {"activation_key":"123-1334-234232-123","count":100,"product_id":"1"}
```



## Contributing

1. Fork it ( http://github.com/<my-github-username>/rlm_ruby/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
