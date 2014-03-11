require 'spec_helper'

describe "reservations/index" do
  before(:each) do
    assign(:reservations, [
      stub_model(Reservation,
        :flight => "",
        :user => "",
        :row => 1,
        :column => "Column"
      ),
      stub_model(Reservation,
        :flight => "",
        :user => "",
        :row => 1,
        :column => "Column"
      )
    ])
  end

  it "renders a list of reservations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Column".to_s, :count => 2
  end
end
