Refinery::Videos.configure do |config|
    #Configures the maximum allowed upload size (in bytes) for an video file
    #config.max_file_size = 524288000

    # Configure how many videos per page should be displayed in the list of images in the admin area
    #config.pages_per_admin_index =  20

    # Configure white-listed mime types for validation
    #config.whitelisted_mime_types = ["video/mp4", "video/x-flv", "application/ogg", "video/webm", "video/flv", "video/ogg"]

    # Configure Dragonfly
    # This is where in the middleware stack to insert the Dragonfly middleware
    config.dragonfly_insert_before = ActionDispatch::Callbacks
    config.dragonfly_secret = "59d60f58ca6df3c982d53822e05d98d0a5c5a69e3013e49f"
    # If you decide to trust file extensions replace :ext below with :format
    config.dragonfly_url_format = "/system/videos/:job/:basename.:ext"
    config.datastore_root_path = "vulture.assets"
    # config.trust_file_extensions = false

end
