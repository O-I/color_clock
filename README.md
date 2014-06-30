# Color Clock

Playing around with the [Shoes](http://shoesrb.com) graphics toolkit and the [green_shoes](https://github.com/ashbb/green_shoes) gem to create a minimalist hex color clock.

### Inspiration

* [How to create digital clock in Ruby Shoes](http://masteruby.github.io/shoes/2014/06/29/how-to-create-clock-in-ruby-shoes.html)
* [Minimalist Hex Clock](http://codegolf.stackexchange.com/questions/32134/minimalist-hex-clock)
* [Hex clock](http://www.jacopocolo.com/hexclock/)
* [Hilbert Color Clock](http://justinpombrio.net/show/color-clock.html)

### Plug and play

1. Install the green_shoes Ruby gem:

`gem install 'green_shoes'`

2. Clone this repo, switch to the `color_clock` directory, and run

`ruby color_clock.rb`

It's that simple.

### To do

1. Figure out how to absolutely center the text both horizontally and vertically.
2. Have the entire app window's color background change, not just the background of the text.
3. Hours only range in 0..23 while both minutes and seconds range in 0..59. This results in a pretty lackluster color palette. Create a simple scaling function that produces a richer spectrum of hues.
4. If each third of a second of the day is assigned a color, we can define **Hilbert time** to be a set of colors that satisy the following two properties:

* No color is repeated
* Adjacent colors are indistinguishable

Using a Hilbert 3D [space-filling curve](http://en.wikipedia.org/wiki/Space-filling_curve), implement a clock that displays Hilbert time.