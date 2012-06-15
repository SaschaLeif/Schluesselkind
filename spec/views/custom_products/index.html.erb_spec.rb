require 'spec_helper'

describe "custom_products/index" do
  before(:each) do
    assign(:custom_products, [
      stub_model(CustomProduct,
        :product_id => 1,
        :print_id => 2
      ),
      stub_model(CustomProduct,
        :product_id => 1,
        :print_id => 2
      )
    ])
  end

  it "renders a list of custom_products" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
