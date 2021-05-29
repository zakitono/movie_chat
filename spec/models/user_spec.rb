require 'rails_helper'

RSpec.describe User, type: :model do
# ユーザー名、メール、パスワードがあれば有効な状態であること
  it "is valid with a username, email, and password" do
    user = User.new(
      username: "craft",
      email: "tester@example.com",
      password:   "dottle-nouveau-pavilion-tights-furze",
    )
    expect(user).to be_valid
  end
  # ユーザー名がなければ無効な状態であること
  it "is invalid without a username" do
    user = User.new(username: nil)
    user.valid?
    expect(user.errors[:username]).to include("を入力してください")
  end
  # メールアドレスがなければ無効な状態であること
  it "is invalid without an email address" do
    user = User.new(email: nil)
    user.valid?
    expect(user.errors[:email]).to include("を入力してください")
  end
  # 重複したメールアドレスなら無効な状態であること
  it "is invalid with a duplicate email address" do
    User.create(
      username: "tono",
      email: "tester@example.com",
      password:   "dottle-nouveau-pavilion-tights-furze",
    )
    user = User.new(
      username: "zaki",
      email: "tester@example.com",
      password:   "dottle-nouveau-pavilion-tights-furze",
    )
    user.valid?
    expect(user.errors[:email]).to include("はすでに存在します")
  end
  # 映画のタイトルが５１文字以上の場合は登録できないこと
  it "Cannot register if the movie title_a name is 51 characters or more" do
    user = User.new(movie_a: "a" * 51)
    expect(user.invalid?).to be true
  end
  # 映画のタイトルが５１文字以上の場合は登録できないこと
  it "Cannot register if the movie title_b name is 51 characters or more" do
    user = User.new(movie_b: "a" * 51)
    expect(user.invalid?).to be true
  end
  # 映画のタイトルが５１文字以上の場合は登録できないこと
  it "Cannot register if the movie title_c name is 51 characters or more" do
    user = User.new(movie_c: "a" * 51)
    expect(user.invalid?).to be true
  end
end
