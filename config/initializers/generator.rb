Rails.application.config.generators do |g|
  # g = generate
  # specs refers to automatic generation
  g.helper false
  g.javascript_engine false
  g.request_specs false
  g.routing_specs false
  g.stylesheets false
  g.test_framework :minitest, spec: true, fixture: true
  g.view_specs false
end
