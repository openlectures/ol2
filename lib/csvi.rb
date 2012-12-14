class Csvi
  def self.get_csv(url)
    response = Faraday.get(url)
    return response.body
  end
end
