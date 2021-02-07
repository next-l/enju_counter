module EnjuCounter
  module RequestType
    extend ActiveSupport::Concern

    included do
      has_one :request, as: :request, touch: true
    end
  end
end

