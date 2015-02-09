class StaticPagesController < ApplicationController
  def home
    if user_signed_in?
      # todo get all question/reponses
    end
  end

  def help
  end
  
  def about
  end
  
  def contact
  end
end
