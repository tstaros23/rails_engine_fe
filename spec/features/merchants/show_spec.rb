require 'rails_helper'

RSpec.describe 'merchant show page', :vcr do
  it 'can show the merchants name on the show page', :vcr do
    merchants = MerchantFacade.create_merchants

    visit "/merchants/1"

  #   expect(page).to have_content("Merchants")
  #
  #   merchants.each do |merchant|
  #    expect(page).to have_content(merchant.name)
  #    click_on(merchant.name)
  #    expect(current_path).to eq("/merchants/#{merchant.merchant_id}")
  #    visit '/merchants'
  #   end
  end
end
