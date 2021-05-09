class Chore < ApplicationRecord
    belongs_to :kid

    def self.arr_to_json
      self.all.map do |chore|
        chore.instance_to_json
      end
    end

    def instance_to_json
      {
        id: self.id,
        name: self.name,
        kid: {
          id: self.kid.id,
          name: self.kid.name
        }
      }
    end
end