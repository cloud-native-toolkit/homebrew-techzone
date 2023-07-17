class Itz < Formula
    desc "The itz command line interface is a scriptable command line interface that provides CLI access to IBM TechZone."
    homepage "https://github.com/cloud-native-toolkit/itzcli"
    version "v0.1.26"
    url "https://github.com/cloud-native-toolkit/itzcli/archive/refs/tags/v0.1.26.tar.gz"
    sha256 "42de1f4e8e253d794ddbde8d50d409127afecfc3618f32e391d7697f17523a0d"
    license "Apache"

    depends_on "go" => :build
  
    def install
        bin.install 'itz'
        system "make", "install", "ITZ_VER=#{version}"
        bin.install 'itzcli'
        man1.install Dir["contrib/manpages/*.1"]
        bash_completion.install "contrib/bash/itzcli"
        zsh_completion.install "contrib/zsh/_itzcli"
    end
  
    test do
      assert_match version.to_s, shell_output("#{bin}itz version")
    end
end
