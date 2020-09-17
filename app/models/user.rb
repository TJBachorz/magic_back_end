class User < ApplicationRecord
    has_many :likes
    has_many :magic_cards, through: :likes
    has_secure_password

    validates :username, :email, presence: {message: "%{attribute} cannot be blank."}
    validates :username, uniqueness: {message: "%{attribute} must be unique, %{value} has already been used."}
    validates :username, length: {minimum: 6, maximum: 14, message: "%{attribute}'s length must be between 6 and 14 characters."}
    validates :password, length: {minimum: 6, maximum: 14, message: "%{attribute}'s length must be between 6 and 14 characters."}
end
