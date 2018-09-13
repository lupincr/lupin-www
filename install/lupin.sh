echo "\033[37;1m"
echo "Creating directory structure.."
mkdir -p ~/.lupin
cd ~/.lupin
rm -rf lupin
echo "Created ~/.lupin"
echo "Fetching repository.."
git clone https://github.com/lupincr/lupin-cli -q
cd lupin-cli
echo "Repository cloned. Fetching shards.."
shards >> /dev/null
crystal build ./src/lupincli.cr -o ../lupin
cd ..
rm -rf lupin-cli
chmod +x ./lupin
echo "\033[32;1m"
echo "Lupin was built successfully. Please add ~/.lupin to your PATH."