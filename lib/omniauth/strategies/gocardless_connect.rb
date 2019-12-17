# frozen_string_literal: true

module OmniAuth
  module Strategies
    class GocardlessConnect < OmniAuth::Strategies::OAuth2
      option :name, :gocardless_connect

      option :client_options, {
        site: 'https://connect.gocardless.com',
        authorize_url: '/oauth/authorize',
        token_url: '/oauth/access_token'
      }

      option :authorize_params, scope: 'read_write'
      option :authorize_options, %i[scope initial_view state]

      uid do
        request.params['email']
      end

      info do
        {
          email: access_token.params['email'],
          organisation_id: access_token.params['organisation_id']
        }
      end

      def query_string
        ''
      end
    end
  end
end
