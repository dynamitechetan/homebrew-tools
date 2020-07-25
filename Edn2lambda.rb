class Edn2Lambda < Formula
  desc "testing taps"
  homepage "https://github.com/dynamitechetan/edn-to-lambda"
  url "https://github.com/dynamitechetan/edn-to-lambda/releases/download/1.0.0/edn2lambda-1.0.0.tar.gz"
  sha256 "66656339a3aa14ce65ecd66332c2c8fd3836a99dec9543c4eedbbb16d2286f88"

  bottle :unneeded

  def install
    bin.install "edn2lambda"
  end

  test do
    system "#{bin}/edn2lambda", "--help"
  end
end
