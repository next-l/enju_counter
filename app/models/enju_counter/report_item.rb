module EnjuCounter
  class ReportItem
    def initialize(result)
      @result = result
    end

    def title
      @result['title']
    end

    def publisher
      @result['publisher']
    end

    def performance
      @result['performance']
    end

    def doi
      @result['item_id'].select{|k, v| k['type'] == 'DOI'}.first['value']
    end

    def proprietary_id
      @result['item_id'].select{|k, v| k['type'] == 'Proprietary_ID'}.first['value']
    end

    def print_issn
      @result['item_id'].select{|k, v| k['type'] == 'Print_ISSN'}.first['value']
    end

    def online_issn
      @result['item_id'].select{|k, v| k['type'] == 'Online_ISSN'}.first['value']
    end
  end
end
