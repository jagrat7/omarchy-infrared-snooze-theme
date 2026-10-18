-- Infrared Snooze: colours for gum prompts in Omarchy's terminal scripts
-- (menus, confirmations, inputs, spinners). Loaded by Hyprland at login, so
-- changes take effect for terminals opened after the next login.
--
-- Differences from Omarchy's generated version: the chosen item glows in the
-- accent instead of sitting on a barely visible selection background, filter
-- matches are amber so they don't look like the cursor, directories are blue,
-- and log levels are amber so they don't read as errors.

-- Gum Style (generic) Variables
hl.env("FOREGROUND", "#ead2ca")
hl.env("BACKGROUND", "#130b0d")
hl.env("BORDER_FOREGROUND", "#ff5c3a")
hl.env("BORDER_BACKGROUND", "#130b0d")

-- Gum Confirm Style Variables
hl.env("GUM_CONFIRM_PROMPT_FOREGROUND", "#ff5c3a")
hl.env("GUM_CONFIRM_PROMPT_BACKGROUND", "#130b0d")
hl.env("GUM_CONFIRM_SELECTED_FOREGROUND", "#130b0d")
hl.env("GUM_CONFIRM_SELECTED_BACKGROUND", "#ff5c3a")
hl.env("GUM_CONFIRM_UNSELECTED_FOREGROUND", "#ead2ca")
hl.env("GUM_CONFIRM_UNSELECTED_BACKGROUND", "#1f1215")

-- Gum Input Style Variables
hl.env("GUM_INPUT_PROMPT_FOREGROUND", "#ff5c3a")
hl.env("GUM_INPUT_PROMPT_BACKGROUND", "#130b0d")
hl.env("GUM_INPUT_PLACEHOLDER_FOREGROUND", "#7d5d60")
hl.env("GUM_INPUT_PLACEHOLDER_BACKGROUND", "#130b0d")
hl.env("GUM_INPUT_CURSOR_FOREGROUND", "#ff5c3a")
hl.env("GUM_INPUT_CURSOR_BACKGROUND", "#130b0d")
hl.env("GUM_INPUT_HEADER_FOREGROUND", "#8c6f6d")
hl.env("GUM_INPUT_HEADER_BACKGROUND", "#130b0d")

-- Gum Choose Style Variables
hl.env("GUM_CHOOSE_CURSOR_FOREGROUND", "#ff5c3a")
hl.env("GUM_CHOOSE_CURSOR_BACKGROUND", "#130b0d")
hl.env("GUM_CHOOSE_HEADER_FOREGROUND", "#8c6f6d")
hl.env("GUM_CHOOSE_HEADER_BACKGROUND", "#130b0d")
hl.env("GUM_CHOOSE_ITEM_FOREGROUND", "#ead2ca")
hl.env("GUM_CHOOSE_ITEM_BACKGROUND", "#130b0d")
hl.env("GUM_CHOOSE_SELECTED_FOREGROUND", "#ff5c3a")
hl.env("GUM_CHOOSE_SELECTED_BACKGROUND", "#130b0d")

-- Gum Filter Style Variables
hl.env("GUM_FILTER_PROMPT_FOREGROUND", "#ff5c3a")
hl.env("GUM_FILTER_PROMPT_BACKGROUND", "#130b0d")
hl.env("GUM_FILTER_TEXT_FOREGROUND", "#ead2ca")
hl.env("GUM_FILTER_TEXT_BACKGROUND", "#130b0d")
hl.env("GUM_FILTER_MATCH_FOREGROUND", "#f2a65a")
hl.env("GUM_FILTER_CURSOR_TEXT_FOREGROUND", "#fcece6")
hl.env("GUM_FILTER_CURSOR_TEXT_BACKGROUND", "#130b0d")
hl.env("GUM_FILTER_SELECTED_FOREGROUND", "#ff5c3a")
hl.env("GUM_FILTER_SELECTED_BACKGROUND", "#130b0d")
hl.env("GUM_FILTER_INDICATOR_FOREGROUND", "#ff5c3a")
hl.env("GUM_FILTER_HEADER_FOREGROUND", "#8c6f6d")
hl.env("GUM_FILTER_MATCH_BACKGROUND", "#130b0d")
hl.env("GUM_FILTER_HEADER_BACKGROUND", "#130b0d")
hl.env("GUM_FILTER_PLACEHOLDER_FOREGROUND", "#7d5d60")
hl.env("GUM_FILTER_PLACEHOLDER_BACKGROUND", "#130b0d")
hl.env("GUM_FILTER_INDICATOR_BACKGROUND", "#130b0d")
hl.env("GUM_FILTER_SELECTED_PREFIX_FOREGROUND", "#ff5c3a")
hl.env("GUM_FILTER_SELECTED_PREFIX_BACKGROUND", "#130b0d")
hl.env("GUM_FILTER_UNSELECTED_PREFIX_FOREGROUND", "#7d5d60")
hl.env("GUM_FILTER_UNSELECTED_PREFIX_BACKGROUND", "#130b0d")

-- Gum Table Style Variables
hl.env("GUM_TABLE_HEADER_FOREGROUND", "#ff5c3a")
hl.env("GUM_TABLE_HEADER_BACKGROUND", "#130b0d")
hl.env("GUM_TABLE_CELL_FOREGROUND", "#ead2ca")
hl.env("GUM_TABLE_CELL_BACKGROUND", "#130b0d")
hl.env("GUM_TABLE_BORDER_FOREGROUND", "#7d5d60")
hl.env("GUM_TABLE_BORDER_BACKGROUND", "#130b0d")
hl.env("GUM_TABLE_SELECTED_FOREGROUND", "#fcece6")
hl.env("GUM_TABLE_SELECTED_BACKGROUND", "#3b1c22")

-- Gum Spin Style Variables
hl.env("GUM_SPIN_SPINNER_FOREGROUND", "#ff5c3a")
hl.env("GUM_SPIN_SPINNER_BACKGROUND", "#130b0d")
hl.env("GUM_SPIN_TITLE_FOREGROUND", "#ead2ca")
hl.env("GUM_SPIN_TITLE_BACKGROUND", "#130b0d")

-- Gum File Style Variables
hl.env("GUM_FILE_CURSOR_FOREGROUND", "#ff5c3a")
hl.env("GUM_FILE_CURSOR_BACKGROUND", "#130b0d")
hl.env("GUM_FILE_SYMLINK_FOREGROUND", "#7fb5ab")
hl.env("GUM_FILE_SYMLINK_BACKGROUND", "#130b0d")
hl.env("GUM_FILE_DIRECTORY_FOREGROUND", "#8d9fd8")
hl.env("GUM_FILE_DIRECTORY_BACKGROUND", "#130b0d")
hl.env("GUM_FILE_FILE_FOREGROUND", "#ead2ca")
hl.env("GUM_FILE_FILE_BACKGROUND", "#130b0d")
hl.env("GUM_FILE_PERMISSIONS_FOREGROUND", "#7d5d60")
hl.env("GUM_FILE_PERMISSIONS_BACKGROUND", "#130b0d")
hl.env("GUM_FILE_SELECTED_FOREGROUND", "#ff5c3a")
hl.env("GUM_FILE_SELECTED_BACKGROUND", "#130b0d")
hl.env("GUM_FILE_FILE_SIZE_FOREGROUND", "#7d5d60")
hl.env("GUM_FILE_FILE_SIZE_BACKGROUND", "#130b0d")
hl.env("GUM_FILE_HEADER_FOREGROUND", "#8c6f6d")
hl.env("GUM_FILE_HEADER_BACKGROUND", "#130b0d")

-- Gum Pager Style Variables
hl.env("GUM_PAGER_FOREGROUND", "#ead2ca")
hl.env("GUM_PAGER_BACKGROUND", "#130b0d")
hl.env("GUM_PAGER_LINE_NUMBER_FOREGROUND", "#7d5d60")
hl.env("GUM_PAGER_LINE_NUMBER_BACKGROUND", "#130b0d")
hl.env("GUM_PAGER_MATCH_FOREGROUND", "#fcece6")
hl.env("GUM_PAGER_MATCH_BACKGROUND", "#3b1c22")
hl.env("GUM_PAGER_MATCH_HIGH_FOREGROUND", "#130b0d")
hl.env("GUM_PAGER_MATCH_HIGH_BACKGROUND", "#ff5c3a")
hl.env("GUM_PAGER_HELP_FOREGROUND", "#7d5d60")
hl.env("GUM_PAGER_HELP_BACKGROUND", "#130b0d")

-- Gum Write Style Variables
hl.env("GUM_WRITE_BASE_FOREGROUND", "#ead2ca")
hl.env("GUM_WRITE_BASE_BACKGROUND", "#130b0d")
hl.env("GUM_WRITE_CURSOR_LINE_NUMBER_FOREGROUND", "#7d5d60")
hl.env("GUM_WRITE_CURSOR_LINE_NUMBER_BACKGROUND", "#130b0d")
hl.env("GUM_WRITE_CURSOR_LINE_FOREGROUND", "#ead2ca")
hl.env("GUM_WRITE_CURSOR_LINE_BACKGROUND", "#1f1215")
hl.env("GUM_WRITE_CURSOR_FOREGROUND", "#ff5c3a")
hl.env("GUM_WRITE_CURSOR_BACKGROUND", "#130b0d")
hl.env("GUM_WRITE_END_OF_BUFFER_FOREGROUND", "#7d5d60")
hl.env("GUM_WRITE_END_OF_BUFFER_BACKGROUND", "#130b0d")
hl.env("GUM_WRITE_LINE_NUMBER_FOREGROUND", "#7d5d60")
hl.env("GUM_WRITE_LINE_NUMBER_BACKGROUND", "#130b0d")
hl.env("GUM_WRITE_HEADER_FOREGROUND", "#8c6f6d")
hl.env("GUM_WRITE_HEADER_BACKGROUND", "#130b0d")
hl.env("GUM_WRITE_PLACEHOLDER_FOREGROUND", "#7d5d60")
hl.env("GUM_WRITE_PLACEHOLDER_BACKGROUND", "#130b0d")
hl.env("GUM_WRITE_PROMPT_FOREGROUND", "#ead2ca")
hl.env("GUM_WRITE_PROMPT_BACKGROUND", "#130b0d")

-- Gum Log Style Variables
hl.env("GUM_LOG_LEVEL_FOREGROUND", "#f2a65a")
hl.env("GUM_LOG_LEVEL_BACKGROUND", "#130b0d")
hl.env("GUM_LOG_TIME_FOREGROUND", "#7d5d60")
hl.env("GUM_LOG_TIME_BACKGROUND", "#130b0d")
hl.env("GUM_LOG_PREFIX_FOREGROUND", "#ead2ca")
hl.env("GUM_LOG_PREFIX_BACKGROUND", "#130b0d")
hl.env("GUM_LOG_MESSAGE_FOREGROUND", "#ead2ca")
hl.env("GUM_LOG_MESSAGE_BACKGROUND", "#130b0d")
hl.env("GUM_LOG_KEY_FOREGROUND", "#8d9fd8")
hl.env("GUM_LOG_KEY_BACKGROUND", "#130b0d")
hl.env("GUM_LOG_VALUE_FOREGROUND", "#ead2ca")
hl.env("GUM_LOG_VALUE_BACKGROUND", "#130b0d")
hl.env("GUM_LOG_SEPARATOR_FOREGROUND", "#7d5d60")
hl.env("GUM_LOG_SEPARATOR_BACKGROUND", "#130b0d")
