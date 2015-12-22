class PhotosController < ApplicationController
  
  def index
    data = Adapters::InstagramClient.new
    founders_photos = data.find_photos('soulfounders')
    soulcycle_photos = data.find_photos('soulcycle')
    instructors_photos = data.find_photos('eleyna.gomez')
    @photos = soulcycle_photos.concat(founders_photos).concat(instructors_photos)
  end

  def soulcycle
    data = Adapters::InstagramClient.new
    @photos = data.find_photos('soulcycle')
  end

  def founders
    data = Adapters::InstagramClient.new
    @photos = data.find_photos('soulfounders')
  end

  def instructors
    data = Adapters::InstagramClient.new
    instructor_1 = data.find_photos('eleyna.gomez')
    instructor_2 = data.find_photos('paleoviking')
    @photos = instructor_1.concat(instructor_2)
  end

end