class Progmem < Formula
  desc "Compilateur pour le TP9 du cours INF1900"
  homepage "https://cours.polymtl.ca/inf1900/fichiers"

  url "https://cours.polymtl.ca/inf1900/fichiers/fichiers/progmem.tgz"
  version "5c6fb02eb1dc1bda7d32e27e40e68d37282db8515eb975cbce8b1de0a580e227"
  sha256 "5c6fb02eb1dc1bda7d32e27e40e68d37282db8515eb975cbce8b1de0a580e227"

  uses_from_macos "bison"
  uses_from_macos "flex"

  def install
    system "make", "clean"
    system "make"
    bin.install "progmem"
  end

  test do
    output = shell_output("#{bin}/progmem -h 2>&1", 1)
    assert_match "progmem :", output
  end
end
