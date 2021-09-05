require 'swagger_helper'

RSpec.describe 'api/v1/posts', type: :request do
  path '/api/posts' do
    get('list posts') do
      produces 'application/json'

      response(200, 'successful') do
        schema type: :array,
               items: { '$ref' => '#/components/schemas/post' },
               required: %w[id title body]

        run_test!
      end
    end

    post('create post') do
      consumes 'application/json'
      produces 'application/json'
      parameter name: :new_post, in: :body, schema: { '$ref' => '#/components/schemas/new_post' }

      response(201, 'post created') do
        schema '$ref' => '#/components/schemas/post'

        let(:new_post) { attributes_for(:post) }

        run_test!
      end

      response(422, 'invalid request') do
        let(:new_post) { { title: 'foo' } }
        run_test!
      end
    end
  end

  path '/api/posts/{id}' do
    parameter name: 'id', in: :path, type: 'string', format: 'uuid', description: 'id'

    get('show post') do
      produces 'application/json'
      response(200, 'successful') do
        schema '$ref' => '#/components/schemas/post'

        let(:new_post) { attributes_for(:post) }
        let(:id) { create(:post).id }

        run_test!
      end

      response(404, 'post not found') do
        let(:id) { 'invalid' }
        run_test!
      end
    end

    patch('update post') do
      produces 'application/json'
      consumes 'application/json'
      parameter name: :new_post, in: :body, schema: { '$ref' => '#/components/schemas/new_post' }

      response(200, 'successful') do
        schema '$ref' => '#/components/schemas/post'

        let(:new_post) { attributes_for(:post) }
        let(:id) { create(:post).id }

        run_test!
      end

      response(422, 'invalid request') do
        let(:new_post) { { title: 'foo', body: '' } }
        let(:id) { create(:post).id }

        run_test!
      end
    end

    put('update post') do
      produces 'application/json'
      consumes 'application/json'
      parameter name: :new_post, in: :body, schema: { '$ref' => '#/components/schemas/new_post' }

      response(200, 'successful') do
        schema '$ref' => '#/components/schemas/post'

        let(:new_post) { attributes_for(:post) }
        let(:id) { create(:post).id }

        run_test!
      end

      response(422, 'invalid request') do
        let(:new_post) { { title: 'foo', body: '' } }
        let(:id) { create(:post).id }

        run_test!
      end
    end

    delete('delete post') do
      response(204, 'successful') do
        let(:id) { create(:post).id }
        run_test!
      end

      response(404, 'invalid request') do
        produces 'application/json'
        let(:id) { 'invalid' }
        run_test!
      end
    end
  end
end
