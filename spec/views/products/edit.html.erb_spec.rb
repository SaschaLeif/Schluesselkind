require 'spec_helper'

describe "products/edit" do
  before(:each) do
    @product = assign(:product, stub_model(Product,
      :brand_id => 1,
      :info_id => 1,
      :info_text => "MyText"
    ))
  end

  it "renders the edit product form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => products_path(@product), :method => "post" do
      assert_select "input#product_brand_id", :name => "product[brand_id]"
      assert_select "input#product_info_id", :name => "product[info_id]"
      assert_select "textarea#product_info_text", :name => "product[info_text]"
    end
  end
end
