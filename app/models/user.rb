class User < ActiveRecord::Base
  has_many :notes
  has_many :viewers
  has_many :readable, through: :viewers, source: :note

  validates :name, presence: true, uniqueness: true
end