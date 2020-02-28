
# Practice using README.md 

## If we use '##' its header 2

#### This repo is used locally and all files are created with gem bundle and then pushed by adding remote and then git push ... 

##### _Also is created a file and then added to .gitignore so it wont be in repo._

## Installation 

Add this line to your application's Gemfile:

```ruby
gem 'car'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install car

## Usage

**_Set car model year etc and you can spray you car_**
***_Using speed_up method change current speed, you can brake and shut_off_***

```ruby
MyCar.new(model,year,color)
MyCar.spray_car(Give your color)
```

*_This one is useless right now so... Skip it_*
## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Krenar123/car.

>>>>>>> README file and .gemspec are modified
