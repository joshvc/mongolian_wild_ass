require 'spec_helper'

describe "events/show" do
  before(:each) do
    @event = assign(:event, stub_model(Event,
      :name => "Name",
      :description => "MyText",
      :early_price => 1,
      :regular_price => 2,
      :late_price => 3,
      :tbd_info => "Tbd Info",
      :distance => "Distance"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/Tbd Info/)
    rendered.should match(/Distance/)
  end
end
