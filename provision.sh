echo "Installing build-essential vi etc"
apt-get update >/dev/null 2>&1
apt-get install -y build-essential vim libgmp3-dev libbsd-dev libgmp3c2 zlib1g-dev freeglut3-dev 
wget http://www.haskell.org/ghc/dist/7.6.3/ghc-7.6.3-src.tar.bz2 >/dev/null 2>&1
bunzip2 ghc-7.6.3-src.tar.bz2
tar xf ghc-7.6.3-src.tar.bz2
cd ghc-7.6.3-src
./configure
make install
cd ~
wget http://lambda.haskell.org/platform/download/2013.2.0.0/haskell-platform-2013.2.0.0.tar.gz >/dev/null 2>&1
tar xfz haskell-platform-2013.2.0.0.tar.gz
cd  haskell-platform-2013.2.0.0
./configure
make install
cd ~
cabal update
cabal install cabal-dev

