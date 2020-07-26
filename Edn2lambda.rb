class Edn2lambda < Formula
  desc "testing taps"
  homepage "https://github.com/dynamitechetan/edn-to-lambda"
  url "https://violet-parent.surge.sh/edn2lambda.tar.gz"
  sha256 "1bf89767cd354f60af4a95b7e483f4f4f03d23bf827b7361d872bab7c5ac976d"

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
