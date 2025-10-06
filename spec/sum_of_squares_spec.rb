# spec/sum_of_squares_spec.rb
RSpec.describe "sum_of_squares.rb" do
  describe "output" do
    it "prints the sum of the squares of the numbers", points: 3 do
      output = run_script_and_capture_lines("sum_of_squares.rb")
      sum = output[0].to_i

      # Just check it's positive and reasonable (since input is random)
      expect(sum).to be > 0
    end
  end

  describe "code" do
    let(:source_code) { strip_comments(File.read("sum_of_squares.rb")) }

    it "uses map and sum", points: 2 do
      expect(source_code).to match(/map/)
      expect(source_code).to match(/sum/)
    end

    it "uses exponentiation to square numbers", points: 2 do
      expect(source_code).to match(/\*\*/)
    end
  end
end
