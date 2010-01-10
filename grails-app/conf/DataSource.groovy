dataSource {
	pooled = true
    driverClassName = "com.mysql.jdbc.Driver"
    username = "root"
	password = "foo"
}
hibernate {
    cache.use_second_level_cache=true
    cache.use_query_cache=true
    cache.provider_class='net.sf.ehcache.hibernate.EhCacheProvider'
}
// environment specific settings
environments {
	development {
		dataSource {
            driverClassName = "com.mysql.jdbc.Driver"
			dbCreate = "update" // one of 'create', 'create-drop','update'
            url = "jdbc:mysql://localhost:3306/tekDaysDev"
                }
	}
	test {
		dataSource {
            driverClassName = "org.hsqldb.jdbcDriver"
            username = "sa"
            password = ""
			dbCreate = "update"
			url = "jdbc:hsqldb:mem:testDb"
		}
	}
        production {
		dataSource {
            driverClassName = "com.mysql.jdbc.Driver"
			dbCreate = "update"
			url = "jdbc:mysql://localhost:3306/tekdays"
		}
	}
}
