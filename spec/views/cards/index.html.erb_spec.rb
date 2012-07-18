require 'spec_helper'

describe "cards/index" do
  before(:each) do
    assign(:cards, [
      stub_model(Card,
        :side_a => "Neko",
        :side_b => "Cat"
      ),
      stub_model(Card,
        :side_a => "Neko",
        :side_b => "Cat"
      )
    ])
  end

  it "renders a list of cards" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Neko".to_s, :count => 2
    assert_select "tr>td", :text => "Cat".to_s, :count => 2
  end

end
