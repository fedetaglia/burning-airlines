require 'spec_helper'

describe "ariplanes/index" do
  before(:each) do
    assign(:ariplanes, [
      stub_model(Ariplane,
        :name => "Name",
        :rows => 1,
        :columns => "Columns"
      ),
      stub_model(Ariplane,
        :name => "Name",
        :rows => 1,
        :columns => "Columns"
      )
    ])
  end

  it "renders a list of ariplanes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Columns".to_s, :count => 2
  end
end
