puts 'Filename?'
filename = gets.chomp

unless File.file?(filename)
  puts "file '#{filename}' does not exist"
  exit
end

File.open(filename, 'r') do |file|
  File.open("#{filename}_new", 'w') do |new_file|
    file.readlines.each do |line|
      words = line.split(' ')
      if words.include?('word')
        words.map!{|word| word == 'word' ? 'inserted word' : word }
      end
      new_file.puts words.join(' ')
    end
  end
  puts "'word' replaced to 'inserted word' in file '#{filename}'"
end
`mv #{filename}_new #{filename}`


# ruby 2e_inserted_word.rb
# 'texts' as filename
