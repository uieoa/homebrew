require 'formula'

class Libmkv <Formula
  url 'http://repo.or.cz/w/libmkv.git/snapshot/a80e593de2bcfabd4ad6ca0a5c6b4566e3732557.tar.gz'
  head 'git://repo.or.cz/libmkv.git', :using=> :git
  homepage 'http://repo.or.cz/w/libmkv.git'
  version '0.6.4.1'
  md5 '4b4e7e401fe571db500d70551e9e19d2'


  def install
    system "./bootstrap.sh"
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"
  end
end
