class RelationshipsController < ApplicationController

  def create
    relationship = Relationship.new(relationship_params)
    relationship.follower = current_user

    flash[:error] = "Couldn't Follow" unless relationship.save
    redirect_to root_url
  end

  def destroy
    relationship = Relationship.find(relationship_params)
    user = relationship.followed
    relationship.destroy
    redirect_to user

  end

  def relationship_params
    params.permit(id: [])
    params.require(:relationship).permit(:follower, :followed)

  end
end
