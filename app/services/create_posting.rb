class CreatePosting < ApplicationService

  attr_reader :text, :parent_id

  def initialize(text, parent_id=nil)
    @text = text
    @parent_id = parent_id
  end

  def call
    raise "Parent must exist" if @parent_id.present? && Posting.where(id: @parent_id).blank?

    Posting.create(text: @text, parent_id: @parent_id)
  end

end
