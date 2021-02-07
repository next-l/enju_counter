module EnjuCounter
  module ReportType
    extend ActiveSupport::Concern

    included do
      has_one :report, as: :report, touch: true
    end
  end
end

