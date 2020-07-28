class Api::GroupsController < ApplicationController
  protect_from_forgery

  def index
    @groups = Group.order('updated_at DESC')
  end

  def new
  end

  def show
  end

  def create
    @group = Group.new(group_params)
    if @group.save
      render json: @group
    else
      render json: @group.errors, status: :unprocessable_entity
    end
  end

  def search_group_name
    @group = Group.find(params.permit(:group_id)[:group_id])
    @group.name
  end

  private

  def group_params
    params.fetch(:group, {}).permit(
        :name
    )
  end
end
