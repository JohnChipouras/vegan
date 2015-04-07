class StaticPagesController < ApplicationController
  
  def home
    if logged_in?
      @list = current_user.list.build 
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

  def about
  end

  def help
  end
  
  def about
  end
  
  def contact
  end
end
