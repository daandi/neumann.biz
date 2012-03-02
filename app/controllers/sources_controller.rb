#coding: utf-8
class SourcesController < ApplicationController
    
    before_filter :minimal_security?, :except=> [:index, :show, :download, :vorlesung, :uebung]
  # GET /sources
  # GET /sources.xml
  def index
    @sources = Source.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @sources }
    end
  end

  # GET /sources/1
  # GET /sources/1.xml
  def show
    @source = Source.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @source }
      format.json  { render :json => @source }
    end
  end

  # GET /sources/new
  # GET /sources/new.xml
  def new
    @source = Source.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @source }
    end
  end

  # GET /sources/1/edit
  def edit
    @source = Source.find(params[:id])
  end

  # POST /sources
  # POST /sources.xml
  def create
    @source = Source.new(params[:source])

    respond_to do |format|
      if @source.save
        format.html { redirect_to(@source, :notice => 'Source was successfully created.') }
        format.xml  { render :xml => @source, :status => :created, :location => @source }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @source.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sources/1
  # PUT /sources/1.xml
  def update
    @source = Source.find(params[:id])

    respond_to do |format|
      if @source.update_attributes(params[:source])
        format.html { redirect_to(@source, :notice => 'Source was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @source.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sources/1
  # DELETE /sources/1.xml
  def destroy
    @source = Source.find(params[:id])
    @source.destroy

    respond_to do |format|
      format.html { redirect_to(sources_url) }
      format.xml  { head :ok }
    end
  end
  
  def download
      @source = Source.find(params[:id])
      send_data(@source.code, :filename => "#{@source.title}.#{@source.language}")
  end
  
  def vorlesung
      @id = params[:id]
      @sources = Source.find(:all).select {|s| s.title =~ /Vorlesung #{@id} /}
  end
  
  def uebung 
      @id = params[:id]
      @sources = Source.find(:all).select {|s| s.title =~ /Übung #{@id} /}
  end

  private
  
    def minimal_security?
        
        name = params[:name] || session[:name]
        password = params[:password] || session[:password]
        
        user = User.find_by_name(name)
        
        puts user
        
        unless user && user.password == password 
            flash[:alert] = "Nicht erlaubt."
            redirect_to(sources_url)
        end
        
        session[:name] = name
        session[:password] = password
        
    end 
end
