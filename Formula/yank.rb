class Yank < Formula
  include Language::Python::Virtualenv

  desc "Cross-platform LAN clipboard synchronization tool"
  homepage "https://github.com/nasiridrishi/yank"
  url "https://github.com/nasiridrishi/yank/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "eff6dd6247beede66a478f71e25ad7b7f9cc684b3cf2bb9b96d66d8434237acb"
  license "MIT"

  depends_on "python@3.12"
  depends_on "rust" => :build # needed to build cryptography

  resource "cffi" do
    url "https://files.pythonhosted.org/packages/eb/56/b1ba7935a17738ae8453301356628e8147c79dbb825bcbc73dc7401f9846/cffi-2.0.0.tar.gz"
    sha256 "eff6dd6247beede66a478f71e25ad7b7f9cc684b3cf2bb9b96d66d8434237acb"
  end

  resource "cryptography" do
    url "https://files.pythonhosted.org/packages/60/04/ee2a9e8542e4fa2773b81771ff8349ff19cdd56b7258a0cc442639052edb/cryptography-46.0.5.tar.gz"
    sha256 "eff6dd6247beede66a478f71e25ad7b7f9cc684b3cf2bb9b96d66d8434237acb"
  end

  resource "ifaddr" do
    url "https://files.pythonhosted.org/packages/e8/ac/fb4c578f4a3256561548cd825646680edcadb9440f3f68add95ade1eb791/ifaddr-0.2.0.tar.gz"
    sha256 "eff6dd6247beede66a478f71e25ad7b7f9cc684b3cf2bb9b96d66d8434237acb"
  end

  resource "pillow" do
    url "https://files.pythonhosted.org/packages/1f/42/5c74462b4fd957fcd7b13b04fb3205ff8349236ea74c7c375766d6c82288/pillow-12.1.1.tar.gz"
    sha256 "eff6dd6247beede66a478f71e25ad7b7f9cc684b3cf2bb9b96d66d8434237acb"
  end

  resource "pycparser" do
    url "https://files.pythonhosted.org/packages/1b/7d/92392ff7815c21062bea51aa7b87d45576f649f16458d78b7cf94b9ab2e6/pycparser-3.0.tar.gz"
    sha256 "eff6dd6247beede66a478f71e25ad7b7f9cc684b3cf2bb9b96d66d8434237acb"
  end

  resource "zeroconf" do
    url "https://files.pythonhosted.org/packages/67/46/10db987799629d01930176ae523f70879b63577060d63e05ebf9214aba4b/zeroconf-0.148.0.tar.gz"
    sha256 "eff6dd6247beede66a478f71e25ad7b7f9cc684b3cf2bb9b96d66d8434237acb"
  end

  on_macos do
    resource "pyobjc-core" do
      url "https://files.pythonhosted.org/packages/b8/b6/d5612eb40be4fd5ef88c259339e6313f46ba67577a95d86c3470b951fce0/pyobjc_core-12.1.tar.gz"
      sha256 "eff6dd6247beede66a478f71e25ad7b7f9cc684b3cf2bb9b96d66d8434237acb"
    end

    resource "pyobjc-framework-Cocoa" do
      url "https://files.pythonhosted.org/packages/02/a3/16ca9a15e77c061a9250afbae2eae26f2e1579eb8ca9462ae2d2c71e1169/pyobjc_framework_cocoa-12.1.tar.gz"
      sha256 "eff6dd6247beede66a478f71e25ad7b7f9cc684b3cf2bb9b96d66d8434237acb"
    end
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "LAN Clipboard Sync", shell_output("#{bin}/yank --help")
  end
end
