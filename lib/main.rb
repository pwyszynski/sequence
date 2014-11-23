#encoding UTF-8
require_relative 'ciag.rb'

def menu
	puts "\n\n"

	puts "What do you want to do?"
	puts "1. Check whether sequence is aritmethic/geometric/fibonacci."
	puts "2. Do basic operations on sequences"
	puts "---"
	puts "0. Exit"
	wybor = gets.chomp.to_i

	case wybor
	when 1
		checker
	when 2
		operations
	when 0
		exit
	else
		puts "Not an option."
		system "clear"
		menu
	end
end

def checker
	system "clear"
	puts "Type in your sequence(for example 1,2,3):"
	a = Array.new
	a = gets.chomp.split(',').map(&:to_i).to_a

	b = Ciag.new
	b.setSeq(a)


	if b.isFibonacci? == true then 
		puts "This is a Fibonacci sequence."
	elsif b.isAritmethic? == true then
		puts "This is an aritmethic sequence."
	elsif b.isGeometric? == true then
		puts "This is a geometric sequence"
	else
		puts "This is not a recognizable sequence"
	end

	menu
end

def operations
	system "clear"
	puts "1. Add two sequences."
	puts "2. Substract a sequence from another."
	puts "3. Multiply a sequence by another sequence."
	puts "---"
	puts "5. Multiply by a scalar."
	puts "6. Divide by a scalar."
	puts "---"
	puts "0. Back to menu."

	wybor_oper = gets.chomp.to_i

	case wybor_oper
	when 1
		system "clear"
		puts "Type in your first sequence(for example 1,2,3):"
		a = Array.new
		a = gets.chomp.split(',').map(&:to_i).to_a

		b = Ciag.new
		b.setSeq(a)

		puts "Type in your second sequence(for example 1,2,3):"
		a = gets.chomp.split(',').map(&:to_i).to_a

		c = Ciag.new
		c.setSeq(a)

		d = Ciag.new
		d.addSequences(b,c)

		p d

		menu
	when 2
		system "clear"
		puts "Type in your first sequence(for example 1,2,3):"
		a = Array.new
		a = gets.chomp.split(',').map(&:to_i).to_a

		b = Ciag.new
		b.setSeq(a)

		puts "Type in your second sequence(for example 1,2,3):"
		a = gets.chomp.split(',').map(&:to_i).to_a

		c = Ciag.new
		c.setSeq(a)

		d = Ciag.new
		d.substractSequences(b,c)

		p d

		menu
	when 3
		system "clear"
		puts "Type in your first sequence(for example 1,2,3):"
		a = Array.new
		a = gets.chomp.split(',').map(&:to_i).to_a

		b = Ciag.new
		b.setSeq(a)

		puts "Type in your second sequence(for example 1,2,3):"
		a = gets.chomp.split(',').map(&:to_i).to_a

		c = Ciag.new
		c.setSeq(a)

		d = Ciag.new
		d.multiplySequences(b,c)

		p d

		menu
	when 5
		system "clear"
		puts "Type in your sequence(for example 1,2,3):"
		a = Array.new
		a = gets.chomp.split(',').map(&:to_i).to_a

		b = Ciag.new
		b.setSeq(a)

		puts "Type in the scalar: "
		scalar = gets.chomp.to_i

		b.multByNum(scalar)	

		p b

		menu	
	when 6
		system "clear"
		puts "Type in your sequence(for example 1,2,3):"
		a = Array.new
		a = gets.chomp.split(',').map(&:to_i).to_a

		b = Ciag.new
		b.setSeq(a)

		puts "Type in the scalar: "
		scalar = gets.chomp.to_i

		b.divByNum(scalar)

		p b

		menu
	when 0
		system "clear"
		menu
	else
		system "clear"
		puts "Not an option."
		operations
	end
end

#Actual Main ;)
system "clear"
menu