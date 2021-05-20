class Chore < ApplicationRecord
    belongs_to :kid

    def kid_name=(name)
      kid = Kid.find_by(name: name)
      self.kid = kid
    end

    def kid_name
      kid.name
    end


end