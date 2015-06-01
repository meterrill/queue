class TicketsController < ApplicationController
  def index
    @tickets = Ticket.all
  end

  def show
    @ticket = Ticket.find(params[:id])
  end

  def new
    @ticket = Ticket.new
  end

  def create
    @ticket = Ticket.new(ticket_params)
    if @ticket.save
      redirect_to tickets_path
    else
      render :new
    end
  end

private
  def ticket_params
    params.require(:ticket).permit(:description)
  end
end
