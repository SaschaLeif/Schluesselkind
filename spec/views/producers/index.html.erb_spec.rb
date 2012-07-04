require 'spec_helper'

describe "producers/index" do
  before(:each) do
    assign(:producers, [
      stub_model(Producer,
        :brand_id => 1,
        :description => "MyText"
      ),
      stub_model(Producer,
        :brand_id => 1,
        :description => "MyText"
      )
    ])
  end

  it "renders a list of producers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
