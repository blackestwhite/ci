package main

import "testing"

func TestRun(t *testing.T) {
	expected := "Setup Travis CI for Golang"
	got := run()
	if expected != got {
		t.Fatalf("expected %v got %v", expected, got)
	}
}
