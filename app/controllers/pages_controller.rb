class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    if user_signed_in?
      redirect_to dashboard_path, flash: { success: "Successfully signed in. Welcome to Property Finder "} and return
    end

    @properties = Property.latest
  end
end
