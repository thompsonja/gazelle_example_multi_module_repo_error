// Package stackdriver contains an log.Logger implementation that logs to
// Stackdriver and a metric exporter.
package stackdriver

import (
	"cloud.google.com/go/logging"
)

// Logger implements log.Logger, logging the resultant lines to Stackdriver
// for the configured client.
type Logger struct {
	lg     *logging.Logger
	errLg  *logging.Logger
	logID  string
	client *logging.Client
}
