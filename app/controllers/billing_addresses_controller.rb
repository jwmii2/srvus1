class BillingAddressesController < ApplicationController
  
  def index
    @billing_addresses = BillingAddress.all
  end
  
  def show
    @billing_address = BillingAddress.find(params[:id])
  end
  
  def new
    @billing_address = BillingAddress.new
  end
  
  def edit
    @billing_address = BillingAddress.find(params[:id])
  end
  
  def create
    @billing_address = BillingAddress.new(params[:billing_address])
    if @billing_address.save
      redirect_to @billing_address, notice: 'Billing Address was successfully created.'
    else
      render action: "new"
    end
  end
  
  def update
    @billing_address = BillingAddress.find(params[:id])
    if @billing_address.update_attributes(params[:billing_address])
      redirect_to @billing_address, notice: 'Billing Address was successfully updated.'

    else
      render action: "edit"
    end
  end
  
  def destroy
    @billing_address = BillingAddress.find(params[:id])
    @billing_address.destroy
    redirect_to billing_addresses_url
  end
  
end
