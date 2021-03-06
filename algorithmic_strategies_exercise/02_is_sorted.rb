# Write a method, is_sorted(arr), that accepts an array of numbers as an arg.
# The method should return true if the elements are in increasing order, false otherwise.
# Do not use the built-in Array#sort in your solution :)
def is_sorted(arr)
    # iterate over the arr
        # check if !i + 1 > i
            # return false
    # return true

    i = 0

    while i < arr.length - 1
        if arr[i] > arr[i + 1]
            return false
        end
        i += 1
    end

    true

end

p is_sorted([1, 4, 10, 13, 15])       # => true
p is_sorted([1, 4, 10, 10, 13, 15])   # => true
p is_sorted([1, 2, 5, 3, 4 ])         # => false
