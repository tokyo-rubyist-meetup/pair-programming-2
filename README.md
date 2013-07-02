# Japanese Postal Code Lookup

For this challenge, we'll write a library that takes a postal code as input, and returns the relevant address components.

For instance, given the postal code 104-0033, it should return `["東京都", "中央区", "新川"]`.

## The Data

The Japan Post provides [a csv file](http://www.post.japanpost.jp/zipcode/dl/kogaki/lzh/ken_all.lzh)  containing all postal codes in Japan and their corresponding address ranges.

Unfortunately, the file is archived in the obscure [LHA format](http://en.wikipedia.org/wiki/LHA_(file_format)) and in [Shift_JIS](http://en.wikipedia.org/wiki/Shift_JIS).

To save you the hassle of dealing with these encodings, I've included a utf-8 csv in the data directory.

