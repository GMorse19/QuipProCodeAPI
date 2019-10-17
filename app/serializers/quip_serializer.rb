class QuipSerializer < ActiveModel::Serializer
  attributes :id, :author, :mood, :content
  has_one :user
end
