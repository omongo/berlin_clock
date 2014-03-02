require 'spec_helper'
describe "Berlin Clock" do
  let (:berlin_clock) { BerlinClock.new }
  it "should return 1Y 2OOOO 3OOOO 4OOOOOOOOOOO 5OOOO when input is 00:00:00" do
    berlin_clock.setTime "00:00:00"
    expect berlin_clock.display.should eq "1Y 2OOOO 3OOOO 4OOOOOOOOOOO 5OOOO"
  end
end
