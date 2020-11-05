class Stat < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :position
  belongs_to :batting_order
  belongs_to :kiyou

  belongs_to :user
  has_one :pitcher
  has_one :fielder

end
