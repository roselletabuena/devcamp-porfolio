class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates_presence_of :name

  def first_name
    begin 
      self.name.split.first
    rescue
  end

  def last_name
    self.name.split.last
  end
end
