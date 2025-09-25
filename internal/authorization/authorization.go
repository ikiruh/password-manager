package authorization

import "fmt"

func Authorization() {
	var login, password string
	fmt.Scanf("Enter your login: %s\n", &login)
	fmt.Scanf("Enter your password: %s\n", &password)
}

func Registration() {
	var login, password1, password2 string
	fmt.Scanf("Enter your login: %s\n", &login)
	for {
		fmt.Scanf("Enter your password: %s\n", &password1)
		fmt.Scanf("Repeat your password: %s\n", &password2)
		if password1 != password2 {
			fmt.Println("The passwords don't match. Try again.")
		} else {
			break
		}
	}
}
