# Write a method, `only_vowels?(str)`, that accepts a string as an arg.
# The method should return true if the string contains only vowels.
# The method should return false otherwise.

def only_vowels?(str)
    # Iterate through the string checking each character
    # Check if the character is included within another string (vowels only)
    # If it is not in the vowels only string, then return false
    # At the end, we will do true

    vowels = "aeiou"
    str.each_char { |char| return false if !vowels.include?(char) }
    true
end


p only_vowels?("aaoeee")  # => true
p only_vowels?("iou")     # => true
p only_vowels?("cat")     # => false
p only_vowels?("over")    # => false


