class HomeController < ApplicationController
  def index
    if user_signed_in?
      redirect_to home_home_path
    end
  end

  def home
    @groups = Group.all
  end
end
