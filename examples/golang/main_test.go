package main

import "testing"

func TestSum(t *testing.T) {
	r := sum(1, 2)
	if r != 3 {
		t.Error("failed!")
	}
}

func TestSum22(t *testing.T) {
	r := sum(1, 2)
	if r != 3 {
		t.Error("failed!")
	}
}


