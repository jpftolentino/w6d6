class Person 
    def initialize( name ) 
         @name = name
    end

    def do_with_name 
        yield( @name ) 
    end
end

person = Person.new("Oscar")

#invoking the method passing a block
person.do_with_name do |name|
    puts "Hey, his name is #{name}"
end

#invoke the method passing a different block
person.do_with_name do |name| 
    reversed_name = name.reverse
end

# SUMMARY do_with_name is called and 
# block of code is inserted in place of yield
# @name value is used in |name| value

