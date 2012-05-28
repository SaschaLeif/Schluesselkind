require 'spec_helper'

describe "prints/edit" do
  before(:each) do
    @print = assign(:print, stub_model(Print,
      :name => "MyString"
    ))
  end

  it "renders the edit print form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => prints_path(@print), :method => "post" do
      assert_select "input#print_name", :name => "print[name]"
    end
  end
end
