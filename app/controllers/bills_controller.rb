class BillsController < ApplicationController
  def index
    @group = Group.find(params[:group_id])
    @bills = Bill.where(id: params[:group_id])
  end

  def new; end

  def create
    new_bill = Bill.new(bill_params);
    new_bill.user = current_user
    if new_bill.save
      flash[:success] = 'You successfully added a bill'
      redirect_to groups_path
    else
      flash.now[:error] = 'Error: You could not create a bill'
      render :new
    end
  end

  private

  def bill_params
    params.require(:add_bill).permit(:name, :amount)
  end
end