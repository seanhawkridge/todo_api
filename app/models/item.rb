
class Item

  include DataMapper::Resource

  property :id, Serial
  property :description, Text
  property :due_date, Date

  belongs_to :list

end
