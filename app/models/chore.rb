class Chore < ApplicationRecord
  belongs_to :kid


  def self.arr_to_json
      self.all.map do |c|
          c.instance_to_json
      end 
  end 

  def instance_to_json
      { 
          id: self.id,
          title: self.title,
          kid: {
              id: self.kid.id,
              name: self.author.name
           }
       }
  end 


end