# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Animal::Create do
  let(:exemplar) { create(:exemplar) }
  let(:valid_params) { { name: 'kit', exemplar_id: exemplar.id } }

  let(:success_result) { Animal::Create.call(valid_params) }

  context 'valid params' do
    it { expect(success_result).to be_truthy }
  end
end
