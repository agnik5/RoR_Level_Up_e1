class User < ActiveRecord::Base
    enum status: [:active, :suspended]
    validates :token, presence: true, length: { minimum: 3 }
    validates :email, format: /\A.+@.+\..+\z/
end
