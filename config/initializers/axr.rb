# frozen_string_literal: true

require 'axr'

AxR.app.define do
  layer 'Api'
  layer 'YourBusinessLogic'
  layer 'Repo'
end
