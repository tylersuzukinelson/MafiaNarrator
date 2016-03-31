class Role < ActiveRecord::Base
  belongs_to :type
  has_many :user_roles
  has_many :users, through: :user_roles
  has_many :games, through: :user_roles
end
