module OpinionsHelper
  def display_form
    render 'form' if user_signed_in?
  end

  def user_owner?(opinion)
    render 'opinion_owner', opinion: opinion if user_signed_in? && current_user.id == opinion.user_id
  end
end
