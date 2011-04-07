#coding : utf-8
class PagesController < ApplicationController
  def home
      @title = "Home"
  end

  def cv
      @title = "Lebenslauf"
  end
  
  def lehre
      @title = 'Lehre'
  end

  def studium
      @title = 'Studium'
  end

  def projekte
      @title = 'Projekte'
  end

  def publikationen
      @title = 'Publikationen'
  end

  def vortraege
      @title = 'Vorträge'
  end
  
  def forschung
  	@title = 'Forschung'
  end

  def links
      @title = 'Links'
  end
  
  def data
    head :moved_permanently, :location => "cv"
  end

end
