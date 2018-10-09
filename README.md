# Tabletop Tracker

This is a Rails app for tracking tabletop gaming data.

## Installation

Clone this repository and then execute:

    $ bundle

Uses Ruby v2.4.2

Then run:
	
	$ rake db:migrate
	
Then run:

	$ thin start --ssl 

Then open page in browser according to web address displayed in terminal (ex. https://localhost:3000)

## Usage

After you sign up or sign in through Facebook, you can add and view all of your games and matches. 

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/aellonk/tabletoptracker.

## License

This app is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
