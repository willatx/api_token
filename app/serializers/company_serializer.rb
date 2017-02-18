class CompanySerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :password
  has_many :tokens
end
