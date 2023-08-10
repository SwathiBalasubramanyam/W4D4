require 'set'

# TC: O(n^2)
# def two_sum?(arr, target_sum)
#     arr.each_with_index do |num1, idx1|
#         arr.each_with_index do |num2, idx2|
#             return true if idx2 > idx1 && (num1 + num2) == target_sum
#         end
#     end
#     false
# end

# arr = [0, 1, 5, 7]
# p two_sum?(arr, 6) # => should be true
# p two_sum?(arr, 10) # => should be false

# TC:  n log n
def sort_two_sum?(arr, target_sum)
    arr.sort!
    arr.each_with_index do |el, i|
        complement = target_sum - el
        idx = arr.bsearch_index {|el| el == complement}
        return true if i != idx && !idx.nil?
    end
    false
end

arr = [0, 1, 5, 7]
p sort_two_sum?(arr, 6) # => should be true
p sort_two_sum?(arr, 10) # => should be false

# O(n)
# def set_two_sum?(arr, target_sum)
#     set = Set.new
#     arr.each do |el|
#         complement = target_sum - el
#         set.include?(complement) ? true : set.add(el)
#     end
#     false
# end

# arr = [0, 1, 5, 7]
# p set_two_sum?(arr, 6) # => should be true
# p set_two_sum?(arr, 10) # => should be false