class BerlinClock
  def setTime time
    @time = time
  end

  def display
    second = @time[6..7].to_i
    minute = @time[3..4].to_i
    min2_display = "5OOOO"
    if second % 2 == 0 
      second_display = "1Y"
    elsif second % 2 == 1 
      second_display = "1O"
    end

    if minute % 5 == 1
      min2_display = "5YOOO" 
    elsif minute % 5 == 4
      min2_display = "5YYYY" 
    end
      second_display + " 2OOOO 3OOOO 4OOOOOOOOOOO " + min2_display 
  end
end
