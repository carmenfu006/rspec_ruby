require 'date'

# Stage One

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

# Rock Paper Scissors
def rock_paper_scissors(player_1, player_2)
	return "It's a draw!" if player_1 == player_2
	return 'Player 1 wins!' if (player_1 == 'Rock' && player_2 == 'Scissors') || (player_1 == 'Scissors' && player_2 == 'Paper') || (player_1 == 'Paper' && player_2 == 'Rock')
	return 'Player 2 wins!'
end


# Stage Two

# Get the final price after applying discount
def price_after_discount(price, discount)
  price * (100 - discount) * 0.01
end

# Order above 100 to eligible for free shipping
def check_for_eligible_of_free_shipping(order)
  order.values.reduce(:+) > 100 ? true : false
end

# Return the first found longest word
def get_the_longest_word(str)
  str.split.max_by(&:length)
end

# Check if a month in a particular year contains a Sunday 7th
def has_sunday_with_date_7(month, year)
  Date.new(year, month, 7).sunday?
end

# Filter array with strings and integers, return strings only
def filter_out_integers(arr)
  arr.grep(String)
end

# Get the next alphabet of every letter
def the_next_alphabet(word)
  word.chars.map(&:next).join
end

# Count each alphabet 'X', 'Y', 'Z' from a given string
def calculate_alphabet(str)
  ('X'..'Z').map { |n| str.count(n) }
end

# Capitalize each word's first letter
def capitalize_letter_of_each_word(str)
  str.gsub(/(^|\s)./, &:upcase)
end

# Reverse words which have even length
def reverse_even_words(str)
  str.split.map { |word| word.length.even? ? word.reverse : word }.join(' ')
end

# Sorting an array with 'asc', 'dsc', 'none'
def sorting_an_array(arr, order)
  return arr if order == 'none'
	order == 'asc' ? arr.sort : arr.sort.reverse
end