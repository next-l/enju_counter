require "rails_helper"

module EnjuCounter
  RSpec.describe RequestsController, type: :routing do
    describe "routing" do
      routes { EnjuCounter::Engine.routes }

      it "routes to #index" do
        expect(get: "/requests").to route_to("enju_counter/requests#index")
      end

      it "routes to #new" do
        expect(get: "/requests/new").to route_to("enju_counter/requests#new")
      end

      it "routes to #show" do
        expect(get: "/requests/1").to route_to("enju_counter/requests#show", id: "1")
      end

      it "routes to #edit" do
        expect(get: "/requests/1/edit").to route_to("enju_counter/requests#edit", id: "1")
      end


      it "routes to #create" do
        expect(post: "/requests").to route_to("enju_counter/requests#create")
      end

      it "routes to #update via PUT" do
        expect(put: "/requests/1").to route_to("enju_counter/requests#update", id: "1")
      end

      it "routes to #update via PATCH" do
        expect(patch: "/requests/1").to route_to("enju_counter/requests#update", id: "1")
      end

      it "routes to #destroy" do
        expect(delete: "/requests/1").to route_to("enju_counter/requests#destroy", id: "1")
      end
    end
  end
end
