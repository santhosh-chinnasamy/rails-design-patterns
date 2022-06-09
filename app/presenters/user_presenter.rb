class UserPresenter
  def initialize(user)
    @user = user
  end

  def status
    @user.is_active? ? 'active' : 'inactive'
  end
end