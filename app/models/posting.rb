class Posting < ApplicationRecord
  # TODO why this doesn't pull up parent
  belongs_to :parent, class_name: "Posting"

  def to_json
    self.attributes.to_json
  end
end
