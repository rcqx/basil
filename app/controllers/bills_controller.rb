class BillsController < ApplicationController
  def index
    @group = Group.find(params[:group_id])
    @group_bill = GroupBill.where(group_id: params[:group_id])
    @sum = 0
    @group_bill.each { |item| @sum+=item.bill.amount }
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
    new_group_bill = GroupBill.create(bill_id: new_bill.id, group_id: Group.find(params[:group_id]).id)
  end

  private

  def bill_params
    params.require(:add_bill).permit(:name, :amount)
  end
end