include Mappable

section "Geolocating Investments" do
   {[1,2], [2,3], [3,4]}.each do |i|
      MapLocation.create(latitude: Setting['map_latitude'].to_f + rand(-10..10)/100.to_f,
                         longitude: Setting['map_longitude'].to_f + rand(-10..10)/100.to_f,
                         zoom: Setting['map_zoom'],
                         investment_id: nil)
    end
  end
end