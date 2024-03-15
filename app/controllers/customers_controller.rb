class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def alphabetized
    @customers = Customer.all.order(full_name: :asc)
  end

  def missing_email
    @customers = Customer.where(email_address: [nil, ""])
  end
end
