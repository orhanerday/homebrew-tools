class CombineTextFiles < Formula
  desc "A tool to combine text files with delimiters"
  homepage "https://github.com/orhanerday/combine-text-files"
  url "https://codeload.github.com/orhanerday/combine-text-files/tar.gz/refs/tags/v2.1"
  sha256 "0847300cb194eaaf04a1e5fa6522e5c506c72489044a8efd626589a19ddbc72a"
  license "MIT"

  def install
    system "make"
    bin.install "combine_text_files"
  end

  test do
    (testpath/"testfile.txt").write("This is a test file.")
    system "#{bin}combine_text_files"
    assert_predicate testpath/"single_file.txt", :exist?
  end
end
