package model

const (
	Status_Empty = 0
	Status_Login = iota
	Status_Gaming
)

type Charactor struct {
	Fpid string
}
