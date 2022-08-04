class ReferencesController < ApplicationController
  def index
    @references = Reference.all
    @reference = policy_scope(Reference).order(created_at: :desc)
  end
end
