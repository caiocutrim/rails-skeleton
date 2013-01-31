SimpleForm.setup do |config|
  config.wrappers :default,
    :tag => :p, :class => :input,
    :hint_class => :field_with_hint,
    :error_class => :field_with_errors do |b|

    b.use :html5
    b.use :placeholder
    b.optional :maxlength
    # b.optional :pattern
    b.optional :min_max
    b.optional :readonly

    b.use :label_input
    b.use :hint,  :wrap_with => { :tag => :span, :class => :hint }
    b.use :error, :wrap_with => { :tag => :span, :class => :error }
  end

  config.default_wrapper = :default
  config.boolean_style = :nested
  config.button_class = "button"

  config.error_notification_tag = :p
  config.error_notification_class = "errors"

  config.time_zone_priority = [
    "UTC", "Brasilia", "Eastern Time (US & Canada)",
    "Central Time (US & Canada)", "Mountain Time (US & Canada)",
    "Pacific Time (US & Canada)"
  ].collect {|zone| ActiveSupport::TimeZone[zone]}
end
