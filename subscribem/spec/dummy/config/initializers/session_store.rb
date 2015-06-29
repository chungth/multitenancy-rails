# Be sure to restart your server when you modify this file.

Rails.application.config.session_store :cookie_store,
                                       key: '_dummy_session',
                                       #config all session within the app will be store in domain
                                       domain: 'example.com'

