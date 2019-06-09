class Tombamento < ActiveRecord::Base
	include Rails.application.routes.url_helpers  
	include Flaggable
	
	def url
    	tombamento_path(self)
  	end
end
