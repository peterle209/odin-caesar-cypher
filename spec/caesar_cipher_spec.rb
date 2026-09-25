# frozen_string_literal: true

require_relative '../caesar_cipher'

describe 'Caesar Cipher' do
  describe 'script' do
    context 'when input is an empty string' do
      empty_string = ''
      placeholder_shift = 5
      it 'returns an empty string back' do
        expect(caesar_cipher(empty_string, placeholder_shift)).to eql(empty_string)
      end
    end

    context 'when input and shift factor are valid' do
      sample_string = 'What a string!'
      shift = 5
      result_string = 'Bmfy f xywnsl!'
      it 'will return intended cipher' do
        expect(caesar_cipher(sample_string, shift)).to eql(result_string)
      end
    end

    context 'when input is entirely symbols' do
      symbol_string = '&@!)$)!&#%!&()'
      dummy_shift = 5
      it 'will return unchanged string' do
        expect(caesar_cipher(symbol_string, dummy_shift)).to eql(symbol_string)
      end
    end

    context 'when input is invalid' do
      invalid_input = 0
      shift = 5
      it 'will print error message' do
        expect { caesar_cipher(invalid_input, 5) }.to output('Invalid string.').to_stdout
      end
    end
  end
end
