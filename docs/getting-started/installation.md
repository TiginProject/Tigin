# Installing/updating manually

> Installing manually is complicated. Don't attempt it unless you have no other option.

## Windows

1. Make a folder for your server. If you're updating an existing server, delete `Tigin.phar`, any file called `start`, and the `bin` folder from the folder.
2. Download the custom PHP binary for Windows [here](https://github.com/pmmp/PHP-Binaries/releases). **Make sure you get the right version for your chosen version of Tigin** (see below).
3. Right-click → click **Extract All**, pick your server folder and click **Extract**. Now you should have a folder called `bin`.
4. In the `bin` folder, double-click the file `vc_redist.x64.exe`, accept the terms and conditions, and install. This will install Microsoft Visual C++ Redistributable, which is needed by the PHP binary.
5. Download your chosen version of `Tigin.phar` and `start.cmd` from [here](https://github.com/TiginProject/Tigin/releases) and save them in your server folder.

Now you should be able to double-click `start.cmd` to start the server.

---

## Linux/MacOS

The following steps require you to use the **Terminal**.

1. `cd` to wherever you want to put the server (e.g. `cd /home/rookie`).
2. Make a folder for your server using `mkdir` (e.g. `mkdir tigin`). If you're updating an existing server, `cd` directly to your server's folder instead.
3. Run `rm -rf ./bin ./Tigin.phar ./start.sh`. This deletes any outdated server files (don't worry, your data won't be harmed).
4. Find the download link for the right PHP version for your OS. You can see a list of available ones [here](https://github.com/pmmp/PHP-Binaries/releases).
5. Run:

   ```sh
   curl -L <link to your chosen PHP binary> | tar -xz
   ```

   Now you should have a folder called `bin`.
   **Make sure you get the right version for your chosen version of Tigin** (see below).
6. Find the download link for your chosen version of `Tigin.phar` and `start.sh` from [here](https://github.com/TiginProject/Tigin/releases).
7. Run:

   ```sh
   curl -LO <link to Tigin.phar>
   ```
8. Run:

   ```sh
   curl -LO <link to start.sh>
   ```
9. Run:

   ```sh
   chmod +x ./start.sh
   ```

Now you should be able to run the server by running `./start.sh`.

---