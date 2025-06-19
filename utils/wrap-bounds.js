#!/usr/bin/env node

const fs = require("fs");

const filePath = process.argv[2];
if (!filePath) {
  console.error("Usage: node wrap-bounds.js <file>");
  process.exit(1);
}

let content = fs.readFileSync(filePath, "utf8");

// Match `.bounds = { ... },` blocks with inner content
const boundsBlockRegex = /(\.bounds\s*=\s*{\s*\n)([\s\S]*?)(^\s*}\s*,)/gm;

const wrappedContent = content.replace(boundsBlockRegex, (match, start, inner, end) => {
  const updatedInner = inner.replace(
    /^(\s*\.\s*(left|right|top|bottom)\s*=\s*)(?!PX_TO_SUBPX\()(-?\d+)(\s*,?)/gm,
    (_, prefix, _key, value, suffix) => `${prefix}PX_TO_SUBPX(${value})${suffix}`
  );
  return `${start}${updatedInner}${end}`;
});

fs.writeFileSync(filePath, wrappedContent, "utf8");
console.log(`Updated: ${filePath}`);
