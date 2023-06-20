require "test_helper"

class BookTest < ActiveSupport::TestCase
  test "book test" do
    book = Book.new
    assert_not book.save, "save without title"
  end
end
