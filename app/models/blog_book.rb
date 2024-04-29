class BlogBook < ApplicationRecord
    validates :title,:author,:ratting,:description, presence: true
end
