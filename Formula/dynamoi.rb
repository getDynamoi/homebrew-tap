class Dynamoi < Formula
  desc "Music promotion and distribution, built for AI agents"
  homepage "https://dynamoi.com"
  url "https://registry.npmjs.org/dynamoi/-/dynamoi-0.2.11.tgz"
  sha256 "7951e4bbc088d501a0c6a85c122956f23f5d256804373130eed9af9f6ef288f3"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dynamoi --version")
    assert_match "dynamoi", shell_output("#{bin}/dynamoi --help")
  end
end
