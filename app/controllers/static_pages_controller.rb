class StaticPagesController < ApplicationController
  
  def home
    @list = current_user.list.build if logged_in?
    @feed_items = current_user.feed.paginate(page: params[:page])
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
