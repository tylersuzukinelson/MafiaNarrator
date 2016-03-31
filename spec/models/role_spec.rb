require 'rails_helper'

describe Role do
  it { is_expected.to belong_to(:type) }
  it { is_expected.to have_many(:user_roles) }
  it { is_expected.to have_many(:users).through(:user_roles) }
  it { is_expected.to have_many(:games).through(:user_roles) }
end
