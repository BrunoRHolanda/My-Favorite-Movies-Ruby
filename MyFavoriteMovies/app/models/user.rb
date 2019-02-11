class User < ApplicationRecord
    validates :name, :email, :password, :birthday, presence: true
    validates :email, uniqueness: true
end
