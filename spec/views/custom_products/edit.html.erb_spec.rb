require 'spec_helper'

describe "custom_products/edit" do
  before(:each) do
    @custom_product = assign(:custom_product, stub_model(CustomProduct,
      :product_id => 1,
      :print_id => 1
    ))
  end

  it "renders the edit custom_product form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => custom_products_path(@custom_product), :method => "post" do
      assert_select "input#custom_product_product_id", :name => "custom_product[product_id]"
      assert_select "input#custom_product_print_id", :name => "custom_product[print_id]"
    end
  end
end
