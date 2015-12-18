class Timer
  
  attr_accessor :seconds
  
  def initialize
    @seconds = 0
  end
  
  def time_string
	
	pad = Proc.new do |units|
	  if units < 10
	    units = "0#{units}"
	  else
	    units = units.to_s
	  end
	end  
	
	hours = @seconds / 3600
	rem = @seconds % 3600
	hours = pad.call(hours)
	minutes = rem / 60
	rem = rem % 60
	minutes = pad.call(minutes)
	rem = pad.call(rem)
	return "#{hours}:#{minutes}:#{rem}"
  end
  
end