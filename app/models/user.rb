class User < ActiveRecord::Base
  has_secure_password
  has_many :likes
  has_many :comedians, through: :likes


  def self.create_anonymous!
    uuid = SecureRandom.uuid
    User.create(uuid: uuid, password: uuid)
  end

  def anonymous?
    email.nil? && persisted?
  end

end
