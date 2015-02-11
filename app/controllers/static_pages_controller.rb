class StaticPagesController < ApplicationController
  def home
    if user_signed_in?
      @user = current_user
      @item = @user.items.build
      @items = current_user.items.paginate(page: params[:page])
    end
  end

  def help
  end
  
  def about
  end
  
  def contact
  end
end
