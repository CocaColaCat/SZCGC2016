### Ruby & Git Quiz

#### 对象，类和变量
- 变量哪几种，分别做简单介绍
- 什么是类的存取器（accessor）
- 什么是特殊变量 self

#### 控制语句
- times, for, each 和 while 分别在哪些情况下使用

#### 字符串
- 有字符串 "Ruby is an object oriented programming language"，请创建一个数组，数组元素为这个字符串的各个单词
- 将以上的数组按照英文字母顺序进行排序
- 把以上的字符串的全部单词的首字母转换为大写，转换后的结果为 "Ruby Is A n Object Oriented Programming Language"。


#### 数组和和散列
- 完善以下计数器的代码

``` ruby
def word_counter(str)
  str = str.gsub(/(\.|\(|\)|,)/, '')
  count = Hash.new(0)

  # TODO: 补全代码，统计字符串中的 word

  sort(count)
end

def sort(count)
  count.sort{ |a, b|
    a[1] <=> b[1]
  }.each do |key, value|
    puts "#{key}: #{value}"
  end
end

str = <<-STR
I was talking with my colleague about the possibility of an object-oriented scripting
language. I knew Perl (Perl4, not Perl5), but I didn't like it really, because it
had the smell of a toy language (it still has). The object-oriented language seemed
very promising. I knew Python then. But I didn't like it, because I didn't think it
was a true object-oriented language — OO features appeared to be add-on to the language.
 As a language maniac and OO fan for 15 years, I really wanted a genuine object-oriented,
 easy-to-use scripting language. I looked for but couldn't find one. So I decided to make it.
STR

word_counter str

```

#### 文件和 IO
- 创建脚本，读取文本文件中的内容，按以下条件进行处理。这里将空白和换行以外的连续字符串称为“单词”：统计文本的行数，统计文本的单词数，统计文本的字符数

``` ruby
# file_count.rb

path = ARGV[0]
line_count, word_count, ch_count = 0, 0, 0

# TODO: 统计行数和单词数
File.____(path).each do |line|
  line_count += 1
  words = line.split
  word_count += words.count
end

# TODO: 统计字符数
File.____(path)._____ do |char|
  unless char =~ /(\s|\n)/
    ch_count += 1
  end
end

puts "#{line_count} line; #{word_count} words; #{ch_count} character count"
```

- 理解以下这段代码，并实现: 1. 打印文件的路径；2. 仅打印扩展名是 .md 的文件名字

``` ruby
def traverse(path)
  if File.directory?(path)
    dir = Dir.open(path)
    while name = dir.read
      next if name == "."
      next if name == ".."
      traverse(path + "/" + name)
    end
    dir.close
  else
    # TODO: 补充实现代码
  end
end
　
traverse(ARGV[0])
```

- 参考 answers/week_one/transverse_2.rb 文件，试试重写只输出 md 文件的逻辑
