class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :books
  attachment :profile_image, destroy: false
  validates :name, length: {maximum: 20, minimum: 2}, uniqueness: true
  validates :introduction, length: {maximum: 50}

　def self.search_for(content, method)
　   # methodがperfectだったら
    if method == 'perfect'
      # データベースから条件に一致したものを一件or複数とってくる
      User.where(name: content)
      # perfctじゃなかったらforword（前方一致）に移動する
    elsif method == 'forward'
      User.where('name LIKE ?', content + '%')
      # perfctじゃなかったらforword（後方一致）に移動する
    elsif method == 'backward'
      User.where('name LIKE ?', '%' + content)
    else
      # 全く一致しない場合
      User.where('name LIKE ?', '%' + content + '%')
    end
end