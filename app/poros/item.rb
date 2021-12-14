class Item
  attr_reader :name, :item_id
  def initialize(item_hash)
    @name = item_hash[:attributes][:name]
    @item_id = item_hash[:id]
  end
end
