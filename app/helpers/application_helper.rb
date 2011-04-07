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
    
end
