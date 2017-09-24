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


  describe "GET #new items" do
    it "get new item" do
      get :new
      expect(response).to be_success
    end
  end

  describe "Post #create item" do
   let(:valid_params) { {	name: "aa1a",
  	description: "dd11",
  	item_type: true,
  	item_category: "book",
  	price: 100,
    user_id: 1  }}
    it "create new Payment Methods" do
      post :create , :item => valid_params #,:format => :js
      expect(assigns(:item)).to be_an_instance_of(Item)
    end
  end

  # Method to show item  record detail
  describe "GET #Show item" do
    it "view item detail" do
     item = FactoryGirl.create(:item)
    # xhr :get ,:show, {id: item.id }
     get :show, {id: item.id }
     expect(response.status).to eq 200
    end
  end


  # Method to update item record
  describe "Put #update item" do
		before(:each) do
		  @item = FactoryGirl.create(:item)
		end

    let(:valid_params) {{name: "awwa1a",
  	description: "wwdd11",
  	item_type: true,
  	item_category: "wwbook",
  	price: 100,
    user_id: 1  }}
		it "should redirect to index with a notice on successful update" do
		 put :update, :id => @item.id, :item => valid_params
		 expect(flash[:notice]).to match("Item was successfully updated.")
		end
  end


 # Methods to mark item as deprecated
	 describe "destroy #delete item" do
    it "marlk item as deprected" do
     item = FactoryGirl.create(:item)
     #expect{delete :destroy, :id => item.id}.to change(item, :count).by(-1)
     delete :destroy, :id => item.id
     #tem.reload #need to reload because we bypass validation on controller
     #expect(item.deprecated).to eq(true)
     expect(Item.where(id: item.id).count).to eq(0)
    end
  end  



end