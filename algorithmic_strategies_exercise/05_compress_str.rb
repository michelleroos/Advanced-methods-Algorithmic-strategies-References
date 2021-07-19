# Write a method, compress_str(str), that accepts a string as an arg.
# The method should return a new str where streaks of consecutive characters are compressed.
# For example "aaabbc" is compressed to "3a2bc".

def compress_str(str)
    # Iterate over the string, keep a counter for conse chars 
    # if no streak, then add char to new_str
    # If streak, add to counter
    # If the streak breaks, add the counter.to_s and char to new_str

    new_str = ""
    counter = 1
    i = 0

    while i < str.length

        if str[i] != str[i + 1]
            if counter > 1
                new_str += "#{counter}#{str[i]}"
                counter = 1
            else
                new_str += str[i]
            end

        else 
            counter += 1

        end
        i += 1
    end
    new_str
end


p compress_str("aaabbc")        # => "3a2bc"
p compress_str("xxyyyyzz")      # => "2x4y2z"
p compress_str("qqqqq")         # => "5q"
p compress_str("mississippi")   # => "mi2si2si2pi"
