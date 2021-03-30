module OpinionsHelper
  def user_owner?(opinion)
    if user_signed_in? && current_user.id == opinion.user_id
      render 'opinion_owner', opinion: opinion
    end
  end
end
