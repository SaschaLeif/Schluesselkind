require 'spec_helper'

describe Brand do
  describe "Brand initialization" do

    it "can be instantiated" do
      Brand.new.should be_an_instance_of(Brand)
    end

    it "can be saved successfully" do
     # Brand.create.should be_persisted
    end

    it "should have an image URL" do
      b = Brand.new
      b.logo_url = "test"
      b.logo_url.should == "test"
    end

    it "should have a image URL of the type .png or .jpg" do
      b = Brand.new
      #b.name = "lala"
      #b.should == "lala"
    end

  end
end
