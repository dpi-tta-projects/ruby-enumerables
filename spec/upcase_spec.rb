# spec/upcase_spec.rb
RSpec.describe "upcase.rb" do
  describe "output" do
    it "prints an array of uppercase words", points: 3 do
      output = run_script_and_capture_lines("upcase.rb")
      text = output.join(" ")
      words = text.scan(/[A-Z]+/)

      expect(words).not_to be_empty, "Expected at least one uppercase word in output."
      expect(words).to all(match(/\A[A-Z]+\z/))
    end
  end

  describe "code" do
    let(:source_code) { strip_comments(File.read("upcase.rb")) }

    it "uses map and upcase", points: 2 do
      expect(source_code).to match(/map/)
      expect(source_code).to match(/upcase/)
    end
  end
end
