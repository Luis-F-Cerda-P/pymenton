module Middleware
  class IpWhitelistMiddleware
    def initialize(app)
      @app = app
    end

    def call(env) # rubocop:disable Metrics/MethodLength
      request = ActionDispatch::Request.new(env)
      allowed_ips =
        [
          '54.88.218.97',
          '18.215.140.160',
          '18.213.114.129',
          '18.206.34.84',
          '172.19.132.217',
          '181.42.140.193',
          '66.241.125.241'
        ] # Add your whitelisted IPs here

      if allowed_ips.include?(request.ip)
        @app.call(env)
      else
        [403, { 'Content-Type' => 'text/plain' }, ['Forbidden']]
      end
    end
  end
end
