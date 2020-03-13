class PostingsController < ApplicationController

  skip_before_action :verify_authenticity_token

  def index
    body = RetrievePostings.call
    render json: body
  end

  def create
    # taking in a new posting and saving it
    response = JSON.parse(request.raw_post)

    text = response['text']

    parent_id = response['parent_id']

    #render status: 400 unless parent_id.blank? || /[0-9]+/ === parent_id

    parent_id = parent_id&.to_i

    begin
      CreatePosting.call(text, parent_id)
      render plain: 'OK'
    rescue Exception => e
      puts e

      err_resp = {
        err_code: "BAD_PARENT", #TODO constant
        message: "Parent id: #{parent_id} does not exist"
      }

      render status: 400, json: err_resp
    end
  end
end
