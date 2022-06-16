class Answer
  include Mongoid::Document
  include Mongoid::Timestamps
  field :user_id, type: BSON::ObjectId
  field :answer_ref_id, type: BSON::ObjectId, default: nil
  embedded_in :comment
  embeds_many :likes
end
