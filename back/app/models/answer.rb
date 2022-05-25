class Answer
  include Mongoid::Document
  include Mongoid::Timestamps
  field :user_id, type: BSON::ObjectId
  field :name, type: String
  field :likes, type: Integer
  field :answer_ref_id, type: BSON::ObjectId
  belongs_to :comment
end
