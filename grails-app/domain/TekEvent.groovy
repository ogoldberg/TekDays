class TekEvent {

    String city
    String name
    TekUser organizer
    String venue
    Date startDate
    Date endDate
    String description
    static hasMany = [volunteers:TekUser, 
                      respondents:String,
                      sponsorships:Sponsorship]
    String toString(){
        "$name, $city"
    }

    static constraints = {
        name()
        city()
        description(maxSize:5000)
        organizer()
        venue()
        startDate()
        endDate()
        volunteers(nullable : true)
        sponsorships(nullable : true)
    }
}

