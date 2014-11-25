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

		it "returns false if subsequence isn't aritmethic" do
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

		it "returns false if subsequence isn't geometric" do
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

		it "returns false if subsequence isn't Fibonacci" do
			expect(isnt.isFibonacci?).to eq(false)
		end

		it "returns false if subsequence is too short" do
			expect(short.isFibonacci?).to eq(false)
		end
	end
end