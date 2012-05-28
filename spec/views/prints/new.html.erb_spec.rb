require 'spec_helper'

describe "prints/new" do
  before(:each) do
    assign(:print, stub_model(Print,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new print form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => prints_path, :method => "post" do
      assert_select "input#print_name", :name => "print[name]"
    end
  end
end
