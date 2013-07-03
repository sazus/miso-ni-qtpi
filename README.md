Raspberry Pi用 Rasbian(wheezy hf版)Qt5.1.0rc2環境構築スクリプト


- 本スクリプト  
  Beginner’s guide to cross-compile Qt5 on RaspberryPi  
  (http://qt-project.org/wiki/RaspberryPi_Beginners_guide)  
  で紹介されているbakeqtpi.bashを多少カスタマイズして  
  qt5.q.0rc2をクロスコンパイルする時に必要なパッケージを  
  インストールしてくれるスクリプトです。  
  (Ubuntu等のDebian系限定です。)  
  
  使用したbakeqtpi  
  git://gitorious.org/bakeqtpi/bakeqtpi.git  
  SHA1 :  d4b537732d0e0e522824c38f3b2bd2ff3131bdbe
  本家はSDK用のgitからcheckoutしていますが、このリポジトリ
  では、Qt5のリポジトリからcheckoutするようにしています。

- 実行  
    本スクリプトのをgit cloneする。  
        $ sudo apt-get install git  
        $ cd ~  
        $ git clone git://github.com/sazus/miso-ni-qtpi.git  
        $ cd ./miso-ni-qtpi  
        $ ./miso-ni-qtpi.sh
  
- 動作確認  
    (HOST PC)  
        Ubuntu 12.10 (64bit)  
        Ubuntu 12.04LTS(32bit / 64bit)  
  
    (Target SD image)  
        2013-05-25-wheezy-raspbian.img
    にて確認。  
  
---------------------------------------------------------------------
Rasbian(wheezy hf version) Qt5.1.0rc2 environmental construction script
 for Raspberry Pi(Rasbian wheezy Hard-float version)   


- This script   
    Beginner's guide toSome bakeqtpi.bash currently introduced by  
    cross-compile Qt5 on RaspberryPi  
    (http://qt-project.org/wiki/RaspberryPi_Beginners_guide)  
        this script customized.  
        -- cross compiling qt5.1.0rc2.  
        -- installs a required package.  
  
    (It is Debian system limitation of Ubuntu etc.)  
  
    used bakeqtpi  
        git://gitorious.org/bakeqtpi/bakeqtpi.git  
        SHA1 :  d4b537732d0e0e522824c38f3b2bd2ff3131bdbe
  
  
- Instructions  
    -- Install git,this script checkout from git  
       $ sudo apt-get install git  
       $ cd ~  
       $ git clone git://github.com/sazus/miso-ni-qtpi.git  
  
    -- running this script  
       $ cd ./miso-ni-qtpi  
       $ ./miso-ni-qtpi.sh
  
- Check Platform  
  (HOST PC)  
    Ubuntu 12.10 (64bit)  
    Ubuntu 12.04LTS(32bit / 64bit)  
  
  (Target SD image)  
    2013-05-25-wheezy-raspbian.img


