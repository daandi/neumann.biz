#coding : utf-8
class DataMungingController < ApplicationController
  def index
    @title = "Data-Munging"
  end

  def plain_text
     @title = "Data-Munging - Plain-Text"
     @sources = group_code_by_language_for_tag("plain-text")
  end
  
  def about
    @title = "Data-Munging Kursbeschreibung"
  end

  def csv
    @title = "Data-Munging - CSV"
    @sources = group_code_by_language_for_tag("csv")
    @csv_example = File.open("#{Rails.root}/public/data/data_munging/csv_example.csv").read
    @csv_example_complex = File.open("#{Rails.root}/public/data/data_munging/moreComplex.csv").read
  end

  def word
    @title = "Data-Munging - Word"
    @sources = group_code_by_language_for_tag("word")
  end
  
  def odf
    @title = "Data Munging - Open Document Formats"
    @sources = group_code_by_language_for_tag("odf")
  end

  def excel
    @title = "Data Munging - Excel"
    @sources = Source.group_code_by_language_for_tag("excel")
  end

  def pdf
    @title = "Data Munging - PDF"
    @sources = group_code_by_language_for_tag("pdf")
  end

  def html
    @title = "Data Munging - HTML"
    @sources = group_code_by_language_for_tag("html")
  end

  def xml
    @title = "Data Munging - XML"
     @sources = group_code_by_language_for_tag("xml")
  end

  def hocr
    @title = "Data Munging - hOCR"
    @hocr_example = File.open("#{Rails.root}/public/data/data_munging/hocr_example.html").read
    @sources = group_code_by_language_for_tag("hocr")
  end

  def tei
    @title = "Data Munging - TEI"
    @sources = group_code_by_language_for_tag("tei")
    @tei_example =  File.open("#{Rails.root}/public/data/data_munging/tei_example.xml").read
  end
  
  def wikipedia_dump
    @title = "Data Munging - Wikipedia Dumps"
    @sources = group_code_by_language_for_tag("wikipedia_dump")
    @wiki_dump_example = File.open("#{Rails.root}/public/data/data_munging/wiki_dump_wiktionairy_auszug.xml").read
    @wiki_markup_example = File.open("#{Rails.root}/public/data/data_munging/wiki_markup_example.txt").read
  end
  
  def json
    @title = "Data Munging - JSON"
    @sources =group_code_by_language_for_tag("json")
  end
  
  def abbyy_xml
    @title = "Data Munging - AbbyyXML"
    @sources = group_code_by_language_for_tag("abbyy_xml")
    @abbyy_example_xml = File.open("#{Rails.root}/public/data/data_munging/abbyy_short_example.xml").read
  end
  
  def alto_xml
    @title = "Data Munging - Alto XML"
    @sources = group_code_by_language_for_tag("alto_xml")
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
  
  private
  def group_code_by_language_for_tag(tag)
    source_map = Hash.new
    sources = Source.find_all_by_tag(tag, :order => "language")
    langs = sources.collect {|s| s.language}.uniq
    #Map Aufbauen
    langs.each do |l|
      source_map[l] = []
    end
    
    sources.each do |s|
      source_map[s.language] << s
    end
    source_map 
    
  end
  
  

end
