class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :profile
  has_many :payments
  accepts_nested_attributes_for :profile
  accepts_nested_attributes_for :payments

  with_options presence: true do
    validates :nickname
    validates :first_name
    validates :last_name
    validates :first_name_kana
    validates :last_name_kana
    validates :birth_year
    validates :birth_month
    validates :birth_day
    validates :verify_sms
  end

  with_options uniqueness: true do
    validates :nickname
    validates :verify_sms
  end
end
