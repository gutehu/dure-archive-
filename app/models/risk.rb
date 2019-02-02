class Risk < ApplicationRecord
  belongs_to :work_unit
  has_many :underrisks
end
