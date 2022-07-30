class UserChallengeRecordsController < ApplicationController
  # add the user challenge controller to the profile
  # the model & controller? - diff?
  def create
    @user_challenge = UserChallenge.find(params[:user_challenge_id])
    @user_challenge_record = UserChallengeRecord.new(user_challenge_record_params)
    @date = Time.current.in_time_zone('Beijing').to_date
    authorize @user_challenge_record
    if @user_challenge_record.save!
      redirect_to profile_path
    end
  end

  private

  def user_challenge_record_params
    params.require(:user_challenge_record).permit(:user_challenge_id, :date)
  end
end
