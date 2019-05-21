class ListingsController < ApplicationController

  def index 
    @listings = Listing.all 
  end 

  def new 
    @listing = Listing.new
  end 

  def create 
    Listing.create(listing_params)
    redirect_to root_path 
  end 

  private 

  def listing_params
    params.require(:address).permit(:description, :price)
  end 

end
