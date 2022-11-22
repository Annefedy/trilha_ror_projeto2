class Author < ApplicationRecord
    has_and_belongs_to_many :movies
    validates :name, :year, :email, presence: true
    validates :email, uniqueness: true
end
