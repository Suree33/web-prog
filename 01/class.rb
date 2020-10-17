#! /usr/bin/env ruby
# encoding: utf-8

class Person
    def initialize(name, addr, tel)
        @name = name
        @addr = addr
        @tel = tel
    end
    def get_name
        return @name
    end
end

suzuki = Person.new("鈴木太郎", "大阪市", "06-5555-5555")
satou = Person.new("佐藤花子", "西宮市", "0798-55-5555")

puts suzuki.get_name
puts satou.get_name