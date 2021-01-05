class UserGroup < ApplicationRecord
    has_many :users, dependent: :destroy
end
