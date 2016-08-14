### Ruby

#### 方法
- 定义一个方法 add 来计算 a + b，然后返回结果
- 如何定义参数不确定的方法，举例说明

#### 类和模块
- 给下面的两段代码加上注释（重点解释以下关键字）
  - include
  - attr_accessor
  - initialize
  - self
  - new
- 结合下面的代码解释模块（module)的两种用法：命名空间，Mix-in

``` ruby
module DogsRelated
  NBR_OF_DOGS_NEEDED_TO_START_A_DOG_PARTY = 5
  class Dog
    def bark
      puts "Woof..."
    end

    def eat
      puts "..."
    end

    def wag_tail
      puts "I'm doing this because I'm happy"
    end

    def give_the_paw
      puts "Why??"
    end
  end  
end

x = 6
charlie = DogsRelated::Dog.new
charlie.wag_tail if x >= DogsRelated::NBR_OF_DOGS_NEEDED_TO_START_A_DOG_PARTY
```

``` ruby
class Dog
  include Comparable
  attr_accessor :iq
  def initialize(iq)
    self.iq = iq
  end

  def <=>(other)
    self.iq <=> other.iq
  end
end

spike = Dog.new(60)
rex = Dog.new(40)
retard = Dog.new(30)
dumbass = Dog.new(20)
dumber = Dog.new(15)
bozo = Dog.new(10)

puts "Make fun of dumbass" if spike > dumbass
puts "Make fun of dumbass even more" if dumbass <= rex
puts "Realize in shame that dumbass is not a dog but an African violet" if dumbass < bozo
```

- 什么是实例方法，什么是类方法
- 什么是继承
- 什么是方法的访问级别

#### 异常处理
- 解释 begin, rescue 和 ensure 关键字

#### 代码块
-
