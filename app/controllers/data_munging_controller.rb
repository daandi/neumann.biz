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
    @csv_example = File.open("#{Rails.root}/public/data/data_munging/csv_example.csv").read
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
    @tei_example =  File.open("#{Rails.root}/public/data/data_munging/tei_example.xml").read
  end
  
  def wikipedia_dump
    @sources = Source.find_all_by_tag("wikipedia_dump", :order => "language")
    @wiki_dump_example = File.open("#{Rails.root}/public/data/data_munging/wiki_dump_wiktionairy_auszug.xml").read
    @wiki_markup_example = File.open("#{Rails.root}/public/data/data_munging/wiki_markup_example.txt").read
  end
  
  def json
     @sources = Source.find_all_by_tag("json", :order => "language")
  end
  
  def abbyy_xml
     @sources = Source.find_all_by_tag("abbyy_xml", :order => "language")
     @abbyy_example_xml = File.open("#{Rails.root}/public/data/data_munging/abbyy_short_example.xml").read
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
  
  def tika
    @example_source = 'package biz.neumann.data_munging

import org.apache.tika.sax.BodyContentHandler
import org.apache.tika.metadata.Metadata
import java.io.{InputStream, File}


/**
 * AN-iT
 *
 * User: Andreas Neumann
 * Mail: andreas.neumann@an-it.com
 * URL: http://www.an-it.com
 * Date: 18.03.12
 * Time: 18:10
 * Package: biz.neumann.data_munging
 */

import org.apache.tika.parser.AutoDetectParser

class TikaExtractor(in : InputStream) {
  private val parser = new AutoDetectParser
  private val contentHandler = new BodyContentHandler
  private val metaData = new Metadata
  parser.parse(in, contentHandler, metaData)

  def getText : String = contentHandler toString
  
  def getMetaData = metaData.names map { metaDataFeature =>  Map(metaDataFeature -> metaData.getValues(metaDataFeature).toList)} reduce(_ ++ _)
}
'
  end

end
