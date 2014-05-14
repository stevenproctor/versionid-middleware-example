require './server'
require './version_identifier'

git_sha = `git rev-parse HEAD`

use Middleware::VersionIdentifier, git_sha

run Server.new()





