require "logger"

LOGGER_FILE_PATH =
  File.expand_path(File.join("lib", "chapter_16", "logger.log"))

# logger = Logger.new(STDERR)
# logger = Logger.new(LOGGER_FILE_PATH)

# specify log file ages
# logger = Logger.new(LOGGER_FILE_PATH, "daily")
# logger = Logger.new(LOGGER_FILE_PATH, "weekly")
# logger = Logger.new(LOGGER_FILE_PATH, "monthly")

# specify log file sizes
# logger = Logger.new(LOGGER_FILE_PATH, 10, 100_000)

# specify loggin levels
# logger = Logger.new(LOGGER_FILE_PATH)
# logger.sev_threshold = Logger::DEBUG

logger = Logger.new(STDOUT)
logger.debug "test"
logger.info "test"
logger.fatal "test"

# log with program name
# logger.info("my program") { "test" }

# dynamic logger severity
# logger.add(Logger::FATAL) { "message here" }

logger.close
