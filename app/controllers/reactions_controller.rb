class ReactionsController < ApplicationController
before_action :logged_in_user, only: [:create]

def create
    @reaction=Reaction.new(params[:reaction])
    @reaction.save
    flash[:success] = "Reaction!!!"
    redirect_to root_url
end

private



end
