
s/<tt>/<code>/g;
s/<\/tt>/<\/code>/g;
s/<csharp>[\r\n]*/\`\`\`csharp\n/g;
s/[\r\n]*<\/csharp>/\n\`\`\`/g;
s/<nemerle>[\r\n]*/\`\`\`nemerle\n/g;
s/[\r\n]*<\/nemerle>/\n\`\`\`/g;
s/^\s{4,}$//g;

print
