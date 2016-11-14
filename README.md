# Kitto

[![Code Climate](https://codeclimate.com/github/valikos/kitto/badges/gpa.svg)](https://codeclimate.com/github/valikos/kitto)

Kitto allows you to define attributes on classes. As model layer Kitto gives you write/access methods.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'kitto', github: 'valikos/kitto'
```

And then execute:

    $ bundle

## Usage
Kitto gives to you familiar interface to work with attributes.
Kitto is working with classes. You are definig new class with inclusions of `Kitto::Model` module and define attribues for your future instances.

```ruby
  class Person
    include Kitto::Model

    attribute :name
    attribute :age
  end
```
### Class Attributes
When class already defined you can get a list of attributes with `Person.attributes`

```ruby
  Person.attributes #=> [:name, :age]
```

### Instance Attributes
When instance already defined you can get a list of attributes with values `person.attributes`

```ruby
  person = Person.new
  person.attributes #=> {:name=>nil, :age=>nil}
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/kitto.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
