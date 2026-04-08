# Enable the Advanced Query Builder in Outlook

By default, Outlook's "Filter Criteria" dialog only allows AND logic between conditions. To create the [OWN Main search folder](../search-folders/yown.md), you need OR logic — and that requires the **Advanced Query Builder**, which is hidden behind a registry setting.

> ⚠️ This requires editing the Windows registry. Always back up your registry before making changes.

## Why you need it

The OWN Main search folder uses 5 conditions joined by **OR**:
```
read = No
OR categories contains P1
OR categories contains P2
OR categories contains P3
OR categories contains W
```

Without the Query Builder tab, the standard "Advanced" tab in the search folder criteria dialog joins everything with AND, which would produce an empty search folder (no email is simultaneously unread AND P1 AND P2 AND P3 AND W).

## How to enable it

1. Close Outlook
2. Press **Win + R**, type `regedit`, hit Enter
3. Navigate to:

   ```
   HKEY_CURRENT_USER\Software\Microsoft\Office\16.0\Outlook
   ```

   *Note: `16.0` is for Outlook 2016/2019/M365. For older versions:*
   - Outlook 2013: `15.0`
   - Outlook 2010: `14.0`
   - Outlook 365 retail: usually `16.0`

4. In the Outlook key, create a new **DWORD (32-bit) Value** named:

   ```
   QueryBuilder
   ```

   Leave the value as `0` (the existence of the key is what matters, not the value).

5. Close regedit, reopen Outlook
6. Open any folder → **Search** → **Search Tools** → **Advanced Find** → click **Advanced** tab
7. You should now see a new tab called **Query Builder** next to it

## Verify it works

Open the Query Builder tab. You should see a dropdown labeled **Logical Group: AND/OR/NOT** at the top. If the dropdown is there, you're set.

## Use the Query Builder for OWN Main

1. Open the Query Builder tab
2. Set the dropdown to **OR**
3. Add the 5 conditions one by one (read=No, categories contains P1, P2, P3, W)
4. Save the criteria as a search folder named "OWN"

## Troubleshooting

- **Tab doesn't appear**: check the registry path version number, restart Outlook
- **Tab appears but no OR option**: make sure you created the key as DWORD 32-bit
- **Outlook crashes**: remove the registry key, this is rare but reported on some Office versions

## Source

This trick has been documented since at least Outlook 2010. It's not officially supported by Microsoft but has been stable across all versions of Outlook desktop.
