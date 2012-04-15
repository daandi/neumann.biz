class DocumentUnderstandingController < ApplicationController
  def index
     @title = "Logische Dokumentenanalyse"
  end

  def file_formats
     @title = "Logische Dokumentenanalyse - Datenformate"
  end

  def techniques
     @title = "Logische Dokumentenanalyse - Arbeiten mit OCR-Dokumenten - TEchniken und Grundlagen"
  end
end
