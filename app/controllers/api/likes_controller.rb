module Api
  class LikesController < ApplicationController
    def index
      @likes = Like.all
    end
  end
end