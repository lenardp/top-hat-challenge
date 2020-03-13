class RetrievePostings < ApplicationService

  def call
    # TODO optimize
    Posting.all
  end

end
