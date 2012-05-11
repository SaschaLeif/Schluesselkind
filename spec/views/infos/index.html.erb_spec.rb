require 'spec_helper'

describe "infos/index" do
  before(:each) do
    assign(:infos, [
      stub_model(Info),
      stub_model(Info)
    ])
  end

  it "renders a list of infos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
