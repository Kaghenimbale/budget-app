class ExpensesController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource

  def index
    @expenses = Expense.all
  end

  def show
  end

  def new
    @expenses = Expense.new
  end

  def create
    @expense = Expense.new(expense_params)
    @expense.user = current_user if current_user

    if @expense.save
      redirect_to request.referrer, notice: 'Food created successfully.'
    else
      redirect_to expenses_path, alert: 'Failed to create Food!'
    end
  end

  private

  def expense_params
    params.require(:expense).permit(:name, :amount, :price, :user_id)
  end
end
