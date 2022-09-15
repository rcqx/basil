class GroupsController < ApplicationController
  def new
    @icons = Group.icons
  end

  def create
    new_group = Group.new(group_params)
    new_group.user = current_user
    if new_group.save
      flash[:success] = 'You successfully added a group item'
      redirect_to groups_path
    else
      flash.now[:error] = 'Error: You could not create a group'
      render :new
    end
  end

  def destroy; end

  def index
    @groups = Group.all
  end

  def show; end

  def log_out; end

  private

  def group_params
    params.require(:add_group).permit(:name, :icon)
  end
end
