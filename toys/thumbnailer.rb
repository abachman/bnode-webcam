Dir.entries("images/").select {|img| /webcam-2009/ =~ img}.each do |img|
  # if no thumb, create
  unless File.exist? "images/thumbs/#{img}"
    puts "thumbnailing #{img}"
    `convert images/#{img} -geometry 50x50 images/thumbs/#{img}`
  end
end
