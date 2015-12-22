class PhotosController < ApplicationController
  
  def index
    data = Adapters::InstagramClient.new
    founders_photos = data.find_photos('soulfounders')
    soulcycle_photos = data.find_photos('soulcycle')
    @photos = soulcycle_photos.concat(founders_photos)
  end

end