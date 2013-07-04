# Japanese Postal Code Lookup

For this challenge, we'll write a library that takes a postal code as input, and returns the relevant address components.

For instance, given the postal code 104-0033, it should return `["東京都", "中央区", "新川"]`.

## The Data

The Japan Post provides [a csv file](http://www.post.japanpost.jp/zipcode/dl/kogaki/lzh/ken_all.lzh)  containing all postal codes in Japan and their corresponding address ranges.

Unfortunately, the file is archived in the obscure [LHA format](http://en.wikipedia.org/wiki/LHA_(file_format)) and in [Shift_JIS](http://en.wikipedia.org/wiki/Shift_JIS).

To save you the hassle of dealing with these encodings, I've included a utf-8 csv in the data directory.

## Sample Code

The naive solution to the problem in lib/postal_code.rb. It should run in Ruby 1.9+, the CSV library for 1.8 has a slightly different API.

There is also a spec in specs/postal_code_spec.rb, which you can run with `rspec spec/postal_code_spec.rb` after doing `bundle install`.

The first thing you'll notice is the spec is *slow*. If you develop Rails, you might be used to your tests taking this long, but for a Ruby library, 10 seconds to run one test in unacceptable. What's going on?

It turns out our naive solution is too naive, as the CSV file we are reading and processing is 18MB!

## The Challenge

How can we improve the performance of this to an acceptable level? If we want to use this as a library, we want to 

  * minimize startup time (requiring the library shouldn't signifigantly increase the loading time of the application)
  * minimize postal code lookup time
  * minimize memory usage
  * minimize dependencies (it should be possible to use the library without any special setup)

Some of these requirements are in opposition to each other. Depending on the application that uses the library, one may be important than another. Focus on one or more of these goals to improve the application.
