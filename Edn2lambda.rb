class Edn2lambda < Formula
  desc "testing taps"
  homepage "https://github.com/dynamitechetan/edn-to-lambda"
  url "https://violet-parent.surge.sh/edn2lambda-1.0.0.tar.gz"
  sha256 "1546fbc251445299e6e42fe0a195778317b4a418ab8d11e700c3d2b4723daa9f"
  
  revision 3

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
