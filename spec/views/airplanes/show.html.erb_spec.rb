require 'spec_helper'

describe "airplanes/show" do
  before(:each) do
    @airplane = assign(:airplane, stub_model(Airplane,
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
