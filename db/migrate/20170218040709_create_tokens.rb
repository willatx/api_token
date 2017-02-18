class CreateTokens < ActiveRecord::Migration[5.0]
  def change
    create_table :tokens do |t|
      t.belongs_to :company, foreign_key: true
      t.string :api_token
      t.datetime :api_token_expiredate

      t.timestamps
    end
  end
end
