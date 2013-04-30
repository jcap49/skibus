require 'spec helper'

describe Trip do

  before { @trip = trips.build(title: "Lorem ipsum") }

  subject { @trip }

  it { should respond_to(:name) }
  it { should respond_to(:departure_date) }
  it { should respond_to(:bus_number) }

  it { should be_valid }


  describe "when trip_id is not present" do
    before { @trip.id = nil }
    it { should_not be_valid }
  end

  describe "with blank name" do
    before { @trip.name = " " }
    it { should_not be_valid }
  end

  describe "with name that is too long" do
    before { @trip.name = "a" * 141 }
    it { should_not be_valid }
  end
end
