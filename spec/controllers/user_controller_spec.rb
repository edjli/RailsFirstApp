require 'rails_helper'

describe UsersController, type: :controller do
  @user = FactoryBot.create(:user)
  # let(:user2) {User.create!(email: "ab@gmail.com", password: "abcdefg") }
  describe 'GET #show' do
    context 'when a user is logged in' do
      before do
        sign_in user
      end
      it 'loads correct user details' do
        @user = FactoryBot.build(:user, email: "a@gmail.com")
        expect(response).to be_ok
        expect(assigns(@user)).to eq user
      end
    end

    context 'when a user is not logged in' do
      it 'redirects to login' do
        @user = FactoryBot.build(:user, email: "a@gmail.com")
        expect(response).to redirect_to(new_user_session_path)
      end
    end

   #  context 'if first user can acess show page of second user' do
   #    it 'redirects to root_path'
   #      get :show, params: {id: user.id}
   #      # get :show, params: {id: user2.id}
   #      expect(response).to
   #    end
   # end
  end


end
