#require 'rails_helper'
FactoryGirl.define do
  factory :user do
		email "ansar1.mirza@migo.tv"
		password "Migo@123"
		password_confirmation "Migo@123"
		name "Ansar"
		#last_name "Mirza"
		#superuser true
  end
end