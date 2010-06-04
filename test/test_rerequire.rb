require 'test/unit'
require 'protobuf/message/message'
require 'protobuf/message/enum'

class RerequireTest < Test::Unit::TestCase
  def test_re_require
    require 'test/proto/addressbook.pb'
    $:.push('test/proto')
    require 'addressbook.pb'
  end
  
  def test_re_require2
    require 'test/proto/addressbook.pb'
    require 'test/proto/addressbook.pb.rb'
  end
end
