# frozen_string_literal: true

class ServiceComponent < ViewComponent::Base
 with_collection_parameter :service

  erb_template <<-ERB
    <li>
      <h2><%= @service.name %></h2>
      <span><%= @service.description %></span>
      <%= button_to "Delete", @service, method: :delete, data: { turbo_confirm: "Are you sure?" } %>

    </li>
  ERB

  def initialize(service:)
    @service = service
  end
end
