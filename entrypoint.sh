echo "Initializing postgres db..."
while ! nc -z $DB_HOST $DB_PORT; do  sleep 1done
echo "postgres database has initialized successfully"fi
exec "$@"
