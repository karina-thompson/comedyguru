require 'rails_helper'

describe LikesController do 
  let(:user) { User.new(id: 1) }

  before do
    allow(controller).to receive(:current_user) { user }
  end

  describe '#create' do
    subject { post :create, comedian_id: 1}
    
    it 'saves a like of a comedian by a user' do
      expect(Like).to receive(:create).with(user_id: 1, comedian_id: "1")
      subject
    end

    it 'returns a 201 response' do
      subject
      expect(response).to have_http_status(:created)
    end

  end

  describe '#delete' do
    subject { delete :delete, comedian_id: 1}

    let(:like) { Like.new }

    context 'with a valid like' do
      before do
        allow(Like).to receive(:find_by) { like }
      end

      it 'deletes a like of a comedian by a user' do
        expect(like).to receive(:destroy)
        subject
      end

      it 'returns a 204 response' do
        subject
        expect(response).to have_http_status(:no_content)
      end
    end

    context 'Like does not exist' do
      it 'returns a 404 response' do
        subject
        expect(response).to have_http_status(:not_found)
      end
    end

  end
  
end