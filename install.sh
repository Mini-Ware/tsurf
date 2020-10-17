echo "[*] Installing dependencies..."
pkg install w3m
echo "[*] Generating required executables..."
pkg install python
echo "[*] Adding to /data/data/com.termux/files/usr/bin..."
echo -e '#!/data/data/com.termux/files/usr/bin/python\nimport os\nwhile True:\n  x=int(input("Choose a search engine.\\n[1] Google\\n[2] Bing\\n[3] Yahoo\\n[4] DuckDuckGo\\ntbrowse>> "))\n  x=x-1\n  if x<4 and x>-1:\n    break\n  else:\n    print("Invalid option!")\ny=input("Enter your query.\\ntbrowse>> ")\nengine=["https://www.google.com/search?q=","https://www.bing.com/search?q=","https://www.search.yahoo.com/search?p=","https://www.duckduckgo.com/?q="]\ny=y.replace(" ","%20")\nos.system("w3m "+engine[x]+y)' > /data/data/com.termux/files/usr/bin/tbrowse
echo "[*] Granting required permissions..."
chmod +x /data/data/com.termux/files/usr/bin/tbrowse
echo "[*] Installation complete!"
