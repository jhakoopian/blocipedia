class User < ActiveRecord::Base
  has_many :wikis

  before_save { self.role ||= :standard }

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  enum role: [:standard, :premium, :admin]
end
