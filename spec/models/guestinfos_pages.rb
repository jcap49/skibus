require 'spec helper'

describe Guest Info do

  before { @guest_info = GuestInfo.build(name: "Lorem ipsum") }

  subject { @guest_info }

  it { should respond_to(:first_name) }
  it { should respond_to(:last_name) }
  it { should respond_to(:age) }
  it { should respond_to(:first_time) }
  it { should respond_to(:phoen) }
  it { should respond_to(:ticket) }
  it { should respond_to(:trip) }
  it { should respond_to(:check_in) }
  it { should respond_to(:trip_id) }

  it { should be_valid }


  describe "when trip_id is not present" do
    before { @guest_info.id = nil }
    it { should_not be_valid }
  end

  describe "with blank name" do
    before { @guest_info.name = " " }
    it { should_not be_valid }
  end

  describe "with name that is too long" do
    before { @guest_info.name = "a" * 141 }
    it { should_not be_valid }
  end
end
