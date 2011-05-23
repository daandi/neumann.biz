require 'spec_helper'

describe SourcecodeController do

  describe "GET 'index'" do
    it "should be successful" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'C++'" do
    it "should be successful" do
      get 'C++'
      response.should be_success
    end
  end

end
