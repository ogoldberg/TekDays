class BootStrap {

     def init = { servletContext ->
         new TekUser(fullName: 'John Doe',
                      userName: 'jdoe',
                      password: 't0ps3cr3t',
                      email: 'jdoe@johnsgroovyshop.com',
                      website: 'blog.johnsgroovyshop.com',
                      bio: '''stuff about this guy''').save()

         new TekUser(fullName: 'John Deere',
                      userName: 'tractorman',
                      password: 't0ps3cr3t',
                      email: 'john.deere@porkproducers.org',
                      website: 'somewebsite.com',
                      bio: '''stuff about this guy''').save()

         new TekEvent(name: 'Gateway Code Camp',
                     city: 'Saint Louis, MO',
                     organizer: TekUser.findByFullName('John Doe'),
                     venue: 'TBD',
                     startDate: new Date('9/19/2009'),
                     endDate: new Date('9/19/2009'),
                     description: '''This conference will bring coders from acreoss
                                     platforms, languages, and industries together for
                                     an exciting day of tips, tricks, and tech! Stay sharp!
                                     Stay at the top of your game! But, don't stay home!
                                     Come and join us this fall for the first annual Gateway
                                     code Cap.''').save()
         new TekEvent(name: 'Perl Before Swine',
                      city: 'Austin, MN',
                      organizer: TekUser.findByFullName('John Deere'),
                      venue: 'SPAM Museum',
                      startDate: new Date('9/1/2009'),
                      endDate: new Date('9/1/2009'),
                      description: '''Join the Perl programmers of the Pork
                                      Producers of America as we hone our skills and ham it up a
                                      bit. You can show off your programming chops while trying to
                                      win a year's supply of pork chops in our programming
                                      challenge''').save()
               }

    def destroy = {

    }

 }