#  this is o(n^2) time complexity
def my_min(arr) 

    min = arr.shift
   
    (0...arr.length).each do |i|
        (0...arr.length).each do |j|
            if arr[i] < arr[j]
                min = arr[i] if arr[i] < min
            end
        end
    end
    min
end

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
p my_min(list)  # =>  -5

