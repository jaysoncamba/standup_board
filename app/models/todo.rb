class Todo < ActiveRecord::Base
  validates_presence_of :title
  validates_numericality_of :status
  validates :ticket, numericality: true,
            presence: true, allow_blank: true # needed otherwise it'll try to validate a nil value
  validates :ticket_url, :format => URI::regexp(%w(http https)), allow_blank: true
  validates :pull_request, :format => URI::regexp(%w(http https)), allow_blank: true
      
end
