def setup():
    from datetime import datetime
    from models import db, User, Tweet

    db.create_all()

    u = User(username='user31', email='user31@gmail.com')
    db.session.add(u)
    db.session.commit()

    tweet = Tweet(
        content="My first tweet!", author=u,
        pub_date=datetime.utcnow()
    )
    db.session.add(tweet)
    db.session.commit()

    tweet = Tweet(
        content="My second tweet!!", author=u,
        pub_date=datetime.utcnow()
    )
    db.session.add(tweet)
    db.session.commit()

    tweet = Tweet(
        content="My third tweet!!!", author=u,
        pub_date=datetime.utcnow()
    )
    db.session.add(tweet)
    db.session.commit()

    u = User(username='tester', email='tester@gmail.com')
    db.session.add(u)
    db.session.commit()

    tweet = Tweet(
        content="Test tweet!", author=u,
        pub_date=datetime.utcnow()
    )
    db.session.add(tweet)
    db.session.commit()

    tweet = Tweet(
        content="Test twitter!", author=u,
        pub_date=datetime.utcnow()
    )
    db.session.add(tweet)
    db.session.commit()


if __name__ == "__main__":
    setup()
