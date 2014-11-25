require_relative 'ciag.rb'

class ciagOperations

	def addSequences(a, b)
    dlA = a.length
    dlB = b.length

    if dlA < dlB then
      diffrnc = dlB-dlA
      a.addZeros(diffrnc)
    elsif dlB < dlA then
      diffrnc = dlA-dlB
      b.addZeros(diffrnc)
    end

    a.zip(b).map{|pair| pair.reduce(&:+) }
  end

  def substractSequences(a, b)
    dlA = a.length
    dlB = b.length

    if dlA < dlB then
      diffrnc = dlB-dlA
      a.addZeros(diffrnc)
    elsif dlB < dlA then
      diffrnc = dlA-dlB
      b.addZeros(diffrnc)
    end

    a.zip(b).map{|pair| pair.reduce(&:-) }
  end

  def multiplySequences(a, b)
    dlA = a.length
    dlB = b.length

    if dlA < dlB then
      diffrnc = dlB-dlA
      a.addZeros(diffrnc)
    elsif dlB < dlA then
      diffrnc = dlA-dlB
      b.addZeros(diffrnc)
    end

    a.zip(b).map{|pair| pair.reduce(&:*) }
  end

  def multByNum(a)
    for i in (0...self.length) do
      self[i]=self[i]*a
    end

    return self
  end

  def divByNum(a)
    for i in (0...self.length) do
      self[i]=self[i]/a
    end

    return self
  end

  def addZeros(a)
    for i in (1..a)
      self.push(0)
    end
    return self
  end
end