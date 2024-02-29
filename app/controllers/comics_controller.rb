class ComicsController < ApplicationController
  # skip_before_action
  before_action :set_comic, only: %i[ show edit update destroy ]

  def index
    @comics = Comic.all
    if params[:query].present?
      sql_subquery = "title ILIKE :query OR author ILIKE :query"
      @comics = @comics.where(sql_subquery, query: "%#{params[:query]}%")
    end
  end

  def show
    @booking = Booking.new
  end

  def new
    @comic = Comic.new
  end

  def edit
  end

  def create
    @comic = Comic.new(comic_params)
    @comic.user = current_user
    if @comic.save
      redirect_to @comic, notice: "Comic was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @comic.update(comic_params)
      redirect_to @comic, notice: "Comic was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @comic.destroy!
    redirect_to comics_url, notice: "Comic was successfully destroyed.", status: :see_other
  end

  private
  def set_comic
    @comic = Comic.find(params[:id])
  end

  def comic_params
    params.require(:comic).permit(:title, :author, :genre, :user_id)
  end
end
