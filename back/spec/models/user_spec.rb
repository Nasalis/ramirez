require 'rails_helper'

describe User, type: :model do
  it { is_expected.to be_mongoid_document }
  it { is_expected.to have_timestamps }
  it { is_expected.to have_fields(:email, :name, :password) }
  it { is_expected.to validate_uniqueness_of(:email) }
  it { is_expected.to have_index_for(email: 1).with_options(unique: true) }
  # it { is_expected.to accept_nested_attributes_for(:posts) }.case_insensitive.with_message("is already taken") }
  # it { is_expected.to validate_presence_of(:password).on(:create) }
  it { is_expected.to validate_length_of(:name).with_maximum(160).with_minimum(3) }
  # it { is_expected.to validate_length_of(:password).with_maximum(256).with_minimum(8) }

  
end