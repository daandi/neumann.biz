#coding : utf-8
class DataMungingController < ApplicationController
  def index
    @title = "Data-Munging"
  end

  def plain_text
     @title = "Data-Munging - Plain-Text"
     @sources = Source.find_all_by_tag("plain-text", :order => "language")
  end
  
  def about
    @title = "Data-Munging Kursbeschreibung"
  end

  def csv
    @sources = Source.find_all_by_tag("csv", :order => "language")
  end

  def word
  end

  def excel
  end

  def pdf
  end

  def html
  end

  def xml
  end

  def hocr
  end

  def open_office
  end
  
  def data_base
  end
  
  def serve_content
  end
  
  def static_data
  end
  
  def dynamic_data
  end
  
  def framworks
  end
  
  def rest
  end

end
