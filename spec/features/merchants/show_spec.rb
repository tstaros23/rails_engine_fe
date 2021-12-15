require 'rails_helper'

RSpec.describe 'merchant show page', :vcr do
  it 'can show the merchants name on the show page', :vcr do

    items = MerchantFacade.create_merchant_items(1)
    visit "/merchants/1"

    items.each do |item|
      expect(page).to have_content(item.item_id)
      expect(page).to have_content(item.name)
    end
  end
end
