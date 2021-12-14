class MerchantFacade
  def self.create_merchants
    json = MerchantService.merchants_index

    json[:data].map do |data|
      Merchant.new(data)
    end
  end
end
