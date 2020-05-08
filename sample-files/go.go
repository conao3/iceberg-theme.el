// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package scanner

import (
	"fmt"
	"go/token"
	"io"
	"sort"
)

// In an ErrorList, an error is represented by an *Error.
// The position Pos, if valid, points to the beginning of
// the offending token, and the error condition is described
// by Msg.
//
type Error struct {
	Pos token.Position
	Msg string
}

// Error implements the error interface.
func (e Error) Error() string {
	if e.Pos.Filename != "" || e.Pos.IsValid() {
		// don't print "<unknown position>"
		// TODO(gri) reconsider the semantics of Position.IsValid
		return e.Pos.String() + ": " + e.Msg
	}
	return e.Msg
}


// https://raw.githubusercontent.com/golang/go/master/src/go/scanner/errors.go
