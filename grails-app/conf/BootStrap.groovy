class BootStrap {
     
    def init = {
        servletContext ->
        if (grails.util.GrailsUtil.environment == 'development'){
            if (!TekEvent.get(1)) {
                // TODO if we haven't loaded the data yet

                createDummyTekUsers()
                createDummyTekEvents()
                createDummyVolunteers()
                def g1 = TekEvent.findByName('Gateway Code Camp')
                g1.addToRespondents('ben@grailsmail.com')
                g1.addToRespondents('zachary@linuxgurus.org')
                g1.addToRespondents('solomon@bootstrapwelding.com')
        
                g1.save()

                createDummySponsorships()

            }
        }
    }

      
    def destroy = {

    }


    def createDummyVolunteers() {
        def g1 = TekEvent.findByName('Gateway Code Camp')
        g1.addToVolunteers(new TekUser(fullName: 'Sarah Martin',
                userName: 'sarah',
                password: '54321',
                email: 'sarah@martinworld.com',
                website: 'www.martinworld.com',
                bio: 'Web designer and Grails afficianado.'))
        g1.addToVolunteers(new TekUser(fullName: 'Bill Smith',
                userName: 'Mr_Bill',
                password: '12345',
                email: 'mrbill@email.com',
                website: 'www.mrbillswebsite.com',
                bio: 'Software developer, claymation artist. '))
        g1.save()
    }

    def createDummySponsorships() {


        def s1 = new Sponsor(name: 'Contegix',
            website: 'contegix.com',
            description:'Beyond Managed Hosting for your Enterprise'
        ).save()
        def s2 = new Sponsor(name: 'Object Computing Incorporated',
            website: 'ociweb.com',
            description:'An OO Software Engineering Company'
        )

        assert s2.save()
        def g1 = TekEvent.findByName('Gateway Code Camp')
        def sp1 = new Sponsorship(event:g1,
            sponsor:s1,
            contributionType:'Other',
            description:'Cool T-Shirts')
        def sp2 = new Sponsorship(event:g1,
            sponsor:s2,
            contributionType:'Venue',
            description:'Will be paying for the Moscone')
        s1.addToSponsorships(sp1)
        s1.save()
        s2.addToSponsorships(sp2)
        s2.save()

        
        g1.addToSponsorships(sp1)
        g1.addToSponsorships(sp2)
        g1.save()
    }

    def createDummyTekUsers() {
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
    }

    def createDummyTekEvents() {

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
}