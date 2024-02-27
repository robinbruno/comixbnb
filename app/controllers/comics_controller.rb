class ComicsController < ApplicationController
  # skip_before_action
  # before_action

  def index
    @comics = Comic.all
  end

  def show
  end

  def new
    @comic = Comic.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private


end
