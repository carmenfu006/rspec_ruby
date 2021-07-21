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
end