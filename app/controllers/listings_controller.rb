class ListingsController < ApplicationController
  def index
    @listings = Listing.all
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)
    if @listing.save
      redirect_to listings_index_path
    else
      render "new"
    end
  end

  def edit
    @listing = set_listing
  end

  def update
    @listing = set_listing
    if @listing.update(listing_params)
      redirect_to listing_path(@listing), notice: "Listing updated"
    else
      render "edit"
    end
  end

  def show
    @listing = set_listing
  end

  def destroy
    @listing = set_listing
    @listing.destroy
    redirect_to listings_path
  end

  private

  def set_listing
    Listing.find(params[:id])
  end

  def listing_params
    params.require(:listing).permit(:title, :description, :estimated_hours, :skill_ids => [])
  end

  end
