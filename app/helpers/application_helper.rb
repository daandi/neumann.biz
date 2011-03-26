module ApplicationHelper
    
    def title_helper
        title = 'Neumann.biz'
        unless @title.nil? then
            title += " | #{@title}"
        end
        title
    end
    
end
