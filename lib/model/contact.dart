class Contact {

  Contact({
    this.name,
    this.profilePicture,
    this.isOnline = false
});

  final String name;
  final String profilePicture;
  bool isOnline;
}



List<Contact> allContacts = [
  Contact(
    name: 'Augustus Lueilwitz',
    profilePicture: 'assets/images/contact1.jpg',
    isOnline: true,
  ),
  Contact(
    name: 'Lala MacGyver',
    profilePicture: 'assets/images/contact2.jpg',
    isOnline: true,
  ),
  Contact(
    name: 'Jarred Harris',
    profilePicture: 'assets/images/contact3.jpg',
  ),
  Contact(
    name: 'Michelle Obama',
    profilePicture: 'assets/images/contact4.jpg',
  ),
];
