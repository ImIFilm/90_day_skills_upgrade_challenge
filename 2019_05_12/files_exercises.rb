# file = File.open("lorem.txt")
# file_data = file.readlines.map(&:chomp)
# puts "FROM MY FILE"
# puts file_data

# File.open("lorem.txt", "w") { |f| f.write "#{Time.now} - User logged in\n" }
# File.write("lorem.txt", "#{Time.now} - User logged in\n")
# File.open("lorem.txt", "a") { |f| f.write "#{Time.now} - User logged in\n" }
File.write("lorem.txt", "#{Time.now} - User logged in\n", mode: "a")

file_data = File.read("lorem.txt").split("\n")
file_data.each {|line| puts line}

#File.rename("lorem.txt", "loremipsum.txt")
puts "SIZE: " + File.size("lorem.txt").to_s
puts "EXISTS?: " + File.exists?("lorem.txt").to_s
puts "EXTENSION NAME: " + File.extname("lorem.txt")
puts "BASE NAME: " + File.basename("tmp/lor.txt")
puts "BASE NAME WITHOUT EXTENSION: " + File.basename("tmp/lor.txt", ".txt")
puts "BIRTH DATE: " + File.birthtime("lorem.txt").to_s
puts "DIRECTORY NAME: " + File.dirname("/tmp/lor.txt")
puts "DIRECTORY?: " + File.directory?("tmp").to_s

