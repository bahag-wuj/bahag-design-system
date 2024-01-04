format.sh#!/bin/sh

cd tokens

if [[ ! -d formatted-tokens ]]; then
  mkdir formatted-tokens
fi;

cat design-tokens.tokens.json | sed 's/01. primitives/01-primitives/g;s/02. semantic token/02-semantic-token/g;s/03. sizing/03-sizing/g' > formatted-tokens/formatted-tokens.json
