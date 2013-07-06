require "csv"

module PostalCode
  def self.find(postal_code)
    match = CSV.read(File.join(File.dirname(__FILE__), "../data/ken_all.csv")).find do |row|
      row[2] == postal_code.tr("-", "")
    end
    match && match[6,3]
  end

  def self.reverse_lookup(address)
    nil
  end
end
