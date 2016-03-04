require 'rails_helper'

describe Type do
  it { is_expected.to have_many(:roles) }
end
