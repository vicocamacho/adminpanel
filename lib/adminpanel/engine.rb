module Adminpanel
  class Engine < ::Rails::Engine
    isolate_namespace Adminpanel
  end

  class << self
    mattr_accessor :analytics_profile_id,
    :analytics_key_path,
    :analytics_key_filename,
    :analytics_account_email,
    :analytics_application_name,
    :analytics_application_version,
    :displayable_resources,
    :fb_app_id,
    :fb_app_secret,
    :twitter_api_key,
    :twitter_api_secret,
    :instagram_client_id,
    :instagram_client_secret

    self.analytics_profile_id = nil
    self.analytics_key_path = 'config/analytics'
    self.analytics_key_filename = nil
    self.analytics_account_email = nil
    self.analytics_application_name = 'AdminPanel'
    self.analytics_application_version = '1.0.0'

    self.twitter_api_key = nil
    self.twitter_api_secret = nil

    self.displayable_resources = [
      :users
    ]

    self.fb_app_id = nil
    self.fb_app_secret = nil

    self.twitter_api_key = nil
    self.twitter_api_secret = nil

    self.instagram_client_id = nil
    self.instagram_client_secret = nil
  end

  def self.setup(&block)
    yield self
  end
end
