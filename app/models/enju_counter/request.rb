module EnjuCounter
  class Request < ApplicationRecord
    belongs_to :user

    def result
      response.deep_transform_keys { |key| key.to_s.underscore }
    end

    def report_items
      result['report_items']
    end
  end
end
