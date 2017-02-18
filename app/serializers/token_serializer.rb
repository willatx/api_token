class TokenSerializer < ActiveModel::Serializer
  attributes :id, :api_token, :api_token_expiredate
  belongs_to :company
end
