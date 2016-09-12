class Search < OpenStruct

  def self.service
    @@service ||= NRELService.new
  end

  


end
