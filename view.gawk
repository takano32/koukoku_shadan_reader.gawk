#! gawk -f
BEGIN {
  conn = "/inet/tcp/0/koukoku.shadan.open.ad.jp/23";
  while ((conn |& getline) > 0) {
    print $0; fflush();
  }
  close(conn);
}

