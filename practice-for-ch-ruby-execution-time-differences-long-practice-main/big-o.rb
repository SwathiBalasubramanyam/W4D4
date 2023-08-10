#  this is o(n^2) time complexity
# def my_min(arr) 

#     min = arr.shift
   
#     (0...arr.length).each do |i|
#         (0...arr.length).each do |j|
#             if arr[i] < arr[j]
#                 min = arr[i] if arr[i] < min
#             end
#         end
#     end
#     min
# end

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]

# TC: O(n)
def my_min(arr)
    min = arr.shift
    arr.each do |el|
        min = el if el < min
    end
    min
end
# p my_min(list)  # =>  -5


# TC: O(n^2)
def largest_contiguous_subsum(arr)
    largest_sum = arr.first
    arr.each_with_index do |el,i|
        (i...arr.length).each do |j|
            sub_arr_sum = arr[i..j].sum
            largest_sum = sub_arr_sum if sub_arr_sum > largest_sum
        end
    end
    largest_sum
end

# list = [5, 3, -7]
# p largest_contiguous_subsum(list) # => 8
# list = [2, 3, -6, 7, -6, 7]
# p largest_contiguous_subsum(list) # => 8 (from [7, -6, 7])
# list = [-5, -1, -3]
# p largest_contiguous_subsum(list) # => -1 (from [-1])

def largest_contiguous_subsum(arr)
    largest_sum = arr.first
    current_sum = arr.first
    # i = 0
    j = 1
    while j < arr.length # && i < arr.length
        # if i > j
        #     j += 1
        # end
        # current_sum = arr[i..j].sum
        current_sum = 0 if current_sum < 0
        current_sum += arr[j]
        if current_sum > largest_sum
            largest_sum = current_sum
            # j += 1
        # else
        #     i += 1
        end
        j += 1
    end
    largest_sum
end
list = [5, 3, -7]
p largest_contiguous_subsum(list) # => 8
list = [2, 3, -6, 7, -6, 7]
p largest_contiguous_subsum(list) # => 8 (from [7, -6, 7])
list = [-5, -1, -3]
p largest_contiguous_subsum(list) # => -1 (from [-1])