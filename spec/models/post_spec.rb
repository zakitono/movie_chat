require 'rails_helper'

RSpec.describe Post, type: :model do
  # 映画のタイトル名がなければ無効な状態であること
  it "is invalid without a title" do
    post = Post.new(title: nil)
    post.valid?
    expect(post.errors[:title]).to include("を入力してください")
  end
  # 映画のレビューがなければ無効な状態であること
  it "is invalid without an content address" do
    post = Post.new(content: nil)
    post.valid?
    expect(post.errors[:content]).to include("を入力してください")
  end
  # 映画のタイトルが５１文字以上の場合は登録できないこと
  it "Cannot register if the movie title name is 51 characters or more" do
    post = Post.new(title: "a" * 51)
    expect(post.invalid?).to be true
  end
  # 映画のレビューが14１文字以上の場合は登録できないこと
  it "Cannot register if the movie content is 141 characters or more" do
    post = Post.new(content: "a" * 141)
    expect(post.invalid?).to be true
  end
end
