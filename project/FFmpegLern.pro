TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt

SRC_PATH        =$${PWD}\..\src
FFMPEG_SRC_PATH =$${PWD}\..\src\ffmpeg-2.5.1
FFMPEG_LIB_PATH =$${PWD}\..\lib\ffmpeg-20141223-git-32c836c-win32-dev
SDL_LIB_PATH    =$${PWD}\..\lib\SDL-1.2.15

SOURCES += \
    #$${FFMPEG_SRC_PATH}\ffplay.c $${FFMPEG_SRC_PATH}\cmdutils.c \
    #$${FFMPEG_SRC_PATH}\ffmpeg.c \
        #$${FFMPEG_SRC_PATH}\ffmpeg_dxva2.c  \
        #$${FFMPEG_SRC_PATH}\ffmpeg_filter.c  \
        #$${FFMPEG_SRC_PATH}\ffmpeg_opt.c  \
        #$${FFMPEG_SRC_PATH}\cmdutils.c \
    #$${SRC_PATH}\FFmpegTutorialCode\tutorial01.c \
    #$${SRC_PATH}\FFmpegTutorialCode\tutorial02.c \
    #$${SRC_PATH}\FFmpegTutorialCode\tutorial03.c \
    #$${SRC_PATH}\FFmpegTutorialCode\tutorial04.c \
    #$${SRC_PATH}\FFmpegTutorialCode\tutorial05.c \
    #$${SRC_PATH}\FFmpegTutorialCode\tutorial06.c \
    $${SRC_PATH}\FFmpegTutorialCode\tutorial07.c \
    #$${FFMPEG_LIB_PATH}\doc\examples\avio_reading.c \
    #$${FFMPEG_LIB_PATH}\doc\examples\decoding_encoding.c \
    #$${FFMPEG_LIB_PATH}\doc\examples\demuxing_decoding.c \
    #$${FFMPEG_LIB_PATH}\doc\examples\extract_mvs.c \
    #$${FFMPEG_LIB_PATH}\doc\examples\filter_audio.c \
    #$${FFMPEG_LIB_PATH}\doc\examples\filtering_audio.c \
    #$${FFMPEG_LIB_PATH}\doc\examples\filtering_video.c \
    #$${FFMPEG_LIB_PATH}\doc\examples\metadata.c \
    #$${FFMPEG_LIB_PATH}\doc\examples\muxing.c \
    #$${FFMPEG_LIB_PATH}\doc\examples\remuxing.c \
    #$${FFMPEG_LIB_PATH}\doc\examples\resampling_audio.c \
    #$${FFMPEG_LIB_PATH}\doc\examples\scaling_video.c \
    #$${FFMPEG_LIB_PATH}\doc\examples\transcode_aac.c \
    #$${FFMPEG_LIB_PATH}\doc\examples\transcoding.c \

include(deployment.pri)
qtcAddDeployment()

win32:LIBS  += -L$${FFMPEG_LIB_PATH}\lib \
               -L$${SDL_LIB_PATH}\lib\x86\
               -lavcodec -lSDL -lavformat -lswscale -lavutil -lavfilter -lswresample -lavdevice -lm

INCLUDEPATH += $${FFMPEG_LIB_PATH}\include $${SDL_LIB_PATH}\include $${FFMPEG_SRC_PATH}
DEPENDPATH  += $${FFMPEG_LIB_PATH}\include $${SDL_LIB_PATH}\include $${FFMPEG_SRC_PATH}

