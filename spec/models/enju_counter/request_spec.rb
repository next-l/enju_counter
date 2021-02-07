require 'rails_helper'

module EnjuCounter
  RSpec.describe Request, type: :model do
    pending "add some examples to (or delete) #{__FILE__}"
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
