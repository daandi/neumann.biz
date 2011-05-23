#coding: utf-8

require 'rcoins'

module ApplicationHelper
    
    def title_helper
        title = 'Neumann.biz'
        unless @title.nil? then
            title += " | #{@title}"
        end
        title
    end

    def coins_helper(coins_hash)
       raw COinS.new(coins_hash).toHTML
    end
    
    def highlight(source, language)
      CodeRay.scan(source, language.to_sym).div(:css => :class)
    end
    
    def allowed?
        name = params[:name] || session[:name]
        password = params[:password] || session[:password]
        
        user = User.find_by_name(name)
        
        if user && user.password == password 
            return true
            name = params[:name] || session[:name]
            password = params[:password] || session[:password]
        end
        return false
    end
    
    
end
