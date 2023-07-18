class GroupsController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource

  def index
    @groups = current_user.groups.all
  end

  def show
  end

  def new
  end
end
