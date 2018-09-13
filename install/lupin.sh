echo "\033[37;1m"
echo "Creating directory structure.."
mkdir -p ~/.lupin
cd ~/.lupin
rm -rf lupin
echo "Created ~/.lupin"
wget -q https://github.com/lupincr/lupin/raw/master/bin/lupin
chmod +x ./lupin
echo "\033[32;1m"
echo "Lupin was downloaded successfully. Please add ~/.lupin to your PATH."