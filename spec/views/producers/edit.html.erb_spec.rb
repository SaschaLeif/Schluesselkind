require 'spec_helper'

describe "producers/edit" do
  before(:each) do
    @producer = assign(:producer, stub_model(Producer,
      :brand_id => 1,
      :description => "MyText"
    ))
  end

  it "renders the edit producer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => producers_path(@producer), :method => "post" do
      assert_select "input#producer_brand_id", :name => "producer[brand_id]"
      assert_select "textarea#producer_description", :name => "producer[description]"
    end
  end
end
