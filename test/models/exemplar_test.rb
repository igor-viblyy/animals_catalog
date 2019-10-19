# frozen_string_literal: true

require 'test_helper'

class ExemplarTest < ActiveSupport::TestCase
  test 'the name present' do
    @exemplar = Exemplar.create(name: exemplars(:cat).name)
    assert @exemplar.name.present?
  end
end
