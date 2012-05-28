require 'spec_helper'

describe "prints/index" do
  before(:each) do
    assign(:prints, [
      stub_model(Print,
        :name => "Name"
      ),
      stub_model(Print,
        :name => "Name"
      )
    ])
  end

  it "renders a list of prints" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
