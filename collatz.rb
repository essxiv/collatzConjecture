class Test
    def self.collatz(n)
        storage = Hash.new
        storage[:highest_count] = 0
        storage[:which_num] = 0
        n.downto(2) do |num|
            temp = num
            count = 0
            while temp != 1
                temp.even? ? temp = temp / 2 : temp = 3*temp+1 
                count += 1
            end
            if count > storage[:highest_count]
                storage[:highest_count] = count
                storage[:which_num] = num
            end
        end
        return storage[:which_num]
    end
end
#Test.collatz(enter_number_below_1_million)