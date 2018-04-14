class User < ActiveRecord::Base
    enum status: [:active, :suspended]
    
    validates :email, format: /\A.+@.+\..+\z/
end
