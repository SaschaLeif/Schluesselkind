require 'spec_helper'

describe "infos/edit" do
  before(:each) do
    @info = assign(:info, stub_model(Info))
  end

  it "renders the edit info form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => infos_path(@info), :method => "post" do
    end
  end
end
