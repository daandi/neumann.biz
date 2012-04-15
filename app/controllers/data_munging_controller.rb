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
    @title = "Data-Munging - CSV"
    @sources = Source.find_all_by_tag("csv", :order => "language")
    @csv_example = File.open("#{Rails.root}/public/data/data_munging/csv_example.csv").read
  end

  def word
    @title = "Data-Munging - Word"
    @sources = Source.find_all_by_tag("word", :order => "language")
  end
  
  def odf
    @title = "Data Munging - Open Document Formats"
    @sources = Source.find_all_by_tag("odf", :order => "language")
  end

  def excel
    @title = "Data Munging - Excel"
    @sources = Source.find_all_by_tag("excel", :order => "language")
  end

  def pdf
    @title = "Data Munging - PDF"
    @sources = Source.find_all_by_tag("pdf", :order => "language")
  end

  def html
    @title = "Data Munging - HTML"
    @sources = Source.find_all_by_tag("html", :order => "language")
  end

  def xml
    @title = "Data Munging - XML"
     @sources = Source.find_all_by_tag("xml", :order => "language")
  end

  def hocr
    @title = "Data Munging - hOCR"
    @hocr_example = File.open("#{Rails.root}/public/data/data_munging/hocr_example.html").read
    @sources = Source.find_all_by_tag("hocr", :order => "language")
  end

  def tei
    @title = "Data Munging - TEI"
    @sources = Source.find_all_by_tag("tei", :order => "language")
    @tei_example =  File.open("#{Rails.root}/public/data/data_munging/tei_example.xml").read
  end
  
  def wikipedia_dump
    @title = "Data Munging - Wikipedia Dumps"
    @sources = Source.find_all_by_tag("wikipedia_dump", :order => "language")
    @wiki_dump_example = File.open("#{Rails.root}/public/data/data_munging/wiki_dump_wiktionairy_auszug.xml").read
    @wiki_markup_example = File.open("#{Rails.root}/public/data/data_munging/wiki_markup_example.txt").read
  end
  
  def json
    @title = "Data Munging - JSON"
    @sources = Source.find_all_by_tag("json", :order => "language")
  end
  
  def abbyy_xml
    @title = "Data Munging - AbbyyXML"
    @sources = Source.find_all_by_tag("abbyy_xml", :order => "language")
    @abbyy_example_xml = File.open("#{Rails.root}/public/data/data_munging/abbyy_short_example.xml").read
  end
  
  def alto_xml
    @title = "Data Munging - Alto XML"
    @sources = Source.find_all_by_tag("alto_xml", :order => "language")
    @alto_example_xml = File.open("#{Rails.root}/public/data/data_munging/alto_xml_short_example.xml").read
  end
  
  def static_data
    @title = "Data Munging - Statische Daten"
  end
  
  def dynamic_data
    @title = "Data Munging - Dymaische Daten"
    @cgi_example =  Source.find(89).code
  end
  
  def webframeworks
    @title = "Data Munging - Webframeworks"
    @sinatra_example =  Source.find(90).code
  end
  
  def rest
    @title = "Data Munging - REST"
  end
  
  def soap
     @title = "Data Munging - SOAP"
  end
  
  def tika
    @title = "Data Munging - Arbeiten mit TIKA"
    @tika_example =  Source.find(91).code
    @tika_example_spec =  Source.find(92).code
  end

end
