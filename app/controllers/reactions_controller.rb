class ReactionsController < ApplicationController
before_action :logged_in_user, only: [:create]

def create
    @reaction= Reaction.new(reaction_params)
    # @reaction= Reaction.new(params[:reaction])
    @reaction.user_id=current_user.id
    @reaction.micropost_id=10
    if @reaction.save
    flash[:success] = "Reaction!!!"
    redirect_to root_url
  else
    flash[:danger] = "No reaction"
    redirect_to root_url
  end
end

private

def reaction_params
  params.require(:reaction).permit(:content,:user_id,:micropost_id)


end

end
