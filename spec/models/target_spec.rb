require 'rails_helper'

describe Target do
  it { is_expected.to belong_to(:user) }
  it { is_expected.to belong_to(:user_role) }
end
