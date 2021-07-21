# Find missing numbers in an array
def find_the_missing_numbers(arr)
  ((1..10).to_a - arr)
end

# Swap two digits and see if it is larger than the one swapped
def compare_number_after_swap(num)
  num >= num.to_s.reverse.to_i
end

# Return index of the first vowel
def get_index_of_the_first_vowel(str)
  return str.index(/[aAeEiIoOuUyY]/)
end

# Return sum of two largest numbers
def sum_of_two_largest_numbers(arr)
  nums = arr.select { |n| n > 0 }.reverse
  nums[0] + nums[1]
end

# Return file extention from files
def get_file_extension(arr)
  arr.map { |f| f.split('.').last }
end

# Validation Zip code format
def validation_of_zip_code(code)
  code.length == 5 && code.scan(/\D/).empty?
end

# Keeps only strings with repeating identical characters
def filter_repeated_character_strings(arr)
  arr.select { |i| i.chars.uniq.length == 1 }
end