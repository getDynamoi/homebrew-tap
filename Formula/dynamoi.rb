class Dynamoi < Formula
  desc "Music promotion and distribution, built for AI agents"
  homepage "https://dynamoi.com"
  url "https://registry.npmjs.org/dynamoi/-/dynamoi-0.2.3.tgz"
  sha256 "927546d7a3e9dcd57bd0d5c61c4394c87869fb2ab5127528d360a517f7ef7c2d"
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
