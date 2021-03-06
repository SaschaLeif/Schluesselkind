require 'spec_helper'

describe "brands/index" do
  before(:each) do
    assign(:brands, [
      stub_model(Brand,
        :name => "Name",
        :origin => "Origin",
        :logo_url => "Logo Url",
        :rating => "08.54"
      ),
      stub_model(Brand,
        :name => "Name",
        :origin => "Origin",
        :logo_url => "Logo Url",
        :rating => "05.45"
      )
    ])
  end

  it "renders a list of brands" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 0
    assert_select "tr>td", :text => "Origin".to_s, :count => 0
    assert_select "tr>td", :text => "Logo Url".to_s, :count => 0
    assert_select "tr>td", :text => "9.99".to_s, :count => 0
  end
end
