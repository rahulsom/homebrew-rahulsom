class Punto < Formula
  desc "Composable Dotfile Manager"
  homepage "https://rahulsom.github.io/punto/"
  url "https://bintray.com/api/ui/download/rahulsom/punto/punto/0.1.1-rc.1/punto-0.1.1-rc.1.zip"
  sha256 "f071b473fee64f961a009e59ead12d1634e4138afb8ce2cb78bfb84a5786df1b"

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