 require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

module EnjuCounter
  RSpec.describe "/requests", type: :request do
    # Request. As you add validations to Request, be sure to
    # adjust the attributes here as well.
    let(:valid_attributes) {
      skip("Add a hash of attributes valid for your model")
    }

    let(:invalid_attributes) {
      skip("Add a hash of attributes invalid for your model")
    }

    describe "GET /index" do
      it "renders a successful response" do
        Request.create! valid_attributes
        get enju_counter.requests_url
        expect(response).to be_successful
      end
    end

    describe "GET /show" do
      it "renders a successful response" do
        request = Request.create! valid_attributes
        get enju_counter.request_url(request)
        expect(response).to be_successful
      end
    end

    describe "GET /new" do
      it "renders a successful response" do
        get enju_counter.new_request_url
        expect(response).to be_successful
      end
    end

    describe "GET /edit" do
      it "render a successful response" do
        request = Request.create! valid_attributes
        get enju_counter.edit_request_url(request)
        expect(response).to be_successful
      end
    end

    describe "POST /create" do
      context "with valid parameters" do
        it "creates a new Request" do
          expect {
            post enju_counter.requests_url, params: { request: valid_attributes }
          }.to change(Request, :count).by(1)
        end

        it "redirects to the created request" do
          post enju_counter.requests_url, params: { request: valid_attributes }
          expect(response).to redirect_to(request_url(Request.last))
        end
      end

      context "with invalid parameters" do
        it "does not create a new Request" do
          expect {
            post enju_counter.requests_url, params: { request: invalid_attributes }
          }.to change(Request, :count).by(0)
        end

        it "renders a successful response (i.e. to display the 'new' template)" do
          post enju_counter.requests_url, params: { request: invalid_attributes }
          expect(response).to be_successful
        end
      end
    end

    describe "PATCH /update" do
      context "with valid parameters" do
        let(:new_attributes) {
          skip("Add a hash of attributes valid for your model")
        }

        it "updates the requested request" do
          request = Request.create! valid_attributes
          patch request_url(request), params: { request: new_attributes }
          request.reload
          skip("Add assertions for updated state")
        end

        it "redirects to the request" do
          request = Request.create! valid_attributes
          patch request_url(request), params: { request: new_attributes }
          request.reload
          expect(response).to redirect_to(request_url(request))
        end
      end

      context "with invalid parameters" do
        it "renders a successful response (i.e. to display the 'edit' template)" do
          request = Request.create! valid_attributes
          patch request_url(request), params: { request: invalid_attributes }
          expect(response).to be_successful
        end
      end
    end

    describe "DELETE /destroy" do
      it "destroys the requested request" do
        request = Request.create! valid_attributes
        expect {
          delete request_url(request)
        }.to change(Request, :count).by(-1)
      end

      it "redirects to the requests list" do
        request = Request.create! valid_attributes
        delete request_url(request)
        expect(response).to redirect_to(requests_url)
      end
    end
  end
end
