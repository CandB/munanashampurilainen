require 'spec_helper'

describe "Inproceedings" do
  describe "GET /inproceedings" do
    it "works! (now write some real specs)" do
      get inproceedings_index_path
      response.status.should be(200)
    end
  end
end
