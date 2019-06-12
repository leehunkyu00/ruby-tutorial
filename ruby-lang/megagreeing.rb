class MegaGreeter
    attr_accessor :names

    # Create object
    def initialize(names = "World")
        @names = names
    end

    def say_hi
        if @names.nil?
            puts "..."
        elsif @names.respond_to?("each")
            @names.each do |name|
                puts "Hello #{name}!"
            end
        else
            puts "Hello #{@names}"
        end
    end

    def say_bye
        if @names.nil?
            puts "..."
        elsif @names.respond_to?("join")
            puts "Goobbye #{@names.join(", ")}. See you soon!"
        else
            puts "Goobbye #{@names}. See you soon!"
        end
    end
end

if __FILE__ == $0
    mg = MegaGreeter.new
    mg.say_hi
    mg.say_bye

    mg.names = "hklee"
    mg.say_hi
    mg.say_bye

    mg.names = ["hklee", "hong", "lee", "turtle"]
    mg.say_hi
    mg.say_bye

    mg.names = nil
    mg.say_hi
    mg.say_bye
end