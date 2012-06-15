require 'spec_helper'

describe "custom_products/show" do
  before(:each) do
    @custom_product = assign(:custom_product, stub_model(CustomProduct,
      :product_id => 1,
      :print_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
