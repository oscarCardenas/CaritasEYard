class AssistanceList < ActiveRecord::Base
  has_one :volunteer
  has_one :course
end
