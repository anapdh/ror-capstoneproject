module OpinionsHelper
  def user_owner?(opinion)
    render 'opinion_owner', opinion: opinion if user_signed_in? && current_user.id == opinion.user_id
  end
end
