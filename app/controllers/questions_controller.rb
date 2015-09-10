class QuestionsController < ApplicationController
  def index
  end

  def create
    @ticket = Ticket.new(ticket_params)
    @user = User.new(first_name: "Guest", last_name: "User")
    @user.save!(:validate => false)

    @ticket.user_id = @user.id
    @ticket.save!

    session[:guest_user_id] = @user.id

    if current_user == nil
      current_user = @user
    end

    redirect_to root_path
  end

  private

  def ticket_params
    params.require(:ticket).permit(:subject, :body, :user_id)
  end
end
