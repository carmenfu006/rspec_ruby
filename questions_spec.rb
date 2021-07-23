require 'rspec'
require_relative './questions'

RSpec.describe 'the test challenge' do
  specify 'find_the_missing_numbers' do
    t = find_the_missing_numbers [1, 4, 5, 8, 9]
    expect(t).to eq [2, 3, 6, 7, 10]
  end

  specify 'compare_number_after_swap' do
    t = compare_number_after_swap 76
    u = compare_number_after_swap 47
    expect(t).to eq true
    expect(u).to eq false
  end

  specify 'get_index_of_the_first_vowel' do
    t = get_index_of_the_first_vowel 'Rambutan'
    expect(t).to eq 1
  end

  specify 'sum_of_two_largest_numbers' do
    t = sum_of_two_largest_numbers [1, 8, 5, 4, 9]
    expect(t).to eq 17
  end

  specify 'sum_of_two_smallest_numbers' do
    t = sum_of_two_smallest_numbers [9, 4, 8, 5, 1]
    expect(t).to eq 5
  end

  specify 'sum_of_positive' do
    t = sum_of_positive [9, -4, -8, 5, 1]
    expect(t).to eq 15
  end

  specify 'sum_of_negative' do
    t = sum_of_negative [9, -4, -8, 5, 1]
    expect(t).to eq -12
  end

  specify 'sum_positive_count_negative' do
    t = sum_positive_count_negative [9, -4, -8, 5, 1]
    expect(t).to eq [15, 2]
  end

  specify 'count_positive_sum_negative' do
    t = count_positive_sum_negative [9, -4, -8, 5, 1]
    expect(t).to eq [3, -12]
  end

  specify 'get_file_extension' do
    t = get_file_extension ['array.rb', 'array.js', 'image.jpeg']
    expect(t).to eq ['rb', 'js', 'jpeg']
  end

  specify 'validation_of_zip_code' do
    t = validation_of_zip_code '6s898'
    u = validation_of_zip_code '88400'
    v = validation_of_zip_code '89 11'
    expect(t).to eq false
    expect(u).to eq true
    expect(v).to eq false
  end

  specify 'filter_repeated_character_strings' do
    t = filter_repeated_character_strings ['abc', 'bbc', 'bbb', 'xyz', 'v']
    expect(t).to eq ['bbb', 'v']
  end

  specify 'rock_paper_scissors' do
    t = rock_paper_scissors('Rock', 'Rock')
    u = rock_paper_scissors('Paper', 'Rock')
    v = rock_paper_scissors('Scissors', 'Rock')
    expect(t).to eq "It's a draw!"
    expect(u).to_not eq "Player 2 wins!"
    expect(v).to_not eq "Player 1 wins!"
  end

  specify 'price_after_discount' do
    t = price_after_discount(500, 15)
    expect(t).to eq 425
  end

  specify 'check_for_eligible_of_free_shipping' do
    t = check_for_eligible_of_free_shipping({ 'Rice Cooker': 39.99, 'Hair Dryer': 11.99 })
    expect(t).to eq false
  end

  specify 'get_the_longest_word' do
    t = get_the_longest_word('Welcome to Rambutan Academy.')
    expect(t).to eq 'Rambutan'
  end

  specify 'get_the_shortest_word' do
    t = get_the_shortest_word('Welcome to Rambutan Academy.')
    expect(t).to eq 'to'
  end

  specify 'has_sunday_with_date_7' do
    t = has_sunday_with_date_7(3, 2021)
    expect(t).to eq true
  end

  specify 'filter_out_integers' do
    t = filter_out_integers ['R', 0, 'Ruby', 2021, 'Rails', "2021"]
    expect(t).to eq ["R", "Ruby", "Rails", "2021"]
  end

  specify 'filter_out_strings' do
    t = filter_out_strings ['R', 0, 'Ruby', 2021, 'Rails', "2021"]
    expect(t).to eq [0, 2021]
  end

  specify 'the_next_alphabet' do
    t = the_next_alphabet('Rambutan')
    expect(t).to eq 'Sbncvubo'
  end

  specify 'calculate_alphabet' do
    t = calculate_alphabet('XZZYYXZYZX')
    expect(t).to eq [3, 3, 4]
  end

  specify 'capitalize_letter_of_each_word' do
    t = capitalize_letter_of_each_word('Hello, how are you?')
    expect(t).to eq "Hello, How Are You?"
  end

  specify 'reverse_even_words' do
    t = reverse_even_words('Hello, how are you?')
    expect(t).to eq ",olleH how are ?uoy"
  end

  specify 'sorting_an_array' do
    t = sorting_an_array([8, 66, 11, 7], 'dsc')
    u = sorting_an_array([8, 66, 11, 7], 'asc')
    v = sorting_an_array([8, 66, 11, 7], 'none')
    expect(t).to eq [66, 11, 8, 7]
    expect(u).to eq [7, 8, 11, 66]
    expect(v).to eq [8, 66, 11, 7]
  end

  specify 'index_of_small_letter' do
    t = index_of_small_letter('raMbuTAn')
    expect(t).to eq [0, 1, 3, 4, 7]
  end

  specify 'word_spelling' do
    t = word_spelling('hello')
    expect(t).to eq ['h', 'he', 'hel', 'hell', 'hello']
  end

  specify 'sum_up_numbers' do
    t = sum_up_numbers [true, false, "123", "hello"]
    u = sum_up_numbers [1, 2, 3, true]
    expect(t).to eq 0
    expect(u).to eq 6
  end

  specify 'operation_of' do
    t = operation_of(3, 4, 'add')
    u = operation_of(3, 4, 'subtract')
    v = operation_of(3, 4, 'multiply')
    w = operation_of(3, 4, 'divide')
    x = operation_of(3, 0, 'divide')
    expect(t).to eq 7
    expect(u).to eq -1
    expect(v).to eq 12
    expect(w).to eq 0
    expect(x).to eq 'undefined'
  end

  specify 'hashtag' do
    t = hashtag('hello world')
    u = hashtag('')
    v = hashtag('greetings from rambutan academy sabah')
    expect(t).to eq '#HelloWorld'
    expect(u).to eq false
    expect(v).to eq false
  end

  specify 'date_reformatting' do
    t = date_reformatting('December 12, 2021')
    u = date_reformatting('Dec 12, 2021')
    v = date_reformatting('12/12/2021')
    w = date_reformatting('12-12-2021')
    x = date_reformatting('12.12.2021')
    expect(t).to eq [12, 12, 2021]
    expect(u).to eq [12, 12, 2021]
    expect(v).to eq [12, 12, 2021]
    expect(w).to eq [12, 12, 2021]
    expect(x).to eq [12, 12, 2021]
  end
end