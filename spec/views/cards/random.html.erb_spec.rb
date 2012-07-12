require 'spec_helper'

describe 'cards/random' do
  before(:each) do
    @card = assign(:card, stub_model(Card,
      :side_a => "Neko",
      :side_b => "Cat"
    ))
  end

  it "shows the card" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Neko/)
    rendered.should match(/Cat/)
  end

  it "has the 'Next' link" do
    render
    rendered.should match(/Next/)
  end
end
