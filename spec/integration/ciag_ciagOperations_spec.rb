require_relative '../spec_helper.rb'
require_relative '../../lib/ciag.rb'
require_relative '../../lib/ciagOperations.rb'


describe CiagOperations do
	let(:dummy_class) { Class.new { include CiagOperations } }

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

		it "adds first(shorter) sequence to the second(longer)" do
			expect(result).to eq([3,6,9,12,5])
		end

		it "adds second(longer) sequence to the first(shorter)" do
			expect(Ciag.new().addSequences(second,first)).to eq([3,6,9,12,5])
		end
	end

	describe "#substractSequences" do
		let (:first) { Ciag.new().setSeq([2,4,6,8]) }
		let (:second) { Ciag.new().setSeq([1,2,3,4,5]) }
		let (:result) { Ciag.new().substractSequences(first, second) }

		it "substracts the second(longer) sequence from first(shorter) sequence" do
			expect(result).to eq([1,2,3,4,-5])
		end

		it "substracts first(shorter) sequence from the second(longer) sequence" do
			expect(Ciag.new().substractSequences(second,first)).to eq([-1,-2,-3,-4,5])
		end
	end

	describe "#multiplySequences" do
		let (:first) { Ciag.new().setSeq([2,4,6,8]) }
		let (:second) { Ciag.new().setSeq([1,2,3,4,5]) }
		let (:result) { Ciag.new().multiplySequences(first, second) }

		it "multiplies first(shorter) sequence by second (longer) sequence" do
			expect(result).to eq([2, 8, 18, 32, 0])
		end

		it "multiplies second(longer) sequence by the first(shorter)" do
			expect(Ciag.new().multiplySequences(second,first)).to eq([2, 8, 18, 32, 0])
		end
	end
end