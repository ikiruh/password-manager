package generate

import (
	"math/rand"
)

func GeneratePassword(numberCharacters uint8) string {
	var password string

	i := uint8(0)
	for i <= numberCharacters {
		p := rand.Uint32() % 94 + 33
		password += string(rune(p))
		i++
	}

	return password
}
