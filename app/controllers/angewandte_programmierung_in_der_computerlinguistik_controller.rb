class AngewandteProgrammierungInDerComputerlinguistikController < ApplicationController
  def index
  end
  
  def i18n
        @sources = group_code_by_language_for_tag("perlutf8")
  end

  def modules

  end

  def object
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
