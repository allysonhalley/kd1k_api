require "rails_helper"

RSpec.describe BloodsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bloods").to route_to("bloods#index")
    end

    it "routes to #show" do
      expect(get: "/bloods/1").to route_to("bloods#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bloods").to route_to("bloods#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bloods/1").to route_to("bloods#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bloods/1").to route_to("bloods#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bloods/1").to route_to("bloods#destroy", id: "1")
    end
  end
end
