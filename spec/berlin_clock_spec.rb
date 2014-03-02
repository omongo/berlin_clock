require 'spec_helper'

describe "Berlin Clock" do

  let (:berlin_clock) { BerlinClock.new }

  it "should return Y OOOO OOOO OOOOOOOOOOO OOOO when input is 00:00:00" do
    berlin_clock.setTime "00:00:00"
    expect berlin_clock.display.should eq "Y OOOO OOOO OOOOOOOOOOO OOOO"
  end

  it "should return O OOOO OOOO OOOOOOOOOOO OOOO when input is 00:00:01" do
    berlin_clock.setTime "00:00:01"
    expect berlin_clock.display.should eq "O OOOO OOOO OOOOOOOOOOO OOOO"
  end

  it "should return Y OOOO OOOO OOOOOOOOOOO YOOO when input is 00:01:00" do
    berlin_clock.setTime "00:01:00"
    expect berlin_clock.display.should eq "Y OOOO OOOO OOOOOOOOOOO YOOO"
  end

  it "should return Y OOOO OOOO OOOOOOOOOOO YYYY when input is 00:04:00" do
    berlin_clock.setTime "00:04:00"
    expect berlin_clock.display.should eq "Y OOOO OOOO OOOOOOOOOOO YYYY"
  end
  
  it "should return Y OOOO OOOO OOOOOOOOOOO YYOO when input is 00:02:00" do
    berlin_clock.setTime "00:02:00"
    expect berlin_clock.display.should eq "Y OOOO OOOO OOOOOOOOOOO YYOO"
  end

  it "should return Y OOOO OOOO YOOOOOOOOOO OOOO when input is 00:05:00" do
    berlin_clock.setTime "00:05:00"
    expect berlin_clock.display.should eq "Y OOOO OOOO YOOOOOOOOOO OOOO"
  end

  it "should return Y OOOO OOOO YOOOOOOOOOO YYOO when input is 00:07:00" do
    berlin_clock.setTime "00:07:00"
    expect berlin_clock.display.should eq "Y OOOO OOOO YOOOOOOOOOO YYOO"
  end

  it "should return Y OOOO OOOO YYOOOOOOOOO OOOO when input is 00:10:00" do
    berlin_clock.setTime "00:10:00"
    expect berlin_clock.display.should eq "Y OOOO OOOO YYOOOOOOOOO OOOO"
  end

  it "should return Y OOOO OOOO YYROOOOOOOO OOOO when input is 00:15:00" do
    berlin_clock.setTime "00:15:00"
    expect berlin_clock.display.should eq "Y OOOO OOOO YYROOOOOOOO OOOO"
  end
  
  it "should return Y OOOO OOOO YYROOOOOOOO YYOO when input is 00:17:00" do
    berlin_clock.setTime "00:17:00"
    expect berlin_clock.display.should eq "Y OOOO OOOO YYROOOOOOOO YYOO"
  end
  
  it "should return Y OOOO OOOO YYRYYROOOOO OOOO when input is 00:37:00" do
    berlin_clock.setTime "00:37:00"
    expect berlin_clock.display.should eq "Y OOOO OOOO YYRYYRYOOOO YYOO"
  end
  
  it "should return Y OOOO YOOO YYRYYROOOOO OOOO when input is 01:37:00" do
    berlin_clock.setTime "01:37:00"
    expect berlin_clock.display.should eq "Y OOOO YOOO YYRYYRYOOOO YYOO"
  end

  it "should return Y YOOO OOOO OOOOOOOOOOO OOOO when input is 05:00:00" do
    berlin_clock.setTime "05:00:00"
    expect berlin_clock.display.should eq "Y YOOO OOOO OOOOOOOOOOO OOOO"
  end

  it "should return O YYYY YYYO YYRYYRYYRYY YYYY when input is 23:59:59" do
    berlin_clock.setTime "23:59:59"
    expect berlin_clock.display.should eq "O YYYY YYYO YYRYYRYYRYY YYYY"
  end
end
