class PhotosController < ApplicationController
  
  def index
    data = Adapters::InstagramClient.new
    @photos = data.find_photos('soulcycle')
    binding.pry
  end

end