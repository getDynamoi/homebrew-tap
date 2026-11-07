class Dynamoi < Formula
  desc "Music promotion and distribution, built for AI agents"
  homepage "https://dynamoi.com"
  url "https://registry.npmjs.org/dynamoi/-/dynamoi-0.2.6.tgz"
  sha256 "719cea4e6a491775f0cfc2bc52dabf8eea84968b74263608c3606dfd31dabf88"
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
