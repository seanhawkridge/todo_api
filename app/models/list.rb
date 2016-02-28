
class List

  include DataMapper::Resource

  property :id, Serial
  property :name, Text

  has n, :items, through: Resource

end
