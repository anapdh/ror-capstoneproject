module ApplicationHelper
  def define_page(user = nil)
    if user
      render 'users/user_info'
    else 
      render 'users/who_to_follow'
    end
  end
end
