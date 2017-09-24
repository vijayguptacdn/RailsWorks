require 'rails_helper'

RSpec.describe ItemsController, type: :controller do
 login_user

  describe "GET index" do
    it "assigns @items" do
      item = FactoryGirl.create(:item)
      get :index
      expect(assigns(:items)).to eq([item])
    end
  end  
end