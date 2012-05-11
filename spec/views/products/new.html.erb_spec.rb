require 'spec_helper'

describe "products/new" do
  before(:each) do
    assign(:product, stub_model(Product,
      :brand_id => 1,
      :info_id => 1,
      :info_text => "MyText"
    ).as_new_record)
  end

  it "renders new product form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => products_path, :method => "post" do
      assert_select "input#product_brand_id", :name => "product[brand_id]"
      assert_select "input#product_info_id", :name => "product[info_id]"
      assert_select "textarea#product_info_text", :name => "product[info_text]"
    end
  end
end
