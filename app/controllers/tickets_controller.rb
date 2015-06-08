class TicketsController < ApplicationController
  def index
    @incomplete_tickets = Ticket.where(complete: false).order('tickets.created_at ASC')
    @complete_tickets = Ticket.where(complete: true).order('tickets.created_at ASC')
  end

  def show
    @ticket = Ticket.find(params[:id])
  end

  def new
    @ticket = Ticket.new
  end

  def create
    @ticket = Ticket.new(ticket_params)
    @ticket.save
    respond_to do |format|
      format.html { redirect_to tickets_path }
      format.js
    end
  end

  def edit
    @ticket = Ticket.find(params[:id])
  end

  def update
    @ticket = Ticket.find(params[:id])
    @ticket.update(ticket_params)
    respond_to do |format|
      format.html { redirect_to tickets_path }
      format.js
    end
  end

  def destroy
    @ticket = Ticket.find(params[:id])
    @ticket.destroy
    respond_to do |format|
      format.html { redirect_to tickets_path }
      format.js
    end
  end

private
  def ticket_params
    params.require(:ticket).permit(:underwriter, :complete)
  end
end
