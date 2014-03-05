class BerlinClock

  attr_writer :time

  def display
    "#{get_second} #{get_hour} #{get_minute}"
  end

  def run
    while true
      @time = Time.now.strftime('%H:%M:%S')
      print @time + ' '
      puts self.display
      sleep 1
    end
  end

  private
  def get_second
    second = @time[6..7].to_i
    sec = (second % 2 == 1 ? 'O' : 'Y')
  end

  def get_minute
    minute = @time[3..4].to_i
    min_div_five = minute / 5
    min_mod_five = minute % 5
    min1 = ''
    (1..min_div_five).each do |i|
      min1 += i % 3 != 0 ? 'Y' : 'R'
    end
    min1 += 'O' * (11 - min_div_five)
    min2 = 'Y' * (min_mod_five) + 'O' * (4 - min_mod_five)
    "#{min1} #{min2}"
  end

  def get_hour
    hour = @time[0..1].to_i
    hour_div_five = hour / 5
    hour_mod_five = hour % 5
    hour1 = 'Y' * (hour_div_five) + 'O' * (4 - hour_div_five) 
    hour2 = 'Y' * (hour_mod_five) + 'O' * (4 - hour_mod_five) 
    "#{hour1} #{hour2}"
  end

end

if __FILE__ == $0
  berlin_clock = BerlinClock.new
  berlin_clock.run
end
