class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :user_challenges
  has_many :user_challenge_records, through: :user_challenges
  has_many :rankingsS
  has_many :challenges, through: :user_challenges
  has_one_attached :photo

  def total_carbon_score
    total = Challenge.all.map do |challenge|
      # no dryer
      # 100 * 5
      next if challenge.carbon_score.nil?
      subtotal = challenge.carbon_score * user_challenges.joins(:user_challenge_records).where(challenge_id: challenge.id).count
    end
    # [0, 100, 400, 500, 0]
    # total = total.sum
    total = total.reject{|x| x.nil?}.sum
  end

end
