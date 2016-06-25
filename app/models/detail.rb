class Detail < ActiveRecord::Base
  belongs_to :team
  belongs_to :type
  belongs_to :match
end
