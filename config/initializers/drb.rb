require 'drb'
DRb.start_service
RemoteTopfunkyIM = DRbObject.new_with_uri "druby://localhost:7777"
