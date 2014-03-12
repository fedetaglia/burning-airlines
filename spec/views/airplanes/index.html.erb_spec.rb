require 'spec_helper'

describe "airplanes/index" do
  before(:each) do
    assign(:airplanes, [
      stub_model(Airplane,
        :name => "Name",
        :rows => 1,
        :columns => "Columns"
      ),
      stub_model(Airplane,
        :name => "Name",
        :rows => 1,
        :columns => "Columns"
      )
    ])
  end

  it "renders a list of airplanes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Columns".to_s, :count => 2
  end
end
