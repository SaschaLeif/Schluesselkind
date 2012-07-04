require 'spec_helper'

describe "producers/show" do
  before(:each) do
    @producer = assign(:producer, stub_model(Producer,
      :brand_id => 1,
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/MyText/)
  end
end
