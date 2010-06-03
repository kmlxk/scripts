netsh interface ip set dns name="本地连接" source=static addr=202.203.0.202 register=PRIMARY
netsh interface ip add dns name="本地连接" addr=202.203.2.226 index=2
netsh interface ip add dns name="本地连接" addr=202.203.1.203 index=3