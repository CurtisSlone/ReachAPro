class HomeController < ApplicationController

  def index
    @ticket = Ticket.new
  end

  private

end
