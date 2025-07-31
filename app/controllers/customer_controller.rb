class CustomerController < ApplicationController
  def index
    @customers = Customer.all
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      redirect_to root_path @customer
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
    def customer_params
    params.require(:customer).permit(:name)
    end
end
