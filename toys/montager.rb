year = 2009
month = 8
day = 26
hour = 0
while hour < 24
  time = sprintf("%i%02i%02i%02i", year, month, day, hour)
  `montage images/webcam-#{time}*.* -thumbnail 100x100 -mode Concatenate -tile 8x8 images/webcam-montage-#{time}.jpg`
  puts "montaged #{time}"
  hour += 1
end
