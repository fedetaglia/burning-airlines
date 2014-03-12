require 'spec_helper'

describe "airplanes/new" do
  before(:each) do
    assign(:airplane, stub_model(Airplane,
      :name => "MyString",
      :rows => 1,
      :columns => "MyString"
    ).as_new_record)
  end

  it "renders new airplane form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", airplanes_path, "post" do
      assert_select "input#airplane_name[name=?]", "airplane[name]"
      assert_select "input#airplane_rows[name=?]", "airplane[rows]"
      assert_select "input#airplane_columns[name=?]", "airplane[columns]"
    end
  end
end
