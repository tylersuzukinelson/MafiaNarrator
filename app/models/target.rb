class Target < ActiveRecord::Base
  belongs_to :user
  belongs_to :user_role
end
