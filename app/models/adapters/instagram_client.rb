module Adapters
  class InstagramClient

    def connection
      @connection = Adapters::DataConnection.new
    end

    def find_photos(user_name)
      url = "https://www.instagram.com/#{user_name}/media/"
      data = connection.query(url)
      photos = find_image_urls(data)
    end

    def find_image_urls(data)
      data['items'].map do | photo_data |
        photo_data['images']['thumbnail']['url']
      end
    end

  end
end