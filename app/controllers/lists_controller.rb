class ListsController < ApplicationController
  
  before_action :logged_in_user, only: [:create, :destroy]
  before_action :correct_user,   only: :destroy
  
  
  def create
    @list = current_user.lists.build(list_params)
    if @list.save
      flash[:success] = "Grocery List Created!"
      redirect_to root_url
    else
      @feed_items = []
      render 'static_pages/home'
    end
  end

  def destroy
    @list.destroy
    flash[:success] = "Grocery List Deleted"
    redirect_to request.referrer || root_url
  end

  private

    def list_params
      params.require(:list).permit(:content, :picture)
    end

     def correct_user
      @list = current_user.list.find_by(id: params[:id])
      redirect_to root_url if @list.nil?
    end

end
