class HomesController < ApplicationController
  def index
    @post = Post.all
  end
end
