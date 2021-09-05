# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Api::V1::PostsController, type: :routing do
  describe 'routing' do
    let(:id) { Faker::Internet.uuid }

    it 'routes to #index' do
      expect(get: '/api/v1/posts').to route_to('api/v1/posts#index')
    end

    it 'routes to #show' do
      expect(get: "/api/v1/posts/#{id}").to route_to('api/v1/posts#show', id: id)
    end

    it 'routes to #create' do
      expect(post: '/api/v1/posts').to route_to('api/v1/posts#create')
    end

    it 'routes to #update via PUT' do
      expect(put: "/api/v1/posts/#{id}").to route_to('api/v1/posts#update', id: id)
    end

    it 'routes to #update via PATCH' do
      expect(patch: "/api/v1/posts/#{id}").to route_to('api/v1/posts#update', id: id)
    end

    it 'routes to #destroy' do
      expect(delete: "/api/v1/posts/#{id}").to route_to('api/v1/posts#destroy', id: id)
    end
  end
end
