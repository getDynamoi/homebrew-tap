class Dynamoi < Formula
  desc "Music promotion and distribution, built for AI agents"
  homepage "https://dynamoi.com"
  url "https://registry.npmjs.org/dynamoi/-/dynamoi-0.2.7.tgz"
  sha256 "e5b72137e4a6ae778509fea35044f2d5dcd6c6673ea0cf77b509ff68a380b96b"
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
