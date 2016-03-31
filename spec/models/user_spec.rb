require 'rails_helper'

describe User do
  it { is_expected.to have_many(:user_roles) }
  it { is_expected.to have_many(:games).through(:user_roles) }
  it { is_expected.to have_many(:roles).through(:user_roles) }
end
