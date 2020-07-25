class Edn2lambda < Formula
  desc "testing taps"
  homepage "https://github.com/dynamitechetan/edn-to-lambda"
  url "http://high-birthday.surge.sh/edn2lambda-1.0.0.tar.gz"
  sha256 "e366293bd911859ff8aa47fac6b7d6285cb39359001665dc0ef54762abb0cdf0"

  bottle :unneeded

  def install
    bin.install "edn2lambda"
  end

  test do
    system "#{bin}/edn2lambda", "--help"
  end
end
