if [ -f .pre-commit.sh ]
then
    echo "Succesfully linked pre-commit hook!"
    ln -fs ../../.pre-commit.sh .git/hooks/pre-commit
else
    echo '\nError: Pre-commit script not found repository.'
fi