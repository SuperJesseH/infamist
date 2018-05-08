class ApplicationController < ActionController::Base
  def index
  end

   def after_sign_in_path_for(resource)
     items_path
   end

end
