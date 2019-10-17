class QuipSerializer < ActiveModel::Serializer
  attributes :id, :author, :mood
  has_one :user
end
