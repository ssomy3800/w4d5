require 'TDD.rb'
require 'rspec'



describe "uniq" do
    context 'when we pass an empty array' do
        it "should return an empty array if there is no element within the input array" do
            arr = []
            expect(uniq(arr)).to eq([])
        end
    end

    it "should return a identical array if there is no duplicate" do 
        arr = [1,2,3,4,5]
        expect(uniq(arr)).to eq([1,2,3,4,5])
    end

    it "should return a simplified array if there are duplicates" do 
        arr = [1,2,1,4,5,4]
        expect(uniq(arr)).to eq([1,2,4,5])
    end

    it "should raise an error if the input is not an array" do 
        arr = 'abc'
        expect{uniq(arr)}.to raise_error(ArgumentError)
    end
end

describe "Array#two_sum" do

    it "should return an empty array if there is no element within the input array" do
        arr = []
        arr2 = [1]
        expect(arr.two_sum).to be_falsey
        expect(arr2.two_sum).to be_falsey
    end
    

    it "should return falsey if there is no pair sum up to 0" do 
        arr = [1,2,3,4,5]
        expect(arr.two_sum).to be_falsey
    end

    it "should return all pairs that sum up to 0" do 
        arr = [-1,1,5,3,-4,-3]
        expect(arr.two_sum).to eq([[0,1],[3,5]])
    end

    # it "should work with element that appear more than once" do 
    #     arr = [-1,1,5,3,-4,-3,1,-1]
    #     expect(arr.two_sum).to eq([[0,1],[3,5],[0,6],[1,7],[6,7]])
    # end

    it "should raise an error if the input is not an array" do 
        arr = 'abc'
        expect{arr.two_sum}.to raise_error(NoMethodError)
    end
end