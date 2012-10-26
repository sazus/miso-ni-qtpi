Raspberry Pi用 Rasbian(wheezy hf版)Qt5beta1環境構築スクリプト

- 本スクリプト
  Beginner’s guide to cross-compile Qt5 on RaspberryPi
  (http://qt-project.org/wiki/RaspberryPi_Beginners_guide)
  で紹介されているbakeqtpi.bashを多少カスタマイズして
  qt5beta1をクロスコンパイルする時に必要なパッケージを
  インストールしてくれるスクリプトです。
  (Ubuntu等のDebian系限定です。)

  使用したbakeqtpi
  git://gist.github.com/3488286.git
  SHA1 :  1669b5bc45cb1d9c3f8b0b929aaf54ac7d6e9ea5


- 実行
  本スクリプトのをgit cloneする。
  $ sudo apt-get install git
  $ cd ~
  $ git clone git://github.com/sazus/miso-ni-qtpi.git
  $ cd ./miso-ni-qtpi
  [32bit OS]
  $ ./miso-ni-qtpi.sh 32bit
  [64bit OS]
  $ ./miso-ni-qtpi.sh 64bit
  
- 動作確認
  (HOST PC)
  Ubuntu 12.10 (64bit)
  Ubuntu 12.04LTS(32bit / 64bit)
  にて確認。
  
  (Target SD image)
  2012-08-16_wheezy_raspbian.img
  2012-09-18_wheezy_raspbian.img


---------------------------------------------------------------------
Rasbian(wheezy hf version) Qt5beta1 environmental construction script
 for Raspberry Pi(Rasbian wheezy Hard-float version) 

- This script 
  Beginner's guide toSome bakeqtpi.bash currently introduced by cross-compile Qt5 on RaspberryPi
  (http://qt-project.org/wiki/RaspberryPi_Beginners_guide)
    this script customized.
    -- cross compiling qt5beta1.
    -- installs a required package. 

  (It is Debian system limitation of Ubuntu etc.) 

  used bakeqtpi
  git://gist.github.com/3488286.git
  SHA1 :  1669b5bc45cb1d9c3f8b0b929aaf54ac7d6e9ea5


- Instructions
    -- Install git,this script checkout from git
       $ sudo apt-get install git
       $ cd ~
       $ git clone git://github.com/sazus/miso-ni-qtpi.git

    -- running this script
       $ cd ./miso-ni-qtpi
       [32bit OS]
       $ ./miso-ni-qtpi.sh 32bit
       [64bit OS]
       $ ./miso-ni-qtpi.sh 64bit

- Check Platform
  (HOST PC)
    Ubuntu 12.10 (64bit)
    Ubuntu 12.04LTS(32bit / 64bit)

  (Target SD image)
    2012-08-16_wheezy_raspbian.img
    2012-09-18_wheezy_raspbian.img


