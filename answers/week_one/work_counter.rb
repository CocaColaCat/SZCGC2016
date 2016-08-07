def word_counter(str)
  str = str.gsub(/(\.|\(|\)|,)/, '')
  count = Hash.new(0)

  words = str.split
  words.each do |word|
    count[word] += 1
  end

  sort(count)
end

def sort(count)
  count.sort{ |a, b|
    a[1] <=> b[1]
  }.each do |key, value|
    puts "#{key}: #{value}"
  end
end

str = <<-EOB
I was talking with my colleague about the possibility of an object-oriented scripting
language. I knew Perl (Perl4, not Perl5), but I didn't like it really, because it
had the smell of a toy language (it still has). The object-oriented language seemed
very promising. I knew Python then. But I didn't like it, because I didn't think it
was a true object-oriented language — OO features appeared to be add-on to the language.
 As a language maniac and OO fan for 15 years, I really wanted a genuine object-oriented,
 easy-to-use scripting language. I looked for but couldn't find one. So I decided to make it.
EOB

word_counter str
