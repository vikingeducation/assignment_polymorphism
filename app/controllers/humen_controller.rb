class HumenController < ApplicationController
  def index
    @humen = Human.all
  end
end
