class KidSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name
end
