#include <stdio.h>
#include <string.h>

void solve()
{
    char s[105];
    // Read the string
    scanf("%s", s);

    int n = strlen(s);
    int found_duplicate = 0;

    // Check for any adjacent identical characters
    for (int i = 0; i < n - 1; i++)
    {
        if (s[i] == s[i + 1])
        {
            found_duplicate = 1;
            break;
        }
    }

    // If we found a pair, we can reduce the whole string to length 1.
    // Otherwise, we can't change anything, so the length remains n.
    if (found_duplicate)
    {
        printf("1\n");
    }
    else
    {
        printf("%d\n", n);
    }
}

int main()
{
    int t;
    // Read number of test cases
    if (scanf("%d", &t) == 1)
    {
        while (t--)
        {
            solve();
        }
    }
    return 0;
}