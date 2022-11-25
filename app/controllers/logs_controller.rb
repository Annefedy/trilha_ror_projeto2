class LogsController < ApplicationController
 # GET /logs or /logs.json
  def index
    @logs = Log.all
  end
end
