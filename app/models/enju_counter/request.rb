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

# == Schema Information
#
# Table name: enju_counter_requests
#
#  id           :uuid             not null, primary key
#  user_id      :bigint           not null
#  response     :json             not null
#  request_type :string
#  request_id   :uuid
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
