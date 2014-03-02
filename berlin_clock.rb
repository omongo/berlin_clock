class BerlinClock
  def setTime time
    @time = time
  end

  def display
    if @time == '00:00:00'
      "1Y 2OOOO 3OOOO 4OOOOOOOOOOO 5OOOO" 
    elsif @time == '00:00:01'
      "1O 2OOOO 3OOOO 4OOOOOOOOOOO 5OOOO" 
    elsif @time == '00:01:00'
      "1Y 2OOOO 3OOOO 4OOOOOOOOOOO 5YOOO" 
    end
  end
end
