require 'spec_helper'

describe "Static pages" do

  let(:base_title) {"Bay Area Ski Bus"}

  subject { page }

  describe "Home page" do
    before { visit root_path }

    it_should_behave_like "all static pages"
    it { should have_selector 'title' }
  end
end

