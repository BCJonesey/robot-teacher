class ApiController < ApplicationController

  def index
    render :json => {pan: Rails.cache.read('pan'), tilt: Rails.cache.read('tilt'), wheels: {right: Rails.cache.read('right'), left: Rails.cache.read('left')}, launcher: {fire: Rails.cache.read('fire')}}
  end

  def change
    Rails.cache.write('pan',params["pan"])
    Rails.cache.write('tilt',params["tilt"])
    Rails.cache.write('right',params["right"])
    Rails.cache.write('left',params["left"])
    Rails.cache.write('fire',params["fire"])

    render :text => "ok"
  end

end
