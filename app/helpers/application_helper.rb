module ApplicationHelper
  include Rails.application.routes.url_helpers

  def cancel_link
    return link_to 'Cancel', request.env["HTTP_REFERER"],
    :class => 'cancel',
    :confirm => 'Are you sure? Any changes will be lost.'
  end

  def title(page_title)
    content_for(:title) { page_title }
  end

  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  def bootstrap_flash
    flash_messages = []
    flash.each do |type, message|
      # Skip Devise :timeout and :timedout flags
      next if type == :timeout
      next if type == :timedout
      type = :success if type == :notice
      type = :error   if type == :alert
      text = content_tag(:div,
             content_tag(:button, raw("<i class='icon-remove'></i>"), :class => "close", "data-dismiss" => "alert") +
             message, :class => "alert fade in alert-#{type}")
      flash_messages << text if message
    end
    flash_messages.join("\n").html_safe
  end
end
