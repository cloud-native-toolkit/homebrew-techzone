class Itz < Formula
    desc "The itz command line interface is a scriptable command line interface that provides CLI access to IBM TechZone."
    homepage "https://github.com/cloud-native-toolkit/itzcli"
    version "v0.1.27"
    url "https://github.com/cloud-native-toolkit/itzcli/archive/refs/tags/v0.1.27.tar.gz"
    sha256 "b2a128bc2aa7a32ca4a22a2961df972333599e48b1b266dd0a260f78fcb18e3e"
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
