class ApiController < ApplicationController

  def index
    render :json => {pan: 0, tilt: 0, wheels: {right: 0, left: 0}, launcher: {fire: true}}
  end

end
