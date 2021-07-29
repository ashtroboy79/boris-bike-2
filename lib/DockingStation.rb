require "./lib/Bike"


class DockingStation
	attr_reader :dock
	def initialize
		@dock = []
	end

	def release_bike
		raise "no bikes to release" if empty? == true
#		if check == true
  	@dock.pop()
#		end
	end

	def dock
		raise "Dock station full" if full? == true
		@dock << Bike.new
		
	end
	private
	def empty?
		if @dock.count == 0
			return true
		else
			return false
		end
  end

	def full?
		if @dock.count >= 20
			return true
		else
			return false
		end
	end
end 