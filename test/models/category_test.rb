require 'test_helper'

class CategoryTest < ActiveSupport::TestCase

  def setup
    @category = Category.new(name:"Fishing")
  end

  test 'category should be valid' do
    assert @category.valid?
  end

  test 'it must have a name' do
    @category.name = " "
    assert_not @category.valid?
  end

  test 'name must be unique' do
    @category.save
    category2 = Category.new(name:"Fishing")
    assert_not category2.valid?
  end

  test 'name must not be long' do
    @category.name = 'a' * 26
    assert_not @category.valid?
  end

  test 'name must not be short' do
    @category.name = 'aa'
    assert_not @category.valid?
  end

end
