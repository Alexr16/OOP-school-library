# test.rb
require 'pry'

def instered_bug
  a = 2
  b = 5
  c = a * 3
  binding.pry
  result = c + b
end

instered_bug