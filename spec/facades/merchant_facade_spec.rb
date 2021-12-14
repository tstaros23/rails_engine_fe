require 'rails_helper'

 RSpec.describe 'merchant index page' do
   describe 'list of merchants by name' do
     it "can create instances of merchants", :vcr do
       merchants = MerchantFacade.create_merchants

       merchants.each do |merchant|
         expect(merchant).to be_an_instance_of(Merchant)
       end
     end

     it "can create instances of items", :vcr do
       items = MerchantFacade.create_merchant_items

       items.each do |item|
         expect(item).to be_an_instance_of(Item)
       end
     end
   end
 end
