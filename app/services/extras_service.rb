class Extras < Stack
    def mean
        if self.is_empty?
            return 'Stack is empty'
        else
            count = 0
            sum = 0.0s
            current_node = @first
            while current_node.next_node != nil
                sum += current_node.value
                count += 1
                current_node = current_node.next_node
            end
        end
        sum / count
    end