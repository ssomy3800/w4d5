def uniq(arr)
    return [] if arr.length == 0
    raise ArgumentError.new "wrong type of input" if !arr.is_a?(Array)
    hash = Hash.new(0)
    arr.each do |ele|
        hash[ele] += 1
    end
    
    
    hash.keys
end
require "byebug"

class Array
    def two_sum
        #debugger
        return nil if self.length < 2
        result = []
        hash = Hash.new{|hash,k| hash[k] = []}
        self.each_with_index do |ele, i|
            if hash.has_key?(-1*ele)
                if hash[-1*ele].length > 1 
                    result << ([hash[(-1*ele)].last] + [i])
                    hash[ele] += [i]
                else
                    result << (hash[(-1*ele)] + [i])
                    hash[ele] += [i]
                end
            else
                hash[ele] += [i]
            end
        end
        if result.length == 0
            return nil
        else 
            return result  
        end
    end
end

