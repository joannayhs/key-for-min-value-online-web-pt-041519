# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value
require "pry"

def key_for_min_value(name_hash)
  lowest_value = nil
  lowest_key = nil 
  name_hash.each do |key, value|
    if lowest_value == nil || value < lowest_value #compares each value to the one before
      lowest_value = value #sets the previous value as the value to compare each iteration to 
      lowest_key = key
    end
  end
  lowest_key
end