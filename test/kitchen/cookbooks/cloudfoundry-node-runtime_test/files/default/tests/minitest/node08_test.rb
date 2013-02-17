require File.expand_path('../support/helpers', __FILE__)

describe 'cloudfoundry-node-runtimes::node08' do
  include Helpers::CloudfoundryNodeRuntime

  it 'installs node 0.8.18' do
    directory("/usr/lib/nodejs").must_exist
    executable("/usr/bin/node").must_exist
  end
end
