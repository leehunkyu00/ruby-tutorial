class Greeter
    def initialize(name = "World")
        @name = name
    end

    def say_hi
        puts "Hi #{@name}"
    end

    def say_bye
        puts "Bye #{@name}!"
    end
end



g1 = Greeter.new('hklee')
g1.say_hi
g1.say_bye

#puts(Greeter.instance_methods)
#puts(Greeter.instance_methods(false))
puts("g1 #{g1.respond_to?("name")}")
puts("g1 #{g1.respond_to?("say_hi")}")
puts("g1 #{g1.respond_to?("say_bye")}")

# amend class definition
class Greeter
    attr_accessor :name
end

g2 = Greeter.new("leehunkyu")
g2.say_hi
g2.name = "hklee2"
g2.say_hi

puts("g2 #{g2.respond_to?("name")}")
puts("g2 #{g2.respond_to?("say_hi")}")
puts("g2 #{g2.respond_to?("say_bye")}")