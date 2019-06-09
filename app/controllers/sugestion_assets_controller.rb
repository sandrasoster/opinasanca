class SugestionAssetsController < ApplicationController
  include FeatureFlags
  include FlagActions
  skip_authorization_check

  before_action :authenticate_user!, except: [:index, :show]

  feature_flag :sugestion_assets
  respond_to :html, :js

  def show  
  load_map 
  end
  def index
  load_map
  end

private

def load_map
    @map_location = MapLocation.new
    @map_location.zoom = 13
    @map_location.latitude = -22.0090183
    @map_location.longitude = -47.8914832
end

end
