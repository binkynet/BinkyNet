// Copyright 2020 Ewout Prangsma
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
// Author Ewout Prangsma
//

package util

import (
	"context"
	"fmt"
	"io"
)

// IsStreamClosed returns true when the error indicates
// a normal closing of a GRPC stream.
func IsStreamClosed(err error) bool {
	return err == io.EOF
}

// ContextCanceledOrUnexpected is used in errgroup.Go functions
// to ensure that an error is returned when a "Runner" function
// ended unexpectedly.
// Returns:
// - if ctx.Err() != nil -> ctx.Err()
// - if err != nil -> wrap(err, "component returned an unexpected error")
// - otherwise -> "component ended unexpectedly"
func ContextCanceledOrUnexpected(ctx context.Context, err error, component string) error {
	if err := ctx.Err(); err != nil {
		return err
	}
	if err != nil {
		return fmt.Errorf("%s returned an unexpected error: %w", component, err)
	}
	return fmt.Errorf("%s ended unexpectedly", component)
}
