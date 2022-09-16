#seeds for testing DB
user1 = User.create(id: 1, name: 'John Doe', email: 'john_doe@email.com');
group1 = Group.create(name: 'Supermarket', icon: "an_icon_string", user_id: user1.id)

# user2 = User.create(name: 'Jose Ramon', photo: 'joseramon@email.com');
