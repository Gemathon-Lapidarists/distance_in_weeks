# DistanceInWeeks

DistanceInWeeks is a simple gem to calculate the distance of a given date from today's date in weeks and returns the distance in plain english language.

## Installation

Add this line to your application's Gemfile:

    gem 'distance_in_weeks'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install distance_in_weeks

## Usage

Examples :

DistanceInWeeks.weeks_in_words((Date.today - 2).strftime('%d-%m-%Y')) 

=> less than a week ago

DistanceInWeeks.weeks_in_words((Date.today - 15).strftime('%d-%m-%Y'))

=> about 2 weeks ago

DistanceInWeeks.weeks_in_words((Date.today + 3).strftime('%d-%m-%Y'))

=> about a week from now

DistanceInWeeks.weeks_in_words((Date.today + 25).strftime('%d-%m-%Y'))

=> about 4 weeks from now

## Todos

1. Restrict the usage for only 1 week to 4 weeks rest all to be handled in either no. of days or months.
2. A way to implement Internationalization.

## Contributing

1. Fork it ( http://github.com/<my-github-username>/distance_in_weeks/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
