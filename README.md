# Jocelyn

Provides a 'weighted shuffle' function to slightly displace items in a list
based on a 'randomness' parameter.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'jocelyn'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jocelyn

## Usage

```
(1..10).jostle        # => [1, 2, 4, 3, 5, 6, 7, 8, 9]
(1...10).jostle(0.5)  # => [3, 5, 6, 1, 2, 7, 8, 4, 9]
```

The parameter you pass should be a fractional number in the range [0, 1],
where 0 means no shuffling, and 1 returns a completely shuffled list.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run
`rake spec` to run the tests. You can also run `bin/console` for an interactive
prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To
release a new version, update the version number in `version.rb`, and then run
`bundle exec rake release`, which will create a git tag for the version, push
git commits and tags, and push the `.gem` file to
[rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at
https://github.com/fauxparse/jocelyn. This project is intended to be a safe,
welcoming space for collaboration, and contributors are expected to adhere to
the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the
[MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in Jocelyn's codebases, issue trackers, chat
rooms and mailing lists is expected to follow the
[code of conduct](https://github.com/fauxparse/jocelyn/blob/master/CODE_OF_CONDUCT.md).
