cd yeek-fetch-new
git pull
yarn
export PATH='$(yarn global bin):$PATH
pm2 start fakeIndex.js
