class ExpertDashboardController < ApplicationController

  def index
    @tickets = Ticket.all
  end

end
