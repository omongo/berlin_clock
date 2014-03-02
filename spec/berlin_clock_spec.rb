require 'spec_helper'

describe "Berlin Clock" do

  let (:berlin_clock) { BerlinClock.new }

  it "should return 1Y 2OOOO 3OOOO 4OOOOOOOOOOO 5OOOO when input is 00:00:00" do
    berlin_clock.setTime "00:00:00"
    expect berlin_clock.display.should eq "1Y 2OOOO 3OOOO 4OOOOOOOOOOO 5OOOO"
  end

  it "should return 1O 2OOOO 3OOOO 4OOOOOOOOOOO 5OOOO when input is 00:00:01" do
    berlin_clock.setTime "00:00:01"
    expect berlin_clock.display.should eq "1O 2OOOO 3OOOO 4OOOOOOOOOOO 5OOOO"
  end

  it "should return 1Y 2OOOO 3OOOO 4OOOOOOOOOOO 5YOOO when input is 00:01:00" do
    berlin_clock.setTime "00:01:00"
    expect berlin_clock.display.should eq "1Y 2OOOO 3OOOO 4OOOOOOOOOOO 5YOOO"
  end

  it "should return 1Y 2OOOO 3OOOO 4OOOOOOOOOOO 5YYYY when input is 00:04:00" do
    berlin_clock.setTime "00:04:00"
    expect berlin_clock.display.should eq "1Y 2OOOO 3OOOO 4OOOOOOOOOOO 5YYYY"
  end
  
  it "should return 1Y 2OOOO 3OOOO 4OOOOOOOOOOO 5YYOO when input is 00:02:00" do
    berlin_clock.setTime "00:02:00"
    expect berlin_clock.display.should eq "1Y 2OOOO 3OOOO 4OOOOOOOOOOO 5YYOO"
  end
end
