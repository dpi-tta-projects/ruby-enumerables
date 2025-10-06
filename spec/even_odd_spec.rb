# spec/even_odd_spec.rb
RSpec.describe "even_odd.rb" do
  describe "output" do
    it "prints even numbers first, then odd numbers", points: 3 do
      output = run_script_and_capture_lines("even_odd.rb")
      even = eval(output[0])
      odd  = eval(output[1])

      expect(even).to all(be_even)
      expect(odd).to all(be_odd)
    end
  end

  describe "code" do
    let(:source_code) { strip_comments(File.read("even_odd.rb")) }

    it "uses select and reject", points: 2 do
      expect(source_code).to match(/select/)
      expect(source_code).to match(/reject/)
    end
  end
end
