class User < ActiveRecord::Base
  has_secure_password
  has_many :likes
  has_many :liked_comedians, through: :likes, source: 'comedian'
  validates_presence_of :password
  validates_confirmation_of :password

  def self.create_anonymous!
    User.create(password: SecureRandom.uuid)
  end

  def anonymous?
    email.nil? && persisted?
  end

  def suggested_comedians
    list = []
    liked_comedians.each do |comedian|
      comedian.similar_comedians.each do |comedian|
        list << comedian unless liked_comedians.include? comedian
      end
    end
    counts = list.each_with_object(Hash.new(0)) { |list,counts| counts[list] += 1 }
    sorted = counts.sort_by { |_,count| -count }.to_h
    sorted.map { |comedian,_| comedian }
  end
end
