require "csv"

module PostalCode
  def self.load_data
    CSV.read(File.join(File.dirname(__FILE__), "../data/ken_all.csv"))
  end
end
