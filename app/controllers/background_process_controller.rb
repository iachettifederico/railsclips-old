class BackgroundProcessController < ApplicationController
  def index
  end

  def background_process
    render js_flash(params["message"], params["msg_type"])
  end
end
