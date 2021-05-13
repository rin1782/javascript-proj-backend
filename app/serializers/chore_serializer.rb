class ChoreSerializer < ActiveModel::Serializer
  attributes :id, :title, :kid_id

  has_one :kid
end
