module Adapters
  class InstagramClient

    def connection
      @connection = Adapters::DataConnection.new
    end
  
    def find_photos(user_name, size)
      url = "https://www.instagram.com/#{user_name}/media/"
      data = connection.query(url)
      photos = find_image_urls(data, size)
    end

    def find_image_urls(data, size)
      data['items'].map do | photo_data |
        photo_data['images'][size]['url']
      end

      # x['caption']['text']
    end

  end
end