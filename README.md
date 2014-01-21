# DirectoryBuilder

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'DirectoryBuilder'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install DirectoryBuilder

## Usage

```ruby
cd("/tmp") {
  mkdir("builder") {
    touch "test1"
    touch("test2") {
      "hello world"
    }

    mkdir("subdir") {
      touch "test1"
      touch "test2"
    }
  }
}
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
