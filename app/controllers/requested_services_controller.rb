class RequestedServicesController < ApplicationController
  def index
    @requested_services = RequestedService.all.includes(:customer, :service, :address)
  end
  def new
    @requested_service = RequestedService.new
    @requested_service.build_customer
    @requested_service.build_address
  end

  def create
    @requested_service = RequestedService.new(requested_service_params)
    @requested_service.requested_at ||= Time.current  # fallback to now if blank

    if @requested_service.save
      redirect_to requested_services_path, notice: "Requested service created!"
    else
      render :new
    end
  end

  private

  def requested_service_params
    params.require(:requested_service).permit(
      :requested_at, :status, :service_id,
      customer_attributes: [ :name, :email, :phone_number ],
      address_attributes: [ :street, :city, :province, :postal_code, :country ]
    )
  end
end
