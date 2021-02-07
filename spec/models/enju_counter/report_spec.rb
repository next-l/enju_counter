require 'rails_helper'

module EnjuCounter
  RSpec.describe Report, type: :model do
    pending "add some examples to (or delete) #{__FILE__}"
  end
end

# == Schema Information
#
# Table name: enju_counter_reports
#
#  id                      :uuid             not null, primary key
#  enju_counter_request_id :uuid             not null
#  report_type             :string
#  report_id               :uuid
#  response                :jsonb            not null
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#
