module Middleware
  class VersionIdentifier
    def initialize(app, version_id)
      @app = app
      @version_id = version_id
    end

    def call(env)
      @app.call(env).tap do |_status, headers, _body|
        headers["version-id"] = @version_id
      end
    end

    private
      attr_reader :version_id
  end
end

