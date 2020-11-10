require 'pry'

def hello(array)
  i = 0
  collection = []
  while i < array.length
    collection.push(yield(array[i]))
    i += 1
  end
  collection
end


print hello(["Tim", "Tom", "Jim"]) { |name| "Hi, #{name}" }
