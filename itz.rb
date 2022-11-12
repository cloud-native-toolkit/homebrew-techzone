class Itz < Formula
    desc "The itz command line interface is a scriptable command line interface that provides CLI access to IBM TechZone."
    homepage ""
    url "https://github.com/cloud-native-toolkit/itzcli-release/releases/download/v0.1.19/itzcli-darwin-amd64.tar.gz"
    sha256 "991bfc172067dadcf733af50b6c2a18589c6ee64b7cb23cbc76afedb0cc01286"
    license ""
  
    # depends_on "cmake" => :build
    def install
        bin.install 'itz'
        bin.install 'itzcli'
    end
  
  end
