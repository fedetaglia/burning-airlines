require 'spec_helper'

describe "flights/new" do
  before(:each) do
    assign(:flight, stub_model(Flight,
      :number => "",
      :origin => "",
      :destination => "",
      :plane => nil
    ).as_new_record)
  end

  it "renders new flight form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", flights_path, "post" do
      assert_select "input#flight_number[name=?]", "flight[number]"
      assert_select "input#flight_origin[name=?]", "flight[origin]"
      assert_select "input#flight_destination[name=?]", "flight[destination]"
      assert_select "input#flight_plane[name=?]", "flight[plane]"
    end
  end
end
