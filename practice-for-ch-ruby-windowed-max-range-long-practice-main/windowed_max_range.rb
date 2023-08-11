
# O(n^2)
def windowed_max_range(arr, size)
    max_diff = arr.first
    (0...arr.length).each{|idx|
        jdx = idx+size-1
        if jdx > arr.length-1
            next
        end
        arr_sliced = arr[idx..jdx]
        current_diff = arr_sliced.max - arr_sliced.min
        max_diff = current_diff if current_diff > max_diff  
    }
 
    max_diff

end

p windowed_max_range([1, 0, 2, 5, 4, 8], 2) == 4 # 4, 8
p windowed_max_range([1, 0, 2, 5, 4, 8], 3) == 5 # 0, 2, 5
p windowed_max_range([1, 0, 2, 5, 4, 8], 4) == 6 # 2, 5, 4, 8
p windowed_max_range([1, 3, 2, 5, 4, 8], 5) == 6 # 3, 2, 5, 4, 8


class MyQueue

    def initialize
        @store = []
    end

    def enqueue(value)
        @store << value
    end

    def dequeue()
        @store.shift
    end

    def peek(value)
        @store.first
    end

    def size
        @store.length
    end

    def empty?
        @store.empty?
    end

end

class MyStack

    def initialize
        @store = []
    end

    def push(value)
        @store << value
    end

    def pop()
        @store.pop
    end

    def peek(value)
        @store.last
    end

    def size
        @store.length
    end

    def empty?
        @store.empty?
    end

end

class StackQueue

    def initialize
        @store = []
    end

    def enqueue(value)
        @store << MyStack.new(value)
    end

    def dequeue()
        @store.shift
    end

    def size
        @store.length
    end

    def empty?
        @store.empty?
    end



end