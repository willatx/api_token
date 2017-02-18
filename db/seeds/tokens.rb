tokens = []
number_of_tokens = Company.all.length
api_token_expiredate = DateTime.now + 1.year

(1..number_of_tokens).each do |company_id|
  tokens.push({
    api_token: SecureRandom.base64.tr('+/=', 'Qrt'),
    api_token_expiredate: api_token_expiredate,
    company_id: company_id
  })
end

Token.create! tokens
