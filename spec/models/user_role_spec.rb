require 'rails_helper'

describe UserRole do
  it { is_expected.to belong_to(:user) }
  it { is_expected.to belong_to(:role) }
  it { is_expected.to belong_to(:game) }
  it { is_expected.to have_many(:targets) }
end
