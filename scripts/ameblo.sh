cd ..
echo "[INFO] Starting Ameblo crawler"
if [ "$#" -eq 3 ] #MAIN SCROLL
	then
	scrapy crawl ameblo -a name="$1" -a first="$2" -a last="$3" 
elif [ "$#" -eq 2 ] #ENTRY
	then
	scrapy crawl ameblo -a name="$1" -a entry="$2"
else
	echo "[ERROR] Invalid number of arguments."
	echo "[ERROR] Closing script."
fi

cd scripts/