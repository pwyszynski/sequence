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
  
end