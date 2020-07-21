class Api::GroupsController < ApplicationController
  protect_from_forgery

  def index
    @groups = Group.order('updated_at DESC')
  end
end
