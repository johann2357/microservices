# Microservices Project Make File

clean:
	rm -fr microservices.egg-info
	rm -fr /tmp/test.db

createdb:
	python  services/persistence/init_db.py

install: clean
	python setup.py install
	python setup.py develop

launch:
	python services/user.py &
	python services/tweet.py &

shutdown:
	ps -ef | grep "services/user.py" | grep -v grep | awk '{print $$2}' | xargs kill || echo "users service is not running"
	ps -ef | grep "services/tweet.py" | grep -v grep | awk '{print $$2}' | xargs kill || echo "tweets service is not running"
