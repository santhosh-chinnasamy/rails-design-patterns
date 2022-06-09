class UsersController < ApplicationController
  def create
    user_form = UserForm.from_params(params)
    if user_form.save!
      render json: { message: 'User Created Successfully' }, status: :created
    else
      render json:  { message: 'error creating user' }, status: :unprocessable_entity
    end
  end

  def forgot_password_withot_service
    user = User.find_by(email: params[:email])
    unless user
      return render json: { error: 'User not found' },
                    status: :not_found
    end

    user.update(password_reset_token: SecureRandom.urlsafe_base64)
    user.update(password_reset_sent_at: Time.zone.now)
  end

  def forgot_password_with_service
    user = User.find_by(email: params[:email])
    unless user
      return render json: { error: 'User not found' },
                    status: :not_found
    end

    user_service = UserService.new(user)
    user_service.forgot_password
  end
end
