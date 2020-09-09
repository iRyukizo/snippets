# Install snippets where it belongs
# Be sure to have installed UltiSnips before
# (if not, refer to README)

# So much efforts :

if [ $# -eq 1 ]
then
	if [ $1 == "install" ]
	then
		cp -r UltiSnips/ ~/.vim/
		echo "Installation done."
	fi
	if [ $1 == "source" ]
	then
		cp -r ~/.vim/UltiSnips/ .
		echo "Source done."
	fi
else
	echo "Usage: ./install.sh source/insall"
fi
