require 'spec_helper'

describe "brands/edit" do
  before(:each) do
    @brand = assign(:brand, stub_model(Brand,
      :name => "MyString",
      :origin => "MyString",
      :logo_url => "MyString",
      :rating => "9.99"
    ))
  end

  it "renders the edit brand form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => brands_path(@brand), :method => "post" do
      assert_select "input#brand_name", :name => "brand[name]"
      assert_select "input#brand_origin", :name => "brand[origin]"
      assert_select "input#brand_logo_url", :name => "brand[logo_url]"
      assert_select "input#brand_rating", :name => "brand[rating]"
    end
  end
end
