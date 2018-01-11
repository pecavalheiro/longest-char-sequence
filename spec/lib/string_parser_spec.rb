# frozen_string_literal: true

require 'spec_helper'
require File.dirname(__FILE__) + '/../../lib/string_parser'

RSpec.shared_examples 'a string parser' do |matchers|
  matchers.each do |string, sequence|
    it "and returns #{sequence} as the first longest sequence for #{string}" do
      expect(StringParser.new(string).longest_char_sequence).to eq sequence
    end
  end
end

describe StringParser do
  describe '#longest_char_sequence' do
    context 'valid string' do
      context 'having only 1 longest sequence' do
        context 'in any position' do
          it_behaves_like 'a string parser', 'aaabc' => 'aaa',
                                             'abbbc' => 'bbb',
                                             'abccc' => 'ccc'
        end
      end
      context 'having multiple longest sequences' do
        context 'in any position' do
          it_behaves_like 'a string parser', 'aaabbbccc' => 'aaa',
                                             '11bbaa222bbb' => '222',
                                             'aa555888' => '555'
        end
      end
      context 'with special characters' do
        it_behaves_like 'a string parser', 'aa$$$]]]cd66' => '$$$',
                                           '*()<>]???' => '???'
      end
    end
    context 'empty string' do
      it 'returns nil' do
        expect(StringParser.new('').longest_char_sequence).to eq nil
      end
    end
    context 'string with spaces' do
      it_behaves_like 'a string parser', 'aabbbcc ccccc      aa231232' => 'bbb'
    end
  end
end
