require 'rails_helper'

describe ApplicationController do

  describe '#current_user' do
    subject { controller.current_user }
    let(:session_vars) { {user_id: user.id } }  

    before(:each) do
      @request.session = session_vars
    end

    context 'first time visitor' do
      let(:session_vars) { Hash.new }

      it 'returns an anonymous user' do
        expect(subject.anonymous?).to be true
      end
      
      it 'saves the user' do
        expect(subject.persisted?).to be true
      end

      it 'sets the anonymous user id in the session' do
        anon = subject
        expect(session).to include({user_id: anon.id})
      end

    end

    context 'logged in user' do
      let(:user) { User.create(email: 'test@example.com', password: 's3cr3t') }

      it 'returns the saved user' do
        expect(subject).to eq user
      end
    end

    context 'returning anonymous user' do
      let(:user) { User.create(password: '1234567543') }

      it 'returns the saved anonymous user' do
        expect(subject).to eq user
      end
    end


  end


end
