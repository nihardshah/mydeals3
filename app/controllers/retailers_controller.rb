class RetailersController < ApplicationController
  def index
    @retailers = Retailer.all
  end

  def show
    @retailer = Retailer.find(params[:id])
  end

  def new
    @retailer = Retailer.new
  end

  def create
    @retailer = Retailer.new
    @retailer.retailer = params[:retailer]
    @retailer.url = params[:url]
    @retailer.description = params[:description]

    if @retailer.save
      redirect_to "/retailers", :notice => "Retailer created successfully."
    else
      render 'new'
    end
  end

  def edit
    @retailer = Retailer.find(params[:id])
  end

  def update
    @retailer = Retailer.find(params[:id])

    @retailer.retailer = params[:retailer]
    @retailer.url = params[:url]
    @retailer.description = params[:description]

    if @retailer.save
      redirect_to "/retailers", :notice => "Retailer updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @retailer = Retailer.find(params[:id])

    @retailer.destroy

    redirect_to "/retailers", :notice => "Retailer deleted."
  end
end
