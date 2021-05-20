class ChoreSerializer
  include FastJsonapi::ObjectSerializer
  belongs_to :kid
  attributes :id, :title, :kid_id, :kid_name
end
