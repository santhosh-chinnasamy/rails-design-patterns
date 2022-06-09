class User < ApplicationRecord
  def is_active?
    is_active
  end
end
