class ApplicationController < ActionController::Base
  protect_from_forgery
  #before_filter :profile_exists? 

  private
  def profile_exists?
    if current_user
      @profile = current_user.profile
      if @profile.nil?
        #redirect_to :controller => :profile, :action => :new, :type => 'Customer'
      end
    end
  end
end
