require_relative '../spec_helper.rb'
require_relative '../../lib/ciag.rb'

describe Ciag do
	it "is initialised with no arguments" do
		expect {
			Ciag.new()
		}.to_not raise_error
	end

	it "is initialised with empty array" do
		expect(Ciag.new()).to eq([])
	end

	describe "#setSeq" do
		let(:ary) { ary = [1,2,3] }

		it "sets the subsequence with given array" do
			expect(Ciag.new().setSeq(ary)).to eq([1,2,3])
		end

		it "has the length of the array given" do
			expect {
				ary = [1,2,3]
				arylen = ary.length
				Ciag.setSeq(ary).lenght.to eq(arylen)
			}
		end
	end

	describe "#isAritmethic?" do
		let(:is) { Ciag.new().setSeq([1,3,5,7]) }
		let(:isnt) { Ciag.new().setSeq([1,3,4,9]) }
		let(:short) { Ciag.new().setSeq([1]) }
		
		it "returns true if subsequence is aritmethic" do
			expect(is.isAritmethic?).to eq(true)
		end

		it "returns false if subsequence is aritmethic" do
			expect(isnt.isAritmethic?).to eq(false)
		end

		it "returns false if subsequence is too short" do
			expect(short.isAritmethic?).to eq(false)
		end
	end

	describe "#isGeometric?" do
		let(:is) { Ciag.new().setSeq([1,3,9,27]) }
		let(:isnt) { Ciag.new().setSeq([1,3,4,9]) }
		let(:short) { Ciag.new().setSeq([1]) }

		it "returns true if subsequence is geometric" do
			expect(is.isGeometric?).to eq(true)
		end

		it "returns false if subsequence is geometric" do
			expect(isnt.isGeometric?).to eq(false)
		end

		it "returns false if subsequence is too short" do
			expect(short.isGeometric?).to eq(false)
		end
	end

	describe "#isFibonacci?" do
		let(:is) { Ciag.new().setSeq([1,1,2,3,5,8]) }
		let(:isnt) { Ciag.new().setSeq([1,3,4,9]) }
		let(:short) { Ciag.new().setSeq([1]) }
		
		it "returns true if subsequence is Fibonacci" do
			expect(is.isFibonacci?).to eq(true)
		end

		it "returns false if subsequence is Fibonacci" do
			expect(isnt.isFibonacci?).to eq(false)
		end

		it "returns false if subsequence is too short" do
			expect(short.isFibonacci?).to eq(false)
		end
	end


	describe "#addZeros" do
		it "adds given number of zeros to subsequence" do
			expect(Ciag.new().setSeq([1,2,3]).addZeros(3)).to eq([1,2,3,0,0,0])
		end
	end

	describe "#multByNum" do
		let (:result) { Ciag.new().setSeq([1,2,3,4]).multByNum(2) }

		it "mutliplies given vector by scalar" do
			expect(result).to eq([2,4,6,8])
		end

		it "keeps the length intact" do
			expect(result.length).to eq(4)
		end

	end

	describe "#divByNum" do
		let (:result) { Ciag.new().setSeq([2,4,6,8]).divByNum(2) }

		it "divides given subsequence by scalar" do
			expect(result).to eq([1,2,3,4])
		end

		it "keeps the length intact" do
			expect(result.length).to eq(4)
		end
	end

	describe "#addSequences" do
		let (:first) { Ciag.new().setSeq([2,4,6,8]) }
		let (:second) { Ciag.new().setSeq([1,2,3,4,5]) }
		let (:result) { Ciag.new().addSequences(first, second) }

		it "adds sequences to each other" do
			expect(result).to eq([3,6,9,12,5])
		end

		it "substracts first sequence from the second" do
			expect(Ciag.new().addSequences(second,first)).to eq([3,6,9,12,5])
		end
	end

	describe "#substractSequences" do
		let (:first) { Ciag.new().setSeq([2,4,6,8]) }
		let (:second) { Ciag.new().setSeq([1,2,3,4,5]) }
		let (:result) { Ciag.new().substractSequences(first, second) }

		it "substracts second sequence from first sequence" do
			expect(result).to eq([1,2,3,4,-5])
		end

		it "substracts first sequence from the second" do
			expect(Ciag.new().substractSequences(second,first)).to eq([-1,-2,-3,-4,5])
		end
	end

	describe "#multiplySequences" do
		let (:first) { Ciag.new().setSeq([2,4,6,8]) }
		let (:second) { Ciag.new().setSeq([1,2,3,4,5]) }
		let (:result) { Ciag.new().multiplySequences(first, second) }

		it "multiplies sequences" do
			expect(result).to eq([2, 8, 18, 32, 0])
		end

		it "substracts first sequence from the second" do
			expect(Ciag.new().multiplySequences(second,first)).to eq([2, 8, 18, 32, 0])
		end
	end
		
end