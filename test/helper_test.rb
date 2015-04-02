require "helper"

class MockHelper
  extend ActionView::Helpers::FormHelper
  extend ActionView::Helpers::UrlHelper
  extend ActionView::Helpers::TagHelper
  extend ERB::Util
  extend Qadmin::Helper
end

class Qadmin::HelperTest < Minitest::Test
  context "Helper" do
    context "#labeled_show_column" do
      should "return a blank column when there is no value" do
        assert_match /.*blank.*/, MockHelper.labeled_show_column('', :to_s)
      end

      should "return array.inspect when the value is an array" do
        assert_match /.*\[&quot;a&quot;\].*/, MockHelper.labeled_show_column(nil, nil, value: ['a'])
      end

      should "return a hash.inspect when the value is a hash" do
        assert_match /.*{:a=&gt;&quot;a&quot;}.*/, MockHelper.labeled_show_column(nil, nil, value: {a: 'a'})
      end

      context "when the value is an active record model" do
        should "return a link when the path helper is present" do
          assert_match /.*Yes.*/, MockHelper.labeled_show_column(nil, nil, path_helper: :yes?, value: Item.new(sku: 10))
        end

        should "return a link when the namespace is present" do
          assert_match /.*Yes.*/, MockHelper.labeled_show_column(nil, nil, namespace: :something, value: Item.new(sku: 10))
        end
      end

      should "should return the value otherwise" do

      end
    end
  end
end
