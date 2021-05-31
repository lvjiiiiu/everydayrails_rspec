require 'rails_helper'

RSpec.describe User, type: :model do
  # # 姓、名、メールアドレス、パスワードがあれば有効な状態であること
  # it "is valid with a first name, last name, email, and password" do
  #   user = User.new(
  #     first_name: "Aaron",
  #     last_name: "Sumner",
  #     email: "tester@example.com",
  #     password: "dottle-noubeau-pavilion-tights-furze",
  #   )
  #   expect(user).to be_valid
  # end

  # # 名がなければ無効な状態であること
  # it "is invalid without a first name" do
  #   user = FactoryBot.build(:user, first_name: nil)
  #   user.valid?
  #   expect(user.errors[:first_name]).to include("can't be blank")
  # end

  # # 姓がなければ無効な状態であること
  # it "is invalid without a last name" do
  #   user = FactoryBot.build(:user, last_name: nil)
  #   user.valid?
  #   expect(user.errors[:last_name]).to include("can't be blank")
  # end

  # # メールアドレスがなければ無効な状態であること
  # it "is invalid without an email address" do
  #   user = FactoryBot.build(:user, email: nil)
  #   user.valid?
  #   expect(user.errors[:email]).to include("can't be blank")
  # end

  # # ユーザーのフルネームを文字列として返すこと
  # it "is invalid with a duplicate email address" do
  #   user = FactoryBot.build(:user, first_name: "John", last_name: "Doe")
  #   expect(user.name).to eq "John Doe"
  # end

  # # 重複したメールアドレスなら無効な状態であること
  # it "is invalid with a duplicate email address" do
  #   FactoryBot.create(:user, email: "aaron@example.com")
  #   user = FactoryBot.build(:user, email: "aaron@example.com")
  #   user.valid?
  #   expect(user.errors[:email]).to include("has already been taken")
  # end

  it { is_expected.to validate_presence_of :first_name }
  it { is_expected.to validate_presence_of :last_name }
  it { is_expected.to validate_presence_of :email }
  it { is_expected.to validate_uniqueness_of(:email).case_insensitive }

end
