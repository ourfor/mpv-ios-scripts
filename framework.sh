mkdir -p headers
mkdir -p MPVKit/Frameworks
touch headers/dummy.h
xcodebuild -create-xcframework \
    -library lib/libmpv.a \
    -headers src/mpv-0.31.0/libmpv \
    -output MPVKit/Frameworks/mpv.xcframework
rm -rf headers/*

xcodebuild -create-xcframework \
    -library lib/libass.a \
    -headers src/libass-0.14.0/libass \
    -output MPVKit/Frameworks/ass.xcframework

touch headers/dummy.h
cp src/uchardet-0.0.6/src/uchardet.h headers/
xcodebuild -create-xcframework \
    -library lib/libuchardet.a \
    -headers headers \
    -output MPVKit/Frameworks/uchardet.xcframework
rm -rf headers/*

xcodebuild -create-xcframework \
    -library lib/libfreetype.a \
    -headers src/freetype-2.10.0/include \
    -output MPVKit/Frameworks/freetype.xcframework

touch headers/dummy.h
cp src/fribidi-1.0.8/lib/fribidi.h headers/
xcodebuild -create-xcframework \
    -library lib/libfribidi.a \
    -headers src/fribidi-1.0.8/lib/fribidi.h \
    -output MPVKit/Frameworks/fribidi.xcframework
rm -rf headers/*

touch headers/dummy.h
cp src/harfbuzz-2.6.4/src/hb.h headers/
xcodebuild -create-xcframework \
    -library lib/libharfbuzz.a \
    -headers headers \
    -output MPVKit/Frameworks/harfbuzz.xcframework
rm -rf headers

find MPVKit/Frameworks -name "dummy.h" |xargs -I % rm -rf %
