module ApplicationHelper
  def define_page(info, home)
    if current_page?(users_show_path(:id))
      render 'users/user_info'
    else
      render 'users/who_to_follow'
    end
  end
end
