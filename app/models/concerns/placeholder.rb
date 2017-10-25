module Placeholder
  extend ActiveSupport::Concern

  def self.image_generator(height, width = nil)
    "http://via.placeholder.com/#{height}x#{width || height}"
  end
end