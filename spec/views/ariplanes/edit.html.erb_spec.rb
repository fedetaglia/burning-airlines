require 'spec_helper'

describe "ariplanes/edit" do
  before(:each) do
    @ariplane = assign(:ariplane, stub_model(Ariplane,
      :name => "MyString",
      :rows => 1,
      :columns => "MyString"
    ))
  end

  it "renders the edit ariplane form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", ariplane_path(@ariplane), "post" do
      assert_select "input#ariplane_name[name=?]", "ariplane[name]"
      assert_select "input#ariplane_rows[name=?]", "ariplane[rows]"
      assert_select "input#ariplane_columns[name=?]", "ariplane[columns]"
    end
  end
end
