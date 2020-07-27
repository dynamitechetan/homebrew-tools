class Edn2lambda < Formula
  desc "testing taps"
  homepage "https://github.com/dynamitechetan/edn-to-lambda"
  url "https://github.com/dynamitechetan/homebrew-tools/releases/download/1.0.0/edn2lambda-1.0.0.tar.gz"
  sha256 "461963e681866fd6f3b0dafac5b3fac696e1deddb6c8df9014678cff813b2101"
  
  revision 4

  bottle :unneeded

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    (bin/"edn2lambda").write_env_script libexec/"bin/edn2lambda", :JAVA_HOME => Formula["openjdk"].opt_prefix
  end

  test do
    system "#{bin}/edn2lambda", "--help"
  end
end
