class RecordsController < ApplicationController
  def index
    render json: { records: RecordSerializer.new(Record.all) }, status: 200
  end
end
