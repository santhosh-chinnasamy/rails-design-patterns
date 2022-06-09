class UserForm
  include ActiveModel::Model

  attr_accessor :name, :email, :password

  validates :name, presence: true
  validates :email, presence: true
  validates :password, presence: true

  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  def persisted?
    if valid?
      user = User.new(name: name, email: email, password: password)
      user.save
      user
    else
      false
    end
  end

  def self.from_params(params)
    new(name: params[:name], email: params[:email], password: params[:password])
  end
end
