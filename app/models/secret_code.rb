class SecretCode < ApplicationRecord
  has_one :user
  def self.generate_code
    SecureRandom.hex(5)
  end
end
