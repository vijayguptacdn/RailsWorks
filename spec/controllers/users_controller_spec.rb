require 'rails_helper'

RSpec.describe UsersController, type: :controller do
 login_user

  describe "GET index" do
    it "assigns @user" do
      get :index
      expect(response.status).to eq(200)
    end
  end  
end
