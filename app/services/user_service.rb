class UserService
  def initialize(user)
    @user = user
  end

  def forgot_password
    @user.update(password_reset_token: SecureRandom.urlsafe_base64)
    @user.update(password_reset_sent_at: Time.zone.now)
    if @user.save!
      true
    else
      false
    end
  end
end
