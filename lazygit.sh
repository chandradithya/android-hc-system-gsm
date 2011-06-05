#!/bin/bash

DATE=$(date +%m%d)
TIME=$(date +%I%M)

cd ~/github/android-hc-system-cdma
zip -r hc_system_backup_old.zip . 
rm ../hc_system_backup_old.zip
rm -r ~/github/android-hc-system-cdma/META-INF
rm -r ~/github/android-hc-system-cdma/system
rm -r ~/github/android-hc-system-cdma/updates
rm ~/github/android-hc-system-cdma/lazygit.sh
mv hc_system_backup_old.zip ../hc_system_backup_old.zip
cp -r ~/galaxytab/cdmabuild/android-hc-system-cdma/ ~/github/
zip -r zip.zip .
mv zip.zip ~/galaxytab/cdmabuild/hc-cdma-test-"$DATE"-"$TIME".zip
git add -A
git commit
git push origin
