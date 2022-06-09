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
    user.update(password_reset_token: SecureRandom.urlsafe_base64)
    user.update(password_reset_sent_at: Time.zone.now)
  end

  def forgot_password_with_service
    user = User.find_by(email: params[:email])
    user_service = UserService.new(user)
    user_service.forgot_password
  end

  def status
    user = User.find_by(email: params[:email])
    user_presenter = UserPresenter.new(user)
    render json: { status: user_presenter.status }
  end
end
