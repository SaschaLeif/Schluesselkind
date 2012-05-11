require 'spec_helper'

describe "infos/show" do
  before(:each) do
    @info = assign(:info, stub_model(Info))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
