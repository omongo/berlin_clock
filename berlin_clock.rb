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

    min2_display = "5" + "Y" * (minute % 5) + "O" * (4 - minute % 5) 
    
    minute_div_five = minute / 5
    if minute_div_five == 1
      min1_display = "4YOOOOOOOOOO"
    else
      min1_display = "4OOOOOOOOOOO"
    end
    second_display + " 2OOOO 3OOOO " + min1_display +" "+ min2_display 
  end
end
