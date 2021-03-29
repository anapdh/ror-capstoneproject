module ApplicationHelper
  def define_page(user = nil)
    if user&.id
      render 'users/user_info'
    else
      render 'users/who_to_follow'
    end
  end

  def display_photo(user = nil)
    if user.nil? || user.photo.nil? || !user.photo.attached?
      'default-profile-img.png'
    else
      user.photo.attached?
      user.photo
    end
  end

  def display_cover(user = nil)
    if user.nil? || !user.coverimage.attached?
      'default-cover-img.jpg'
    else
      user.coverimage.attached?
      user.coverimage
    end
  end
end
