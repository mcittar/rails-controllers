class UsersController < ApplicationController

  def index
    render text: "I'm in the index action!"
  end

  def show
    render text: "I'm showin' it!"
  end

  def create
    render text: "I'm creating it!"
  end

end
