class TombamentosController < ApplicationController
  include FeatureFlags
  include FlagActions

  feature_flag :tombamentos

  skip_authorization_check
  #load_and_authorize_resource

  respond_to :html, :js

  def index    
     
  end
  def show 
  end

  #def tombamento_params
      # params.require(:debate).permit(:title, :description)
  #end

end
