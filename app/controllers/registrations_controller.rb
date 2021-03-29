class RegistrationsController < Devise::RegistrationsController
  private

  def signed_up_params
    params.require(:user).permit(:username, :fullname, :photo, :coverimage, :email, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:username, :fullname, :photo, :coverimage, :email, :password, :password_confirmation,
                                 :current_password)
  end
end
