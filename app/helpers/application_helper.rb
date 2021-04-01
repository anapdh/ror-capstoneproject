module ApplicationHelper
  def define_page(user = nil)
    if user_signed_in?
      out = ''
      out += '<div class="col-xs-3"><div class="panel panel-default"><div class="panel-body">'
      out += if user&.id
               render 'users/user_info'
             else
               render 'users/who_to_follow'
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

  def display_functional_navigation(_user)
    out = ''
    out +=
      if user_signed_in?
        out += "<li class='nav-link'>#{link_to(current_user.username, users_show_path(current_user))}</li>"
        out += "<li class='nav-link'>#{link_to('New Opinion', new_opinion_path)}</li>"
        out += "<li class='nav-link'>#{link_to('Logout', destroy_user_session_path, method: 'delete',
                                                                                    id: 'logout_btn')}</li>"
      else
        out += "<li class='nav-link'>#{link_to('Login', new_user_session_path)}</li>"
        out += "<li class='nav-link'>#{link_to('Sign up', new_user_registration_path)}</li>"
      end
    out.html_safe
  end

  def display_user_sidebar
    out = ''
    out += "<h3>#{link_to('Profile', users_show_path(current_user))}</h3>"
    out += "<strong>@#{current_user.username}<br/></strong>"
    out += "#{current_user.email}<br/><br>"
    out += link_to('Account Settings', edit_user_registration_path).to_s
    out.html_safe
  end

  def display_ocult_sidebar
    out = ''
    if user_signed_in?
      out += "<li>#{link_to('New Opinion', new_opinion_path)}</li>"
      out += "<li>#{link_to('Logout', destroy_user_session_path, method: 'delete')}</li>"
    end
    out.html_safe
  end

  def like_or_dislike_btn(opinion, like)
    like2 = current_user.liked(opinion, current_user)
    if like2
      render 'dislike_btn', like: like2
    else
      render 'like_btn', opinion: opinion, like: like
    end
  end
end