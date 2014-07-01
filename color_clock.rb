require 'green_shoes'

Shoes.app title: 'Hex Color Clock', height: 50, width: 250 do
  @clock = title 'Color Clock', align: 'center'
  animate do
    time        = Time.new
    format      = time.strftime('%H%M%S')
    r, g, b     = format.chars.each_slice(2).map{ |hms| hms.join.to_i(16) }
    @clock.text = bg(fg(format, rgb(255, 255, 255)), rgb(r, g, b))
  end
end