try:
	ionic serve --lab

resources:
	ionic resources

emulate:
	ionic emulate

build:
	ionic build android

install: platforms/android/build/outputs/apk/android-debug.apk
	scp platforms/android/build/outputs/apk/android-debug.apk mail:/usr/share/nginx/kmayra/targets/kmayra-debug.apk

upload: platforms/android/build/outputs/apk/android-debug.apk
	scp platforms/android/build/outputs/apk/android-debug.apk kmayra:/usr/share/nginx/kmayraApp/testing
