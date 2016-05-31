require 'rails_helper'

describe User do
  
  
  describe '.create_anonymous!' do    
   subject { User.create_anonymous!.reload } 
    it 'has no email address' do
      expect(subject.email).to be_nil  
    end

    it 'assigns a random password' do
      expect(subject.password).to_not be_nil
    end
  end

  describe '#anonymous?' do
    it 'returns true when there is no email address and has been saved' do
      subject = User.create(password:'1234567890')
      expect(subject.anonymous?).to be true
    end
  end


end