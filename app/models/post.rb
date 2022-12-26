class Post < ApplicationRecord
    include ActiveModel::Validations

    belongs_to :user
    has_many :comments

    validates :title, presence: true

    validates :url, presence: true
    validates :url, length: { minimum: 4  }

    validates :user_id, presence: true

end
