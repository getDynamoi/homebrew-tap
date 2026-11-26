class Dynamoi < Formula
  desc "Music promotion and distribution, built for AI agents"
  homepage "https://dynamoi.com"
  url "https://registry.npmjs.org/dynamoi/-/dynamoi-0.2.14.tgz"
  sha256 "81b396c67438e00b982c0ed336b393b87e6db3c9030fab60a0715eeb1dbdb0ab"
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
