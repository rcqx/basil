class GroupsController < ApplicationController
  def new; end

  def create; end

  def destroy; end

  def index
    @groups = Group.all
  end

  def show; end
end
