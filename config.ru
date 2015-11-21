require "rubygems"
require "geminabox"

Geminabox.data = "/var/geminabox-data"

Geminabox.allow_remote_failure = true 
Geminabox.rubygems_proxy = true

run Geminabox::Server
