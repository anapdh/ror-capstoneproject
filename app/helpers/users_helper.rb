module UsersHelper
  def display_follow_btn(_user)
    out = ''
    return unless @user.id != current_user.id

    out += if current_user.followees.include?(@user)
             "<h5 class='btn'> #{button_to 'Unfollow', unfollow_path, method: 'POST'} </h5>"
           else
             "<h5 class='btn'>#{button_to 'Follow', follow_path, method: 'POST'}</h5>"
           end
    out.html_safe
  end

  def display_followers(user)
    out = ''
    if user.followers.exists?
      out += '<h5>Followed by:</h5><ul>'
      user.followers.each do |f|
        out += "<li>@#{f.username}</li>"
      end
      out += '</ul>'
    end
    out.html_safe
  end
end
