require 'spec_helper'

describe "reservations/show" do
  before(:each) do
    @reservation = assign(:reservation, stub_model(Reservation,
      :flight => "",
      :user => "",
      :row => 1,
      :column => "Column"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/1/)
    rendered.should match(/Column/)
  end
end
