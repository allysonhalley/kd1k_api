class Address
  include Mongoid::Document
  include Mongoid::Timestamps
  field :cep, type: String
  field :street, type: String
  field :number, type: String
  field :neighborhood, type: String
  field :city, type: String
  field :state, type: String
  field :country, type: String
  field :complement, type: String

  belongs_to :person
end
