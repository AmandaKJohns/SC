class PhotosController < ApplicationController
  
  def index
    data = Adapters::InstagramClient.new
    founders_photos = data.find_photos('soulfounders', 'thumbnail')
    soulcycle_photos = data.find_photos('soulcycle', 'thumbnail')
    instructor1_photos = data.find_photos('eleyna.gomez', 'thumbnail')
    instructor2_photos = data.find_photos('paleoviking', 'thumbnail')
    @photos = soulcycle_photos.concat(founders_photos).concat(instructor1_photos).concat(instructor2_photos)
  end

  def soulcycle
    data = Adapters::InstagramClient.new
    @photos = data.find_photos('soulcycle', 'thumbnail')
  end

  def founders
    data = Adapters::InstagramClient.new
    @photos = data.find_photos('soulfounders', 'thumbnail')
  end

  def instructors
    data = Adapters::InstagramClient.new
    instructor_1 = data.find_photos('eleyna.gomez', 'thumbnail')
    instructor_2 = data.find_photos('paleoviking', 'thumbnail')
    @photos = instructor_1.concat(instructor_2)
  end

end