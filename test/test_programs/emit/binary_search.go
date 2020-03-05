package main

type l [10]int;

func bin_search(array l, start, end, target int) int {
	if start > end {
		return -1;
	}
	var mid = (end + start)/2;
	if array[mid] == target {
		return mid;
	} else if array[mid] > target {
		return bin_search(array, start, mid - 1, target);
	} else {
		return bin_search(array, mid + 1, end, target);
	}
}

func main() {
	var glist l
	glist[0] = 0
	glist[1] = 3
	glist[2] = 3
	glist[3] = 8
	glist[4] = 9
	glist[5] = 10
	glist[6] = 13
	glist[7] = 14
	glist[8] = 18
	glist[9] = 19

	println(bin_search(glist, 0, 9, 13))
}