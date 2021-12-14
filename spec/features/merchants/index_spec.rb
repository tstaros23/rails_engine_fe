require 'rails_helper'

 RSpec.describe 'merchant index page', :vcr do
   it 'can show the merchants name on the index page', :vcr do
     merchants = MerchantFacade.create_merchants

     visit '/merchants'

     expect(page).to have_content("Merchants")

     merchants.each do |merchant|
      within("#merchants-#{merchant.merchant_id}") do
        expect(page).to have_content(merchant.name)
        click_on(merchant.name)
        expect(current_path).to eq("/merchants/#{merchant.merchant_id}")
        visit '/merchants'
      end
     end
   end
 end
