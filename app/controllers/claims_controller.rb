class ClaimsController < ApplicationController
  def index
    # @claims = Claim.order(created_at: :desc)
    # @claim = Claim.new
  end
  
  def create
    @claim = Claim.new(
      content: params[:claim][:content],
      company: Company.find(params[:company_id]),
      user: current_user
    )
    @claim.save
    respond_to :js
  end
end
