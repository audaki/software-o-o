require 'test_helper'

class OBSTest < ActiveSupport::TestCase
  test 'search binaries data structure' do
    VCR.use_cassette('default') do
      binaries = OBS.search_published_binary('vcpkg', baseproject: 'openSUSE:Factory')

      assert_equal 2, binaries.size
    end
  end
end
