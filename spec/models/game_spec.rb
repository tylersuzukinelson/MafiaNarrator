require 'rails_helper'

describe Game do
  it { is_expected.to have_many(:user_roles) }
  it { is_expected.to have_many(:users).through(:user_roles) }
  it { is_expected.to have_many(:roles).through(:user_roles) }
end
