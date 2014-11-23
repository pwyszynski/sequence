class Ciag < Array

	def initialize()
		super()
	end

	def setSeq(w)
		for i in (0...w.length) do
			self[i] = w[i]
		end
		return self
	end

	def isFibonacci?
		if self.length<=1 then
      return false
    else
      step = self[1]-self[0]

      for i in (0...self.length-2) do
        if self[i]+self[i+1]!=self[i+2] then
          return false
        end
      end
      return true
    end
	end

	def isAritmethic?
		if self.length<=1 then
      return false
		else
			step = self[1]-self[0]

			for i in (0...self.length-1) do
				if self[i+1]!=self[i]+step then
					return false
				end
			end
			return true
		end
	end

  def isGeometric?
    if self.length<=1 then
      return false
    else
      multiplier = self[1]/self[0]

      for i in (0...self.length-1) do
        if self[i+1]!=self[i]*multiplier then
          return false
        end
      end
      return true
    end
  end

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