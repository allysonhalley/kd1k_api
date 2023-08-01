class Parent
  include Mongoid::Document
  include Mongoid::Timestamps
  field :mother, type: String
  field :father, type: String
  belongs_to :person
end
