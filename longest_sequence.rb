#!/usr/bin/env ruby
# frozen_string_literal: true

require File.dirname(__FILE__) + '/lib/string_parser'

longest_sequence = StringParser.new(ARGV[0].to_s).longest_char_sequence
puts "Longest sequence: '#{longest_sequence}'"
