module ApplicationHelper
  def define_page(user = nil)
    if user && user.id
      render 'users/user_info'
    else 
      render 'users/who_to_follow'
    end
  end

  def display_photo(user = nil)
    if user.nil? || user.photo.nil?
      'default-profile-img.png'
    else user.photo.attached?
      user.photo
    end
  end
end
