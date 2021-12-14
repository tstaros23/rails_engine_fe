class Merchant
  attr_reader :name, :merchant_id
  #merchant has hidden id in background. So need to specify it

  def initialize(merchant_hash)
    # require "pry"; binding.pry
    @name = merchant_hash[:attributes][:name]
    @merchant_id = merchant_hash[:id]
  end
end
