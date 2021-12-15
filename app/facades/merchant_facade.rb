class MerchantFacade
  def self.create_merchants
    json = MerchantService.merchants_index

    json[:data].map do |data|
      Merchant.new(data)
    end
  end

  def self.create_merchant_items(merchant_id)
    json = MerchantService.merchant_show(merchant_id)

    json[:data].map do |data|
      Item.new(data)
    end
  end
end
