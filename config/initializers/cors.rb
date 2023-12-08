Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'http://localhost:3001'
            'http://127.0.0.1:3001'

    resource '*', headers: :any, methods: :any, params: :any
  end
end