class ItemsController < ApplicationController
  before_filter :authenticate_user!
  before_action :user_signed_in?, only: [:create, :destroy]
  before_action :correct_user,   only: :destroy
  
  def create
    @item = current_user.items.build(item_params)
    if @item.save
      flash[:success] = "Item created!"
    else
      flash[:danger] = "Item not created."
    end
    
    redirect_to root_url
  end

  def destroy
    @item.destroy
    flash[:success] = "Item deleted"
    redirect_to request.referrer || root_url
  end
  
  private

    def item_params
      params.require(:item).permit(:content, :title)
    end
    
    def correct_user
      @item = current_user.items.find_by(id: params[:id])
      redirect_to root_url if @item.nil?
    end
end
