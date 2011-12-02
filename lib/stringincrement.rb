require "stringincrement/version"

module Stringincrement
  def increment
    remains, last_number = self.match( /(.*?)(\d*)$/ ).captures
    if last_number != ""
      return "#{remains}#{last_number.to_i + 1}"
    else
      remains = remains.split("").reverse
      overbit = 1
      remains.map! do |char|
        ret = char[0] + overbit
        if ret == 123 || ret == 91
          ret -= 26
        else 
          overbit = 0
        end
        ret.chr
      end
      return remains.reverse.join("")
    end
  end
end

class String
  include Stringincrement
end
