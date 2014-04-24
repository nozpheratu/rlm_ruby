require "spec_helper"
describe RlmRuby do
	describe "#configure" do
		before do
			RlmRuby.configure do |config|
				# config.drawing_count = 10
				# config.database = {adapter: "sqlite3", database: ":foo:"}
			end
		end
		it "returns an array with 10 elements" do
			# RlmRuby::ActivationKey.connection.instance_eval {@config[:database]}.should eq(":foo:")
			# draw = MegaLotto::Drawing.new.draw
			# expect(draw).to be_a(Array)
			# expect(draw.size).to eq(10)
		end
	end
end
