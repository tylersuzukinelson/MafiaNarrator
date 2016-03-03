class UserRole < ActiveRecord::Base
  belongs_to :user
  belongs_to :role
  belongs_to :game
  has_many :targets
end
