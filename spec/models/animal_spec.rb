# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Animal, type: :model do
  it { should belong_to(:exemplar) }
end
