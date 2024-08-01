if [ -z "$1" ]
then
  echo "Пожалуйста, укажите сообщение коммита"
  exit 1
fi

git init
git add .
git commit -m "$1"
git branch -M main
git remote add origin git@github.com:kozzztia/flex-lesson.git
git push -u origin main

echo "Всё готово!"

# chmod +x start.sh
# ./start.sh "Ваше сообщение коммита здесь"