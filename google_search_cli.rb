puts "Enter your search query: "
query = gets.chomp

url = "https://www.google.com/search?q=#{URI.encode(query)}"

if RUBY_PLATFORM =~ /linux/
  command = "xdg-open \"#{url}\""
elsif RUBY_PLATFORM =~ /win32|mingw32/
  command = "start \"#{url}\""
elsif RUBY_PLATFORM =~ /darwin/
  command = "open \"#{url}\""
else
  raise "Unsupported OS"
end

system(command)
puts "Searching for: #{query}"
