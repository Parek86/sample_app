class StaticPagesController < ApplicationController


  def home
    if logged_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
      @reaction= Reaction.new
    end
  end

  def help
  end

  def about
  end

  def control
  end

  def root
  end

end
