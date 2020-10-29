class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true, length: { in: 3..12 }
    validates :email, presence: true
    validates :password, presence: true, format: { with: /\A(?=.{8,})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[[:^alnum:]])/x,  message: "Atleast one capital letter, one small letter, one special character, one number and alteast eight characters are required"}
    has_many :posts, dependent: :destroy
    has_many :comments, dependent: :destroy
end
