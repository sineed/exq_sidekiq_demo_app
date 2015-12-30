class JobsController < ApplicationController
  def create
    permitted_params = params.require(:job).permit(:id, :title, :value)
    JobWorker.perform_async(permitted_params)

    render text: "OK", status: 200
  end
end
