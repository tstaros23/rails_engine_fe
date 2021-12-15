class MerchantsController < ApplicationController
  def index
    @merchants = MerchantFacade.create_merchants
  end

  def show
    @items = MerchantFacade.create_merchant_items(params[:merchant_id])
  end
end
