class ListingsController < ApplicationController

  def index 
    @listings = Listing.all 
  end 

  def new 
    @listing = Listing.new
  end 

  def create 
    Listing.create
    redirect_to root_path 
  end 

end
