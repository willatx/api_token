class Token < ApplicationRecord
  belongs_to :company

  def generate_api_token
    loop do
      token = SecureRandom.base64.tr('+/=', 'Qrt')
      break token unless Company.exists?(api_token: token)
    end
  end

  def generate_api_token_exp_date
    10.days.from_now
  end
end
