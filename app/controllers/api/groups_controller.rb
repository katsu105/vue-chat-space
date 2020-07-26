class Api::GroupsController < ApplicationController
  protect_from_forgery

  def index
    @groups = Group.order('updated_at DESC')
  end

  def new
  end

  def create
    @group = Group.new(group_params)
    if @group.save
      return redirect_to root_path
    else
      render json: @group.errors, status: :unprocessable_entity
    end
  end

  private

  def group_params
    params.fetch(:group, {}).permit(
        :name
    )
  end
end
