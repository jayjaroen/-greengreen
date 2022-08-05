class ReferencesController < ApplicationController
  def index
    @references = Reference.all.order(name: :asc)
    @reference = policy_scope(Reference).order(created_at: :desc)
  end
end
