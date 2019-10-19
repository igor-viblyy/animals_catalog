# frozen_string_literal: true

require 'test_helper'

class AnimalTest < ActiveSupport::TestCase
  test 'avatar attached' do
    @animal = Animal.create(name: animals(:murzik).name)
    @animal.avatar.attach(io: File.open(Rails.root.join('test',
                                                        'fixtures',
                                                        'files',
                                                        'cat.jpeg').to_s),
                          filename: 'cat.jpeg',
                          content_type: 'image/jpeg')

    assert @animal.avatar.attached?
  end

  test 'name present' do
    @animal = Animal.create(name: animals(:murzik).name)
    assert @animal.name.present?
  end
end
