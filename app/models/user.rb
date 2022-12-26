class User < ApplicationRecord
    include ActiveModel::Validations

    has_many :posts
    has_many :comments

    validates :username, presence: true
    validates :username, length: { minimum: 5 }
    

    validates :email, presence: true
    validates :email, length: { minimum: 5 }

end
