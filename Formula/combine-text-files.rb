class CombineTextFiles < Formula
  desc "A tool to combine text files with delimiters"
  homepage "https://github.com/orhanerday/combine-text-files"
  url "https://github.com/orhanerday/combine-text-files/archive/refs/tags/v3.0.tar.gz"
  sha256 "cda5696cadada6fbec60acb210e6c1c87060bc6fb52d36c5f013e733dbf81bde"
  license "MIT"

  def install
    system "make"
    bin.install "combine-text-files"
  end

  test do
    (testpath/"testfile.txt").write("This is a test file.")
    system "#{bin}/combine-text-files"
    assert_predicate testpath/"single_file.txt", :exist?
  end
end
