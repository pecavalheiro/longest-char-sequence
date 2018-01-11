# frozen_string_literal: true

# Parses given string to provide some results.
class StringParser
  attr_accessor :string

  def initialize(string)
    self.string = string
  end

  def longest_char_sequence
    valid_string.scan(/((.)\2*)/).map(&:first).max_by(&:length)
  end

  def valid_string
    return string unless string.include? ' '
    string.split(' ').first
  end
end
