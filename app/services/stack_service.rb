class Stack
    def initialize
        @first = nil
        @has_change = true
        @current_max = nil
    end

    def push(value)
        raise "Value must be a integer type!" if !is_integer(value)
        @first = Node.new(value, @first)
        @has_change = true
    end
        
    def pop
        raise "Stack is empty" if is_empty?
        value = @first.value
        @first = @first.next_node
        @has_change = true
        value
    end

    def is_integer(value)
        value.is_a?(Integer)
    end

    def is_empty?
        @first.nil?
    end

    def max
        if @has_change
            @current_max = get_max
            @has_change = false
        end
        return @current_max
    end

    def get_max
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
end