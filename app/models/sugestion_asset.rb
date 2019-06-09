class SugestionAsset < ActiveRecord::Base

belongs_to :geozone

validates :title, presence: true
validates :description, presence: true
validates :title, length: { in: 4..25 }
validates :description, length: { maximum: 25 }

include Rails.application.routes.url_helpers  
include Flaggable
	
def url
    sugestion_asset_path(self)
end

def self.by_geozone(geozone)
   if geozone == 'all'
    where(geozone_id: nil)
   else
    where(geozone_id: geozone.presence)
   end
end

end