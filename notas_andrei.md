ver logs
tail -F -n 100 /data/log/serial-starter/current |  tai64nlocal


VER LOGS BATERIA DE PRUEBAS 1.73A B3_L1
tail -F -n 100 /data/log/dbus-serialbattery.ttyUSB3/current | tai64nlocal


subir a master y dsplegar con: 
 wget -O /tmp/install.sh https://raw.githubusercontent.com/d3sd1/dbus-test-cmd/master/etc/dbus-serialbattery/install.sh && sudo chmod +x /tmp/install.sh && /tmp/install.sh