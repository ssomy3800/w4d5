def uniq(arr)
    return [] if arr.length == 0
    raise ArgumentError.new "wrong type of input" if !arr.is_a?(Array)
    hash = Hash.new(0)
    arr.each do |ele|
        hash[ele] += 1
    end
    
    
    hash.keys
end

class Array
    def two_sum
        return nil if self.length < 2
        result = []
        hash = Hash.new
        self.each_with_index do |ele, i|
            if hash.has_key?(-1*ele)
                result << (hash[(-1*ele)] + [i])
            else
                hash[ele] = [i]
            end
        end
        if result.length == 0
            return nil
        else 
            return result 
        end
    end
end

