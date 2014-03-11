require 'spec_helper'

describe "ariplanes/show" do
  before(:each) do
    @ariplane = assign(:ariplane, stub_model(Ariplane,
      :name => "Name",
      :rows => 1,
      :columns => "Columns"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
    rendered.should match(/Columns/)
  end
end
