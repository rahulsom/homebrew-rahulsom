class Punto < Formula
  desc "Composable Dotfile Manager"
  homepage "https://rahulsom.github.io/punto/"
  url "https://bintray.com/api/ui/download/rahulsom/punto/punto/0.1.2/punto-0.1.2.zip"
  sha256 "d5a34b5c462a8bc3158afa19743e780ba3d1d323deb97f4ef9d70aaf47adeab6"

  def install
    bin.install "macos/punto"
  end

  test do
    system "#{bin}/punto", "--version"
    system "curl", "-s", "https://raw.githubusercontent.com/rahulsom/punto/master/src/test/resources/sample.punto.yaml", "-o", "/tmp/punto.yml"
    system "#{bin}/punto", "config", "-c", "/tmp/punto.yml"
    system "rm", "/tmp/punto.yml"
  end
end