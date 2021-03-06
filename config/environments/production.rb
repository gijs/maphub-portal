MaphubPortal::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb

  # Config variables
  config.map_base_uri = "http://samos.mminf.univie.ac.at/maps"
  config.wikipedia_miner_uri = "http://samos.mminf.univie.ac.at:8080/wikipediaminer"
  config.dbpedia_sparql_uri = "http://dbpedia.org/sparql?"
  config.geoname_query = "http://api.geonames.org/wikipediaBoundingBoxJSON?"
  config.geoname_user = "username=slhck"
  config.google_maps_api_key = "AIzaSyBlzM3vloWBjycG494laUkc5DEHrMI6M0I"
  config.remote_timeout = 5


  # Code is not reloaded between requests
  config.cache_classes = true

  # Full error reports are disabled and caching is turned on
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true

  # Disable Rails's static asset server (Apache or nginx will already do this)
  config.serve_static_assets = true

  # Compress JavaScripts and CSS
  config.assets.compress = true

  # Don't fallback to assets pipeline if a precompiled asset is missed
  config.assets.compile = false

  # Generate digests for assets URLs
  config.assets.digest = true
  
  config.assets.precompile += %w( openlayers.js maps.js users.js uservoice.js )
  config.assets.precompile += %w( maps/annotation_tooltip.js maps/annotation_view.js maps/control_point_tooltip.js maps/overlay_view.js maps/tagging_view.js )
  config.assets.precompile += %w( maps/overlays/alpha_overlay.js maps/overlays/ext_draggable_object.js maps/overlays/map.js maps/overlays/tile_overlay.js )
  config.assets.precompile += %w( theme/default/style.css theme/default/google.css theme/default/ie6-style.css)

  config.assets.css_compressor = :yui
  config.assets.js_compressor = :uglifier

  # Defaults to Rails.root.join("public/assets")
  # config.assets.manifest = YOUR_PATH

  # Specifies the header that your server uses for sending files
  # config.action_dispatch.x_sendfile_header = "X-Sendfile" # for apache
  # config.action_dispatch.x_sendfile_header = 'X-Accel-Redirect' # for nginx

  # Force all access to the app over SSL, use Strict-Transport-Security, and use secure cookies.
  # config.force_ssl = true

  # See everything in the log (default is :info)
  # config.log_level = :debug

  # Prepend all log lines with the following tags
  # config.log_tags = [ :subdomain, :uuid ]

  # Use a different logger for distributed setups
  # config.logger = ActiveSupport::TaggedLogging.new(SyslogLogger.new)

  # Use a different cache store in production
  # config.cache_store = :mem_cache_store

  # Enable serving of images, stylesheets, and JavaScripts from an asset server
  # config.action_controller.asset_host = "http://assets.example.com"

  # Precompile additional assets (application.js, application.css, and all non-JS/CSS are already added)
  # config.assets.precompile += %w( search.js )

  # Disable delivery errors, bad email addresses will be ignored
  # config.action_mailer.raise_delivery_errors = false

  # Enable threaded mode
  # config.threadsafe!

  # Enable locale fallbacks for I18n (makes lookups for any locale fall back to
  # the I18n.default_locale when a translation can not be found)
  config.i18n.fallbacks = true

  # Send deprecation notices to registered listeners
  config.active_support.deprecation = :notify

  # Log the query plan for queries taking more than this (works
  # with SQLite, MySQL, and PostgreSQL)
  # config.active_record.auto_explain_threshold_in_seconds = 0.5
end
