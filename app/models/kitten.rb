class Kitten < ApplicationRecord

  def as_json(options = {})
    {
      :id => self.id,
      :name => self.name,
      :age => self.age
    }
  end
end
