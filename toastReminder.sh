#!/system/bin/sh
check="$(ps|busybox egrep -i "com.twitter.android|vivaldi")"
### check, tergantung log apa yang akan kamu cari..bisa logcat,ps,activity
if [ ! -z "$check" ]
then
 am start -a android.intent.action.MAIN -e message "pesan toast di sini" -n com.rja.utility/.ShowToast
sleep 5 ### jeda waktu
fi

