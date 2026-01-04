# So you wanna get another version of Chrome / Chromium

1. [Go here](https://chromiumdash.appspot.com/branches)
2. Find the version you want
3. Note the value in the **Branch Pos.** column
4. [Go here](https://commondatastorage.googleapis.com/chromium-browser-snapshots/index.html)
5. Select your architecture
6. In the **Filter** textbox, type in the value you noted on step 3
7. Click on the only folder that appears in the list
8. Right-click on **chrome-linux.zip** (or whatever the file is named depending on the arch you chose) and copy the download link
9. Adjust the download link in the ```get-chromium.sh``` file
10. Adjust ```run-chromium.sh``` if needed
11. Press play and rock n' roll