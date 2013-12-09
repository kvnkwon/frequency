require 'rspec'
require_relative 'word_tracker'

describe WordTracker do
  it 'should return the frequency of each word in a string' do
    tracker = WordTracker.new('Toy boat toy boat toy boat')
    expect(tracker.frequency).to eq({"toy" => 3, "boat" => 3})
  end

end