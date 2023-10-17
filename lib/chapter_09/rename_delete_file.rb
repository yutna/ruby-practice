CURRENT_DIR = Dir.pwd + "/lib/chapter_09"
TEXT_FILE_PATH = CURRENT_DIR + "/rename_delete_file.txt"
RENAME_TEXT_FILE_PATH = CURRENT_DIR + "/rename_delete_file_mod.txt"

# File.rename(TEXT_FILE_PATH, RENAME_TEXT_FILE_PATH)
# File.open(TEXT_FILE_PATH, "w").puts("Hello, world!")
# File.delete(TEXT_FILE_PATH)
File.unlink(TEXT_FILE_PATH)

# File.unlink == File.delete (exactly the same)
