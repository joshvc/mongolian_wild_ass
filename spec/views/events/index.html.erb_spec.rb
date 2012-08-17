require 'spec_helper'

describe "events/index" do
  before(:each) do
    assign(:events, [
      stub_model(Event,
        :name => "Name",
        :description => "MyText",
        :early_price => 1,
        :regular_price => 2,
        :late_price => 3,
        :tbd_info => "Tbd Info",
        :distance => "Distance"
      ),
      stub_model(Event,
        :name => "Name",
        :description => "MyText",
        :early_price => 1,
        :regular_price => 2,
        :late_price => 3,
        :tbd_info => "Tbd Info",
        :distance => "Distance"
      )
    ])
  end

  it "renders a list of events" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Tbd Info".to_s, :count => 2
    assert_select "tr>td", :text => "Distance".to_s, :count => 2
  end
end
