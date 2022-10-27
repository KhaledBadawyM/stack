class Stack
    def initialize
        @first = nil
    end

    def push(value)
        raise "Value must be a numeric type!" if !is_numeric(value)
        @first = Node.new(value, @first)
    end
        
    def pop
        raise "Stack is empty" if is_empty?
        value = @first.value
        @first = @first.next_node
        value
    end

    def is_numeric(value)
        value.is_a?(Numeric)
    end

    def is_empty?
        @first.nil?
    end

    def max
        max_num = @first.value
        current_node = @first.next_node
        while current_node != nil
            if max_num < current_node.value 
                max_num = current_node.value
            end
            current_node = current_node.next_node
        end
        max_num
    end
