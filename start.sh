

if [[ -n $CONFIG_ENV_URL ]]; then
  echo " Found config.env File 📁📁"
	wget -q $CONFIG_ENV_URL -O /app/config.env
fi

if [ -f .env ] ; then  set -o allexport; source .env; set +o allexport ; fi


echo "Starting Bot...😺😺."
python3 update.py && python3 -m tobrot

