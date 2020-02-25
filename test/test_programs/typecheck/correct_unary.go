package test
func main() {
	a := -5
	b := -1.2
	var c rune
	c = -c
	d := ^5
	e := ^c
	f := !true
	var g struct {
		h int
		i struct {
			j int
		}
	}
	k := &g
	l := &g.h
	m := &g.i
	var o *int
	p := *o
}