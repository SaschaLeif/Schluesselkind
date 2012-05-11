require 'spec_helper'

describe "brands/show" do
  before(:each) do
    @brand = assign(:brand, stub_model(Brand,
      :name => "Name",
      :origin => "Origin",
      :logo_url => "Logo Url",
      :rating => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Origin/)
    rendered.should match(/Logo Url/)
    rendered.should match(/9.99/)
  end
end
