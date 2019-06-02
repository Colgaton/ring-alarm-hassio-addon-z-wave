echo Ring Alarm Integration
echo Node Version
node -v
echo NPM Version
npm -v
git --version

cp /data/options.json ring-alarm-mqtt/config.json

cd ring-alarm-mqtt
npm install
chmod +x ring-alarm-mqtt.js
patch -p0 < ring-alarm-mqtt.js.diff
DEBUG=ring-alarm-mqtt /ring-alarm-mqtt/ring-alarm-mqtt.js
