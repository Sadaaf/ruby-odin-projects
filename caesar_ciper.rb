# frozen_string_literal: true

# rubocop: disable Metrics/AbcSize
# rubocop: disable Metrics/CyclomaticComplexity
# rubocop: disable Metrics/MethodLength
# rubocop: disable Metrics/PerceivedComplexity
def caesar_cypher(message, shift_factor)
  # rubocop: enable Metrics/AbcSize
  # rubocop: enable Metrics/CyclomaticComplexity
  # rubocop: enable Metrics/MethodLength
  # rubocop: enable Metrics/PerceivedComplexity
  updated_asciis = []
  encrypted_message = ''
  message.bytes.each do |char|
    if char >= 65 && char <= 90
      char += shift_factor
      loop do
        break if char <= 90

        char = 64 + (char - 90)
      end
    elsif char >= 97 && char <= 122
      char += shift_factor
      loop do
        break if char <= 122

        char = 96 + (char - 122)
      end
    end
    updated_asciis << char
  end
  updated_asciis.each do |ascii|
    encrypted_message.concat(ascii.chr)
  end
  encrypted_message
end

message = 'Sadaf that was awesome!'

p caesar_cypher(message, 20)
