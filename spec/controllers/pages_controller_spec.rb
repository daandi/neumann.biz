require 'spec_helper'

describe PagesController do

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
  end

  describe "GET 'cv'" do
    it "should be successful" do
      get 'cv'
      response.should be_success
    end
  end

  describe "GET 'studium'" do
    it "should be successful" do
      get 'studium'
      response.should be_success
    end
  end

  describe "GET 'projekte'" do
    it "should be successful" do
      get 'projekte'
      response.should be_success
    end
  end

  describe "GET 'puplikationen'" do
    it "should be successful" do
      get 'puplikationen'
      response.should be_success
    end
  end

  describe "GET 'vortraege'" do
    it "should be successful" do
      get 'vortraege'
      response.should be_success
    end
  end

  describe "GET 'links'" do
    it "should be successful" do
      get 'links'
      response.should be_success
    end
  end

end
