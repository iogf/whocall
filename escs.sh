##############################################################################
# initialize.
cd ~/projects/
git clone git@bitbucket.org:iogf/whocall.git whocall-code
##############################################################################

# push, whocall, master.
cd ~/projects/whocall-code
# clean up all .pyc files. 
find . -name "*.pyc" -exec rm -f {} \;

git status
git add *
git commit -a
git push -u origin master
##############################################################################
# push, whocall, alpha.

##############################################################################
#install #whocall

cd ~/projects/whocall-code
sudo bash -i
python2 setup.py install
rm -fr build
exit
##############################################################################
# get it on pip.

cd ~/projects/vy-code
python setup.py sdist register upload
rm -fr dist




