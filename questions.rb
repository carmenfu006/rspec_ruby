require 'date'

# Return the next number of the given integer
def next_number(num)
  return num + 1
end

# Minutes into seconds
def minutes_into_seconds(minutes)
  return minutes * 60
end

# Return first element in an array
def get_first_element(arr)
  return arr[0]
end

# Return integer from string
# Return 0 if it is invalid
def string_to_integer(str)
  return str.to_i rescue 0
end

# Return true if number is more than 0
# Return false if number is less than or equal to 0
# Return 'undefined' if it is invalid
def positive_number(num)
  if num.is_a? Integer
    return num > 0 ? true : false
  else
    'undefined'
  end
end

# Reverse a given string
def reverse(str)
  return str.reverse
end

# Return true if sum of two numbers is more than 100, else false
def more_than_100(num1, num2)
  num1 + num2 > 100 ? true : false
end

# Return the unique number in an array
def unique_number(arr)
  arr.find { |x| arr.count(x) == 1 }
end

# Return the length of nested array
def get_length(arr)
  arr.flatten.length
end

# keep only the elements that start with an a
def select_elements_starting_with_c(arr)
  arr.select do |word|
    word.start_with?('c')
  end
end

# Remove instances of nil (but NOT false) from an array
def remove_nils_from_array(arr)
  arr.compact
end

# Remove instances of nil AND false from an array
def remove_nils_and_false_from_array(arr)
  arr.compact.delete_if do |word|
    word == false 
  end
end

# Reverse every word in an array and return it
def reverse_every_element_in_array(arr)
  arr.map do |word|
    word.reverse
  end
end

# Return each possible pairing outcome in an array
def every_possible_pairing_of_word(arr)
  arr.combination(2)
end

# Turn an array of numbers into two arrays of numbers
# First array in the array is all even numbers
# Second array in the array is all odd numbers
def separate_arr_into_even_and_odd_num(arr)
  even = arr.select {|num| num.even?}
  odd = arr.select {|num| num.odd?}
  [even, odd]
end

# Sorting string by last alphabet/character
def sort_by_last_char(str)
  str.split.sort_by { |x| x[-1] }.join(' ')
end

# Serving drinks to people above age 18 and older, and when not on break time
# Return true if age is equal and above 18, when not on break time
# Return false if age is equal and above 18, when on break time
# Return false if age is below 18
def serve_drink(age, onBreak)
  return true if age >= 18 && !onBreak
  return false
end

# Sum an array by the first (n) numbers
def sum_numbers(arr, n)
  arr[0...n].reduce(0, :+)
end

# String to binary, range from a-m will be 0, range from n-z will be 1
def string_to_binary(str)
  str.gsub(/[a-m]/i, '0').gsub(/[n-z]/i, '1')
end

# Find missing numbers range from 1 to 10 in an array
def find_the_missing_numbers(arr)
  ((1..10).to_a - arr)
end

# Swap two digits and see if it is larger than the one swapped
# Return true if it is larger than the one swapped
# Return false if it is smaller than the one swapped
def compare_number_after_swap(num)
  num >= num.to_s.reverse.to_i
end

# Return index of the first vowel
def index_of_the_first_vowel(str)
  return str.index(/[aAeEiIoOuUyY]/)
end

# Return sum of two largest numbers in array
def sum_of_two_largest_numbers(arr)
  nums = arr.sort.select { |n| n > 0 }.reverse
  nums[0] + nums[1]
end

# Return sum of two smallest numbers in array
def sum_of_two_smallest_numbers(arr)
  nums = arr.sort.select { |n| n > 0 }
  nums[0] + nums[1]
end

# Return sum of positive number
def sum_of_positive(arr)
  arr.empty? ? [] : arr.select(&:positive?).inject(:+)
end

# Return sum of negative number
def sum_of_negative(arr)
  arr.empty? ? [] : arr.select(&:negative?).inject(:+)
end

# Sum positive number, count negative number
def sum_positive_count_negative(arr)
  arr.empty? ? [] : [arr.select(&:positive?).inject(:+), arr.count(&:negative?)]
end

# Count positive number, sum negative number
def count_positive_sum_negative(arr)
  arr.empty? ? [] : [arr.count(&:positive?), arr.select(&:negative?).inject(:+)]
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

# Return the first found shortest word
def get_the_shortest_word(str)
  str.split.min_by(&:length)
end

# Check if a month in a particular year contains a Sunday 7th
def has_sunday_with_date_7(month, year)
  Date.new(year, month, 7).sunday?
end

# Filter array with strings and integers, return strings only
def filter_out_integers(arr)
  arr.grep(String)
end

# Filter array with strings and integers, return integers only
def filter_out_strings(arr)
  arr.grep(Integer)
end

# Get the next alphabet of every letter of a word
def the_next_alphabet(word)
  word.chars.map(&:next).join
end

# Count each alphabet 'X', 'Y', 'Z' from a given string
def calculate_alphabet(str)
  ('X'..'Z').map { |n| str.count(n) }
end

# Capitalize first letter of each word
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

# Return an array of index of small letter
def index_of_small_letter(word)
  (0..word.length).select{|i| word[i] =~ /[a-z]/}
end

# Word Spelling
def word_spelling(word)
  (0..(word.size - 1)).map { |w| word[0..w]}
end

# Sum up only numbers in an array
def sum_up_numbers(arr)
	arr.select { |x| x.is_a? Integer }.inject(0, :+)
end

# Perform operation of 4 types, if divided by 0 then is undefined
# Add, Subtract, Multiply, Divide
def operation_of(a, b, op)
  a, b = a.to_i, b.to_i
  case op
    when 'add'
      (a + b)
    when 'subtract'
      (a - b)
    when 'multiply'
      (a * b)
    when 'divide'
      b == 0 ? 'undefined' : (a / b)
  end
end

# Hashtag generator
# Start with a hashtag
# Capitalized first letter for each word
# Return false if empty string or more than 30 characters
def hashtag(str)
  hashtag = '#' + str.split.map(&:capitalize).join
	hashtag == '#' || hashtag.size > 30 ? false : hashtag
end

# Reformat date to be [MM, DD, YYYY]
def date_reformatting(date)
  d = Date.parse(date.gsub(/^(\d+)(.)(\d+)/, '\3\2\1'))
  [d.month, d.day, d.year]
end