require 'spec_helper'

describe Api::V1::TasksController do
	describe 'Tasks API' do
		it "sends a list of tasks" do
			create(:task)
			create(:task)
			get '/api/tasks'

			# test for 200 status code
			expect(response).to be_success
			expect(json.length).to eq(2)
		end
	end
end
