class Fielder < ApplicationRecord
  has_one :stat
  belongs_to :total
end
