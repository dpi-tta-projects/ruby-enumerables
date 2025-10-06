# spec/first_even_spec.rb
RSpec.describe "first_even.rb" do
  describe "output" do
    it "prints one even number, then all odd numbers", points: 3 do
      output = run_script_and_capture_lines("first_even.rb")
      first_even = output[0].to_i
      all_odds   = eval(output[1])

      expect(first_even).to be_even
      expect(all_odds).to all(be_odd)
    end
  end

  describe "code" do
    let(:source_code) { strip_comments(File.read("first_even.rb")) }

    it "uses find and find_all", points: 2 do
      expect(source_code).to match(/find/)
      expect(source_code).to match(/find_all/)
    end
  end
end
