class DealsController < ApplicationController
  def index
    @deals = Deal.all.order("updated_at DESC")
  end

  def show
    @deal = Deal.find(params[:id])
  end

  def new
    @deal = Deal.new
  end

  def create
    @deal = Deal.new
    @deal.name = params[:name]
    @deal.tag_line = params[:tag_line]
    @deal.retailer_id = params[:retailer_id]
    @deal.description = params[:description]
    @deal.tag_id = params[:tag_id]
    @deal.user_id = current_user.id


    if @deal.save
      redirect_to "/deals", :notice => "Deal created successfully."
    else
      render 'new'
    end
  end

  def edit
    @deal = Deal.find(params[:id])
  end

  def update
    @deal = Deal.find(params[:id])

    @deal.name = params[:name]
    @deal.tag_line = params[:tag_line]
    @deal.retailer_id = params[:retailer_id]
    @deal.description = params[:description]
    @deal.tag_id = params[:tag_id]
    @deal.user_id = current_user.id

    if @deal.save
      redirect_to "/deals", :notice => "Deal updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @deal = Deal.find(params[:id])

    @deal.destroy

    redirect_to "/deals", :notice => "Deal deleted."
  end
end
