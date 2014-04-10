dataSource {
 pooled = true
 driverClassName = "com.mysql.jdbc.Driver"
}
// environment specific settings
environments {
	development {
		dataSource {
		   dbCreate = "create-drop" // one of 'create', 'create-drop','update'
		   url = "[[jdbc:mysql://us-cdbr-cb-east-01.cleardb.net:3306/cb_cerradovivo]]"
		   username = "b439190d2b9814"
		   password = "d4bb4672"
		}
	}
	test {
		dataSource {
		   dbCreate = "update"
		   url = "[[jdbc:mysql://us-cdbr-cb-east-01.cleardb.net:3306/cb_cerradovivo]]"
		   username = "b439190d2b9814"
		   password = "d4bb4672"
		}
	}
	production {
		dataSource {
		   dbCreate = "update"
		   url = "[[jdbc:mysql://us-cdbr-cb-east-01.cleardb.net:3306/cb_cerradovivo]]"
		   username = "b439190d2b9814"
		   password = "d4bb4672"
		}
	}
}