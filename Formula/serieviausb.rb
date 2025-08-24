class Serieviausb < Formula
  desc "Communication de façon sérielle, dans le cadre du cours INF1900"
  homepage "https://cours.polymtl.ca/inf1900/fichiers"

  url "https://cours.polymtl.ca/inf1900/fichiers/fichiers/serieViaUSB.tgz"
  version "474c8427817cee6f675d4b66e6fdaa5a6623f68e7ae472f201aee400cc6d5cfd"
  sha256 "474c8427817cee6f675d4b66e6fdaa5a6623f68e7ae472f201aee400cc6d5cfd"

  depends_on "libusb-compat"

  def install
    system "make", "clean"
    system "make"
    bin.install "serieViaUSB"
  end

  test do
    output = shell_output("#{bin}/serieViaUSB -h 2>&1", 255)
    assert_match "usage: serieViaUSB", output
  end
end
