class ReactionsController < ApplicationController
before_action :logged_in_user, only: [:create]

def create
    @micropost = Micropost.find_by(params[:micropost_id])
    @reaction = @micropost.reaction.build(reaction_params)
    @reaction.user_id = current_user.id
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
  params.require(:reaction).permit(:content)


end

end
