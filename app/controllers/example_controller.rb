# frozen_string_literal: true

class ExampleController < ApplicationController
  def index
    render inertia: 'Example', props: {
      name: params.fetch(:name, 'World'),
    }
  end
end
