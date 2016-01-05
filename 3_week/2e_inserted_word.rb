require 'fileutils'

puts 'Filename?'
filename = gets.chomp

unless File.file?(filename)
  puts "file '#{filename}' does not exist"
  exit
end

word_count = 0

File.open(filename, 'r') do |file|
  File.open("#{filename}_new", 'w') do |new_file|
    file.readlines.each do |line|
      words = line.split(' ')
      if words.include?('word')
        word_count += words.count {|word| word == 'word'}
        words.map!{|word| word == 'word' ? 'inserted word' : word }
      end
      new_file.puts words.join(' ')
    end
  end
end
File.rename "#{filename}_new", filename # use core-ruby (File.rename), not direct command or stdlib (FileUtils.mv)

case word_count
when 0 then puts "no 'word' to be replaced in file '#{filename}'"
else
  puts "'word' replaced to 'inserted word' in file '#{filename}' (#{word_count} count)"
end

# ruby 2e_inserted_word.rb
# 'texts' as filename
