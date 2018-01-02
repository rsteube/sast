.dependencies | .[] | select(.vulnerabilities != null) | 
[
    {
     "tool": "owasp",
     "file": .fileName
    }
    +
    (
      .vulnerabilities | .[] |
      {
        "cve": .name,
        "severity": .severity,
        "message": .description,
        "url": (.references[0] | .url)
      }
    )
]

