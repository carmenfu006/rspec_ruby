require 'rspec'
require_relative './questions'

RSpec.describe 'the test challenge' do
  specify 'find_the_missing_numbers' do
    t = find_the_missing_numbers [1, 4, 5, 8, 9]
    expect(t).to eq [2, 3, 6, 7, 10]
  end

  specify 'compare_number_after_swap' do
    t = compare_number_after_swap 76
    expect(t).to eq true
  end

  specify 'get_index_of_the_first_vowel' do
    t = get_index_of_the_first_vowel 'Rambutan'
    expect(t).to eq 1
  end

  specify 'sum_of_two_largest_numbers' do
    t = sum_of_two_largest_numbers [1, 4, 5, 8, 9]
    expect(t).to eq 17
  end

  specify 'get_file_extension' do
    t = get_file_extension ['array.rb', 'array.js', 'image.jpeg']
    expect(t).to eq ['rb', 'js', 'jpeg']
  end

  specify 'validation_of_zip_code' do
    t = validation_of_zip_code '6s898'
    expect(t).to eq false
  end

  specify 'filter_repeated_character_strings' do
    t = filter_repeated_character_strings ['abc', 'bbc', 'bbb', 'xyz', 'v']
    expect(t).to eq ['bbb', 'v']
  end

  specify 'rock_paper_scissors' do
    t = rock_paper_scissors('Rock', 'Rock')
    expect(t).to eq "It's a draw!"
  end

  specify 'rock_paper_scissors' do
    t = rock_paper_scissors('Paper', 'Rock')
    expect(t).to_not eq "Player 2 wins!"
  end

  specify 'rock_paper_scissors' do
    t = rock_paper_scissors('Scissors', 'Rock')
    expect(t).to_not eq "Player 1 wins!"
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

  specify 'has_sunday_with_date_7' do
    t = has_sunday_with_date_7(3, 2021)
    expect(t).to eq true
  end

  specify 'filter_out_integers' do
    t = filter_out_integers ['R', 0, 'Ruby', 2021, 'Rails', "2021"]
    expect(t).to eq ["R", "Ruby", "Rails", "2021"]
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
    t = sorting_an_array([7, 8, 11, 66], 'dsc')
    expect(t).to eq [66, 11, 8, 7]
  end
end