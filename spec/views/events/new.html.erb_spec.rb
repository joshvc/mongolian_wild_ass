require 'spec_helper'

describe "events/new" do
  before(:each) do
    assign(:event, stub_model(Event,
      :name => "MyString",
      :description => "MyText",
      :early_price => 1,
      :regular_price => 1,
      :late_price => 1,
      :tbd_info => "MyString",
      :distance => "MyString"
    ).as_new_record)
  end

  it "renders new event form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => events_path, :method => "post" do
      assert_select "input#event_name", :name => "event[name]"
      assert_select "textarea#event_description", :name => "event[description]"
      assert_select "input#event_early_price", :name => "event[early_price]"
      assert_select "input#event_regular_price", :name => "event[regular_price]"
      assert_select "input#event_late_price", :name => "event[late_price]"
      assert_select "input#event_tbd_info", :name => "event[tbd_info]"
      assert_select "input#event_distance", :name => "event[distance]"
    end
  end
end
