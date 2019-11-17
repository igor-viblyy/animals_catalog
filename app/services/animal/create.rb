# frozen_string_literal: true

class Animal
  # class Create
  class Create
    def self.call(*args)
      new(*args).call
    end

    def initialize(params = {})
      @name = params[:name]
      @avatar = params[:avatar]
      @exemplar_id = params[:exemplar_id]
    end

    def call
      Animal.create!(animal_attributes)
    end

    private

    attr_reader :name, :avatar, :exemplar_id

    def animal_attributes
      {
        name: name,
        avatar: avatar,
        exemplar_id: exemplar_id
      }
    end
  end
end
