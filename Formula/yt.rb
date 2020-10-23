
class Yt < Formula
  desc "Youtube cli"
  homepage "mast3rsoft.com"
  url "https://github.com/jakobneufeld/yt.git"
  head "https://github.com/jakobneufeld/yt.git"

  version "1.0.0"
  license "MIT"

   depends_on "go" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
   
    # system "cmake", ".", *std_cmake_args
    system "go", "get" , "github.com/fatih/color"
    system "go", "build", "-o", "yt"
    bin.install "yt"
  end
  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test dev-new`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "true"
  end
end
