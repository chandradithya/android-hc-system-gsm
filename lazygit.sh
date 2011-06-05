#!/bin/bash

DATE=$(date +%m%d)
TIME=$(date +%I%M)

cd ~/github/android-hc-system-gsm
zip -r hc_gsm_system_backup_old.zip . 
rm ../hc_gsm_system_backup_old.zip
rm -r ~/github/android-hc-system-gsm/META-INF
rm -r ~/github/android-hc-system-gsm/system
rm -r ~/github/android-hc-system-gsm/updates
rm ~/github/android-hc-system-gsm/lazygit.sh
mv hc_gsm_system_backup_old.zip ../hc_gsm_system_backup_old.zip
cp -r ~/galaxytab/gsmbuild/android-hc-system-gsm/ ~/github/
zip -r zip.zip .
mv zip.zip ~/galaxytab/gsmbuild/hc-gsm-test-"$DATE"-"$TIME".zip
git add -A
git commit
git push origin
