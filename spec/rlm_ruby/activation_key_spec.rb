require "spec_helper"
module RlmRuby
	describe ActivationKey do
		describe "#new" do
			let(:create) { RlmRuby::ActivationKey.create }
			it "returns something" do
				expect(create).to be_a(Array)
			end
		end
	end
end
