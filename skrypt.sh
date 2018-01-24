#./skrypt.sh <nazwa_repozytorium>
nr=1
mkdir $1
cd $1
git init

touch log
echo "Kolejne czasy:" >> log
git add log
git commit -a -m "Pierwszy commit"
git tag pierwszy

randomNumber=$(( (RANDOM % 100 )  + 1 ))

for (( i=1; $i < $randomNumber; i++ ))
do
date >> log
git commit -a -m "Dodana data $nr"
nr=$((nr+1))
done

date > log
git commit -a -m "Dodana data $nr"
nr=$((nr+1))

secondNumber=100-randomNumber
for (( i=1; $i <=$secondNumber; i++ ))
do
date >> log
git commit -a -m "Dodana data $nr"
nr=$((nr+1))
done

echo "randomNumber=$randomNumber"
