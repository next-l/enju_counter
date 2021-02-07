module EnjuCounter
  class Report < ApplicationRecord
    belongs_to :enju_counter_request
  end
end
