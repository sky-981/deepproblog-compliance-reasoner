# Install Notes

Environment setup that actually worked on this machine, so it can be reproduced later.

## Machine

- Windows 11, no GPU (everything here runs on CPU)
- Python 3.11.15 (same version on Windows and inside WSL2)
- WSL2 (Ubuntu) with Docker Engine installed and running. Not needed for this phase; it is the fallback environment if a Linux-only dependency shows up, and the future home for any container work.

Python 3.11 is pinned on purpose: DeepProbLog is known to break on newer Python versions (3.12+).

## Steps (Windows, native)

```
uv venv --seed --python 3.11 .venv
.venv\Scripts\activate
pip install -r requirements.txt
```

Note: `--seed` matters. Without it, uv creates the venv without pip and the `pip install` step fails.

## Verify

```
problog notebooks/00_problog_basics/hello.pl
```

Expected output:

```
coin(heads):    0.5
```

ProbLog prints a probability for each query atom, never "true" or "false".

## Status / issues so far

- `pip install problog` (2.2.10) worked first try on native Windows, no compiler or SDD issues. Verified on Python 3.11.15.
- A clean-venv rebuild from `requirements.txt` was tested and gives the same output, so the pin is reproducible.
- DeepProbLog is NOT installed yet. It arrives in Phase 6 and is the risky install (its exact inference depends on PySDD, which is fragile on Windows). If it fails natively, the fallback is running the same steps inside WSL2 (Ubuntu), which is already set up. These notes will be extended when that happens.
