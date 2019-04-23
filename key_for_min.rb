# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value
require "pry"

def key_for_min_value(name_hash)
  lowest_value = nil
  lowest_key = nil 
  name_hash.each do |key, value|
    if lowest_value == nil || value < lowest_value 
      lowest_value = value #each time it goes through, it sets the value equal to lowest value until the lowest value is as low as it gets
      lowest_key = key
    end
  end
  lowest_key
end