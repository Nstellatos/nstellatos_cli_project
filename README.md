# NstellatosCliProject!

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/nstellatos_cli_project`. To experiment with that code, run `bin/nstellatos_cli_project.rb` for an interactive prompt.

This program retrieves USA States current COVID-19 totals from from the COVID Tracking Project 
API. It represents all US States full name and their abbreviation. The user is able to type in a State abbreviation followed by ENTER to see the States name, abbreviation, positive COVID case total, recovered COVID case total and the total COVID deaths. The user will then see that they have the option to check out another states current values or exit the program. If the user decides to exit the program they will see a goodbye message. 
If the user does not know the state abbreviation, they are able to type in SEARCH followed by ENTER and they will be prompted to enter in the full state name. This will output the same information it would if they just typed in the abbreviation. If the user enters in an invalid response, they will get an error message asking them to enter in a valid response.  

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'nstellatos_cli_project'
```

And then execute:

    $ bundle install

Or install it yourself as:

   1. Clone or download from github by using the download ZIP or SSH: git@github.com:Nstellatos/nstellatos_cli_project.git
2. From the nstellatos_cli_project program directory (directory including Gemfile) type 'bundle install' into your terminal or run setup from bin directory
3. From the nstellatos_cli_project program directory type ruby bin/nstellatos_cli_project.rb to run the program

## Usage

Follow the CLI prompt to enter in a states abbreviation or type search to search a states values by entering the full state name. 

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/<github username>/nstellatos_cli_project. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/<github username>/nstellatos_cli_project/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the NstellatosCliProject project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/<github username>/nstellatos_cli_project/blob/master/CODE_OF_CONDUCT.md).
