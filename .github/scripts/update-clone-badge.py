"""Refresh the README badge from GitHub's rolling 14-day clone statistics."""

import json
import re
import sys
from datetime import datetime
from pathlib import Path
from urllib.parse import quote


def update_badge(readme, traffic):
    count = traffic["count"]
    if type(count) is not int or count < 0:
        raise ValueError("Expected a non-negative clone count")
    dates = sorted(datetime.fromisoformat(day["timestamp"]) for day in traffic["clones"])
    if not dates:
        raise ValueError("No reporting dates returned; keeping the existing badge")
    first, last = dates[0], dates[-1]
    start = f"{first:%b} {first.day}"
    if first.year != last.year:
        start += f", {first.year}"
    end = str(last.day) if (first.year, first.month) == (last.year, last.month) else f"{last:%b} {last.day}"
    period = f"{start}–{end}, {last.year}"
    message = quote(f"{count:,} · {period}", safe="")
    badge = (
        f"[![Downloads (Git clones): {count:,} during {period} (UTC)]"
        f"(https://img.shields.io/badge/clones-{message}-cc432e"
        "?style=for-the-badge&labelColor=150b0b)]"
        "(https://github.com/jagrat7/omarchy-infrared-snooze-theme/graphs/traffic)"
    )
    start_marker, end_marker = "<!-- clone-badge:start -->", "<!-- clone-badge:end -->"
    if readme.count(start_marker) != 1 or readme.count(end_marker) != 1:
        raise ValueError("Expected exactly one pair of clone badge markers")
    updated, replacements = re.subn(
        re.escape(start_marker) + r".*?" + re.escape(end_marker),
        lambda _: f"{start_marker}\n{badge}\n{end_marker}",
        readme,
        flags=re.DOTALL,
    )
    if replacements != 1:
        raise ValueError("Clone badge markers are out of order")
    return updated


if __name__ == "__main__":
    path = Path(sys.argv[1]) if len(sys.argv) > 1 else Path("README.md")
    updated = update_badge(path.read_text(), json.load(sys.stdin))
    path.write_text(updated)
