module ApplicationHelper
  def define_page(user = nil)
    if user_signed_in?
    out = ''
    out += '<div class="col-xs-3"><div class="panel panel-default"><div class="panel-body">'
      if user&.id
        out += render "users/user_info"
      else
        out += render 'users/who_to_follow'
      end
    out += '</div></div></div>'
    out.html_safe
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
