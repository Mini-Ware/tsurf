#!/data/data/com.termux/files/usr/bin
printf "Choose a search engine.\n[1] Google\n[2] Bing\n[3] Yahoo\n[4] DuckDuckGo\n[5] Wikipedia\ntsurf>"
read text
if [[ $text == "1" ]]; then
  echo "[*] Selected Google"
elif [[ $text == "2" ]]; then
  echo "[*] Selected Bing"
elif [[ $text == "3" ]]; then
  echo "[*] Selected Yahoo"
elif [[ $text == "4" ]]; then
  echo "[*] Selected DuckDuckGo"
elif [[ $text == "5" ]]; then
  echo "[*] Selected Wikipedia"
else;
  echo "Invalid option!"
  exit
fi
