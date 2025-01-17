
flutter build apk --no-tree-shake-icons --release --split-per-abi

mkdir -p ./gen/

mv ./build/app/outputs/flutter-apk/app-armeabi-v7a-release.apk ./gen/smartbaazar.apk

