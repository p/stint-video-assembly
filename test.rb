load './stint-video-assembly'

require 'rspec'

RSpec.configure do |config|
  config.expect_with(:rspec) do |c|
    c.syntax = :should
  end
end

describe Utils do
  describe :duration_to_length do
    context 'float seconds' do
      it 'converts' do
        Utils.duration_to_length('1.0').should == 1.0
      end
    end
    
    context 'minutes & seconds' do
      it 'converts' do
        Utils.duration_to_length('2:11.0').should == 131.0
      end
    end
    
    context 'hours, minutes & seconds' do
      it 'converts' do
        Utils.duration_to_length('1:02:11.0').should == 3731.0
      end
    end
  end
end
