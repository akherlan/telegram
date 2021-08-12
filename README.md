# Telegram bot sederhana dengan R

## Environment

-   R v4.0.4

-   RStudio v1.4.1717

-   renv v0.14.0

-   [telegram.bot](https://github.com/ebeneditos/telegram.bot/)

## Petunjuk

Kamu HARUS terlebih dahulu memiliki bot Telegram. Jalankan lewat RStudio (rekomendasi).

1.  Buat bot Telegram menggunakan [\@BotFather](https://t.me/BotFather) dengan [panduan ini](https://core.telegram.org/bots#6-botfather) dan salin token yang muncul.
2.  Jalankan perintah `file.edit(path.expand(file.path("~", ".Renviron")))` di R console.
3.  Ketikkan `R_TELEGRAM_BOT_{namabot}={token}` dimana {namabot} adalah username bot, sedangkan {token} tentu saja token botnya. Kemudian tutup dan simpan **.Renviron**.
4.  Buka **.Rprofile** lalu ganti nilai {admin_id} pada baris `admin_id <- {admin_id}` kemudian tutup dan simpan. {admin_id} merupakan nomor identitas milik akun admin.
5.  Restart R session.
6.  Buka file **initial_bot.R** dan ganti *"idnrbot"* dengan {namabot} kamu (yang tertulis di **.Renviron** tadi).
7.  Tekan Ctrl + Shift + S akan menjalankan skrip **initial_bot.R**, mulai sekarang bisa tes kirim pesan ke bot. Esc di console untuk stop, atau tekan tombol warna merah (di RStudio).

Pesan dari BotFather ketika berhasil membuat bot baru:

![token telegram bot api](img/token_bot.png "Token from BotFather")

**Referensi:** [github.com/telegram.bot/wiki](https://github.com/ebeneditos/telegram.bot/wiki "telegram.bot R package")
