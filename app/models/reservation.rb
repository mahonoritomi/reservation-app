class Reservation < ApplicationRecord
  
  with_options presence: true do
    validates :start_time
    validates :end_time
    validates :content
    validates :price

    validates_format_of :phone_number, :with => /\A\d{10,11}\z/, :message => "ハイフンなしの半角数字で入力してください"
    validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i,, :message => "有効なメールアドレスを入力してください"

    with_options format: { with: /\A[\p{katakana} ー－&&[^ -~｡-ﾟ]]+\z/, message: "全角カタカナのみで入力して下さい" } do
      validates :first_name
      validates :family_name
    end
  

  end

end
