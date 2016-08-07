# ruby answers/week_one/file_count.rb answers/week_one/ruby_hostory.txt

path = ARGV[0]
line_count, word_count, ch_count = 0, 0, 0

File.readlines(path).each do |line|
  line_count += 1
  words = line.split
  word_count += words.count
end

File.read(path).each_char do |char|
  unless char =~ /(\s|\n)/
    ch_count += 1
  end
end

puts "#{line_count} line; #{word_count} words; #{ch_count} character count"
