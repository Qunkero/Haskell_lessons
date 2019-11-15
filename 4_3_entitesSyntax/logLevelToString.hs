module LogLevel where

import Data.Time.Clock
import Data.Time.Format
import System.Locale hiding (defaultTimeLocale)

timeToString :: UTCTime -> String
timeToString = formatTime defaultTimeLocale "%a %d %T"

data LogLevel = Error | Warning | Info

data LogEntry = LogEntry { timestamp :: UTCTime, logLevel :: LogLevel, message :: String }

logLevelToString :: LogLevel -> String
logLevelToString Error = "Error"
logLevelToString Warning = "Warning"
logLevelToString Info = "Info"

logEntryToString :: LogEntry -> String
logEntryToString entities =
  timeToString (timestamp entities) ++ ": "
  ++ logLevelToString (logLevel entities)
  ++ " : " ++ message entities
