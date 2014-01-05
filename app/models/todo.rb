class Todo < ActiveRecord::Base
  validates_presence_of :title
  validates_numericality_of :status
  validates :ticket, numericality: true,
            presence: true, allow_blank: true # needed otherwise it'll try to validate a nil value
end
