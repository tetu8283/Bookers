class Book < ApplicationRecord
    # バリデーション設定
  validates :title, presence: true
  validates :body, presence: true
end
