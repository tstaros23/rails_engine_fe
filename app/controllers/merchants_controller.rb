class MerchantsController < ApplicationController
  def index
    @merchants = MerchantFacade.create_merchants
  end

  def show
    @merchant = MerchantFacade.create_merchants.find do |merchant|
      merchant.merchant_id == params[:merchant_id]
    end
    @items = MerchantFacade.create_merchant_items
  end
end
