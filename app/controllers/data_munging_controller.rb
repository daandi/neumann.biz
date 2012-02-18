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
    @sources = Source.find_all_by_tag("word", :order => "language")
  end
  
  def ods
      @sources = Source.find_all_by_tag("ods", :order => "language")
  end

  def excel
    @sources = Source.find_all_by_tag("excel", :order => "language")
  end

  def pdf
    @sources = Source.find_all_by_tag("pdf", :order => "language")
  end

  def html
     @sources = Source.find_all_by_tag("html", :order => "language")
  end

  def xml
     @sources = Source.find_all_by_tag("xml", :order => "language")
  end

  def hocr
     @sources = Source.find_all_by_tag("hocr", :order => "language")
  end

  def tei
    @sources = Source.find_all_by_tag("tei", :order => "language")
  end
  
  def wikipedia_dump
    @sources = Source.find_all_by_tag("wikipedia_dump", :order => "language")
  end
  
  def json
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
