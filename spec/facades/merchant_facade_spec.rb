require 'rails_helper'

 RSpec.describe 'merchant index page' do
   describe 'list of merchants by name' do
     it "can create isntances of merchants", :vcr do
       merchants = MerchantFacade.create_merchants

       merchants.each do |merchant|
         expect(merchant).to be_an_instance_of(Merchant)
       end
     end
   end
 end
