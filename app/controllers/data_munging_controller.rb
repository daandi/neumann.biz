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
  
  def odf
      @sources = Source.find_all_by_tag("odf", :order => "language")
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
    @tei_example_xml = Source.find_by_tag("tei_xml_example")
  end
  
  def wikipedia_dump
    @sources = Source.find_all_by_tag("wikipedia_dump", :order => "language")
  end
  
  def json
     @sources = Source.find_all_by_tag("json", :order => "language")
  end
  
  def abbyy_xml
     @sources = Source.find_all_by_tag("abbyy_xml", :order => "language")
  end
  
  def alto_xml
     @sources = Source.find_all_by_tag("alto_xml", :order => "language")
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
  
  def soap
  end

end
