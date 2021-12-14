class MerchantService
  def self.merchants_index
    merchants = get_data("merchants")
  end

  private
  def self.get_data(endpoint)
    conn = Faraday.new(url: "http://localhost:3000/api/v1/")
    response = conn.get(endpoint)
    data = response.body
    json = JSON.parse(data, symbolize_names: true)
  end
end
