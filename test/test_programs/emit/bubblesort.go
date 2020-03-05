package main

func bubblesort(items []int) {
    var (
        n = len(items)
        sorted = false
    )
    for !sorted {
        swapped := false
        for i := 0; i < n-1; i++; {
            if items[i] > items[i+1] {
				items[i+1] = items[i] ^ items[i+1]
				items[i] = items[i] ^ items[i+1]
				items[i+1] = items[i] ^ items[i+1]
                swapped = true
            }
        }
        if !swapped {
            sorted = true
        }
        n = n - 1
    }
}

func main() {
	var glist []int
	
	glist = append(glist, 2)
	glist = append(glist, 6)
	glist = append(glist, 9)
	glist = append(glist, 24)
	glist = append(glist, 26)
	glist = append(glist, 65)
	glist = append(glist, 20)
	glist = append(glist, 87)
	glist = append(glist, 6)
	glist = append(glist, 8)
	glist = append(glist, 35)

	bubblesort(glist)
	
	for i := 0; i < len(glist); i++; {
		println(glist[i])
	}
}