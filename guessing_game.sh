echo "Welcome to My Guessing game!!!"
echo "Instructions: You need to guess number/count of files are in the current directory until you guess the correct answer."
echo "Good luck!!!"
 
function ask {
  echo "How many files are in there in current directory?"
  read guess 
  number_of_files=$(ls -1 | wc -l)
}

ask
while [[ $guess -ne $number_of_files ]]
do 
  if [[ $guess -ge $number_of_files ]] 
  then
    echo "Try a small number."
  else [[ $guess -le $number_of_files ]]
    echo "Try a bigg number." 
  fi
  ask
done

echo "Congratulation you guessed it right!!!"
echo "There are $number_of_files files in the current directory, which are: "
echo "--------------" && ls

