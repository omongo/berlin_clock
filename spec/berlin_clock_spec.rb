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

  it "should return 1Y 2OOOO 3OOOO 4YOOOOOOOOOO 5OOOO when input is 00:05:00" do
    berlin_clock.setTime "00:05:00"
    expect berlin_clock.display.should eq "1Y 2OOOO 3OOOO 4YOOOOOOOOOO 5OOOO"
  end

  it "should return 1Y 2OOOO 3OOOO 4YOOOOOOOOOO 5YYOO when input is 00:07:00" do
    berlin_clock.setTime "00:07:00"
    expect berlin_clock.display.should eq "1Y 2OOOO 3OOOO 4YOOOOOOOOOO 5YYOO"
  end

  it "should return 1Y 2OOOO 3OOOO 4YYOOOOOOOOO 5OOOO when input is 00:10:00" do
    berlin_clock.setTime "00:10:00"
    expect berlin_clock.display.should eq "1Y 2OOOO 3OOOO 4YYOOOOOOOOO 5OOOO"
  end

  it "should return 1Y 2OOOO 3OOOO 4YYROOOOOOOO 5OOOO when input is 00:15:00" do
    berlin_clock.setTime "00:15:00"
    expect berlin_clock.display.should eq "1Y 2OOOO 3OOOO 4YYROOOOOOOO 5OOOO"
  end
  
  it "should return 1Y 2OOOO 3OOOO 4YYROOOOOOOO 5YYOO when input is 00:17:00" do
    berlin_clock.setTime "00:17:00"
    expect berlin_clock.display.should eq "1Y 2OOOO 3OOOO 4YYROOOOOOOO 5YYOO"
  end
  
  it "should return 1Y 2OOOO 3OOOO 4YYRYYROOOOO 5OOOO when input is 00:37:00" do
    berlin_clock.setTime "00:37:00"
    expect berlin_clock.display.should eq "1Y 2OOOO 3OOOO 4YYRYYRYOOOO 5YYOO"
  end
  
  it "should return 1Y 2OOOO 3YOOO 4YYRYYROOOOO 5OOOO when input is 01:37:00" do
    berlin_clock.setTime "01:37:00"
    expect berlin_clock.display.should eq "1Y 2OOOO 3YOOO 4YYRYYRYOOOO 5YYOO"
  end

  it "should return 1Y 2YOOO 3OOOO 4OOOOOOOOOOO 5OOOO when input is 05:00:00" do
    berlin_clock.setTime "05:00:00"
    expect berlin_clock.display.should eq "1Y 2YOOO 3OOOO 4OOOOOOOOOOO 5OOOO"
  end
end
