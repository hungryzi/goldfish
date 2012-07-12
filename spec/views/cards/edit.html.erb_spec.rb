require 'spec_helper'

describe "cards/edit" do
  before(:each) do
    @card = assign(:card, stub_model(Card,
      :side_a => "MyText",
      :side_b => "MyText"
    ))
  end

  it "renders the edit card form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => cards_path(@card), :method => "post" do
      assert_select "textarea#card_side_a", :name => "card[side_a]"
      assert_select "textarea#card_side_b", :name => "card[side_b]"
    end
  end
end
