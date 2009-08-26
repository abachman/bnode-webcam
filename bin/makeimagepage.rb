#!/usr/bin/env ruby

`touch /home/bnode/baltimorenode.org/public/webcam.html`
out = []
File.open("/home/bnode/baltimorenode.org/public/webcam.html", 'w') do |f|
  f.write("<html><head></head><body>")
  f.write("<img src='images/webcam.jpg'><br><br>")
  f.write("<ul><li>")
  Dir.entries("/home/bnode/webcam-backup").sort.reverse.each do |e|
    next if ['.', '..'].include?
    out << "<a href='images/webcam-backup/#{e}'>#{e}</a>"
  end
  f.write out.join('</li><li>')
  f.write("</li></ul></body></html>")
end
puts "Linked to: \n* #{out.join("\n")}"

