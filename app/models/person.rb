class Person
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  field :cpf, type: String
  field :rg, type: String
  field :birthday, type: Date
  field :place_birth, type: String
  field :nationality, type: String
  field :gender, type: String
  field :email, type: String

  has_many :address, dependent: :destroy
end
