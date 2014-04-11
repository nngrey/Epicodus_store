require 'spec_helper'

describe User do
  it { should validate_presence_of :email }
  it { should validate_presence_of :password }
  it { should validate_presence_of :password_confirmation}
  it { should have_secure_password }

  it 'should validate the uniqueness of an email' do
    user = build(:user)
    user.save
    expect(user).to validate_uniqueness_of :email
  end
end
