$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/generic.mk)
$(call inherit-product, $(TOPDIR)frameworks/base/data/sounds/AllAudio.mk)
# overrides
PRODUCT_BRAND := Freescale
PRODUCT_MANUFACTURER := Freescale

# Android infrastructures
PRODUCT_PACKAGES += \
        CarWeather                              \
        AppStore                                \
        LocalMusicCar                           \
        CarAssistant                            \
        PhoneMirror                             \
        Calendar                                \
	SystemUpdate				\
        TaskManager                             \
	iFlyIME                                 \
	FileManager                             \
	FmRadio                                 \
        libbqfm                 		\
        BorqsMusic                              \
	Sleep					\
	UserManual                              \
	StandBy					\
	FileManager				\
	CollectLog_Demo				\
	FactoryTest                             \
	LiveWallpapers				\
	LiveWallpapersPicker			\
	MagicSmokeWallpapers			\
	Gallery2				\
	Gallery		    			\
	SoundRecorder				\
	Camera					\
        LegacyCamera                            \
	Email					\
	CactusPlayer                            \
        BorqsDialer                             \
	WfdPlayer                               \
	ethernet                                \
	libfsl_wfd.so                           \
	fsl.imx.jar                             \
	hwcomposer_fsl.imx6.so                  \
	VideoEditor				\
	FSLProfileApp				\
	FSLProfileService			\
	VisualizationWallpapers			\
	CubeLiveWallpapers			\
	libRS					\
	librs_jni				\
	pppd					\
	ip-up-vpn				\
	wpa_supplicant				\
	rtl_wpa_supplicant			\
	wpa_supplicant.conf			\
	p2p_supplicant_overlay.conf		\
	wpa_supplicant_overlay.conf		\
        p2p_supplicant_advance_overlay.conf     \
	dispd					\
	ts_calibrator				\
	libion                                  \
	display_mode_fb0.conf                   \
	display_mode_fb2.conf                   \
	display_mode_fb4.conf                   \
	Emergency                               \
        onecall                                 \
        RoadCall                                \
        soscall                                 \
	PeccancyQuiry				\

# this is for common and 3c11

SPECIAL_PACKAGES :=\
        StartVR                                 \
        AutoFly                                 \
        AFAdapter                               \
        PassiveQuery                           	\
        Astrob5                                 \
        PositionReport                          \
        News                                    \
        Speech                                  \
        Gpsvalidation_3c11                      \

ifeq ($(PRODUCT_DEFINE), CIVIA3C15)

  SPECIAL_PACKAGES := \
         Astrob_3C15                             \
         News_3c15                               \
         Gpsvalidation_3c15                      \

#        Speech                                  \
#        StartVR                                 \
#        AutoFly                                 \
#        AFAdapter                               \


endif

# this is for AppleCarPlay

ifeq ($(BOARD_HAVE_CARPLAY), yes)

   SPECIAL_PACKAGES += \
         AppleCarPlay                            \

endif

PRODUCT_PACKAGES += $(SPECIAL_PACKAGES)

# Debug utils
PRODUCT_PACKAGES += \
	busybox					\
	bash					\
	taskset					\
	sqlite3					\
	libefence				\
	powerdebug

# Wifi AP mode
PRODUCT_PACKAGES += \
	hostapd 				\
	hostapd_cli

# keyboard mapping files.
PRODUCT_PACKAGES += \
	Dell_Dell_USB_Keyboard.kcm		\
	mxckpd.kcm				\

#audio related lib
PRODUCT_PACKAGES += \
	audio.primary.imx6			\
	audio_policy.conf			\
	tinyplay				\
	audio.a2dp.default			\
	audio.usb.default			\
	tinycap					\
	tinymix					\
	libsrec_jni				\
	libtinyalsa 				\
	libaudioutils

# imx6 Hardware HAL libs.
PRODUCT_PACKAGES += \
	sensors.SABRESD				\
	sensors.ARM2				\
	sensors.SABREAUTO			\
	overlay.imx6				\
	lights.imx6				\
	gralloc.imx6				\
	copybit.imx6				\
	hwcomposer.imx6				\
	camera.imx6				\
	power.imx6				\
	audio.r_submix.default			\
	libbt-vendor				\
	magd                                    \
	consumerir.imx6

# Bluetooth  services.
PRODUCT_PACKAGES += \
	uim-sysfs				\
        uim                                     \
        nFore_Zeus                              \
        nFore_Zeus_UI_Service
#        ar3kbdaddr_ar3001			\
#	PS_ASIC_ar3001				\
#	RamPatch_ar3001				\
#	ar3kbdaddr_ar3002			\
#	PS_ASIC_ar3002				\
#	RamPatch_ar3002				\

# Freescale VPU firmware files.
PRODUCT_PACKAGES += \
	libvpu					\
	vpu_fw_imx6q.bin			\
	vpu_fw_imx6d.bin			\

# Atheros wifi firmwre files.
#PRODUCT_PACKAGES += \
#	fw-3					\
#	bdata					\
#	athtcmd_ram				\
#	nullTestFlow				\
#	cfg80211.ko				\
#	compat.ko				\
#	ath6kl_sdio.ko				\
#	check_wifi_mac.sh

# Atheros wifi tool
#PRODUCT_PACKAGES += \
#	abtfilt					\
#	artagent				\
#	ath6kl-fwlog-record			\
#	athtestcmd				\
#	psatUtil				\
#	wmiconfig

# Intel PCIE wifi firmware
#PRODUCT_PACKAGES += \
#	iwlwifi-6000-4.ucode			\
#	iwlwifi-5000-5.ucode			\
#	iwlagn.ko

# wilink8 wifi
PRODUCT_PACKAGES += \
        wlcore.ko

# gps related lib
PRODUCT_PACKAGES += \
        gps.default                             \
	gps.SABRESD				\
	gps.ARM2				\
	gps.SABREAUTO				\
	Orion.ini 				\
	AR1520A-Auto.img 			\
	ingsvcd 				\
	libOrionCtl.so 				\
	OrionSys.so

# drm related lib
PRODUCT_PACKAGES += \
	drmserver                   		\
	libdrmframework_jni         		\
	libdrmframework             		\
	libdrmpassthruplugin        		\
	libfwdlockengine            		\
# power tool
PRODUCT_PACKAGES += \
	powerdebug

# gpu debug tool
PRODUCT_PACKAGES += \
	gmem_info

# Omx related libs, please align to device/fsl/proprietary/omx/fsl-omx.mk
omx_libs := \
	core_register					\
	component_register				\
	contentpipe_register				\
	fslomx.cfg					\
	media_profiles.xml				\
	media_codecs.xml				\
	ComponentRegistry.txt				\
	lib_omx_player_arm11_elinux			 \
	lib_omx_client_arm11_elinux			\
	lib_omx_core_mgr_v2_arm11_elinux		\
	lib_omx_core_v2_arm11_elinux			\
	lib_omx_osal_v2_arm11_elinux			\
	lib_omx_common_v2_arm11_elinux			\
	lib_omx_utils_v2_arm11_elinux			\
	lib_omx_res_mgr_v2_arm11_elinux			\
	lib_omx_clock_v2_arm11_elinux			\
	lib_omx_local_file_pipe_v2_arm11_elinux		\
	lib_omx_shared_fd_pipe_arm11_elinux		\
	lib_omx_async_write_pipe_arm11_elinux		\
	lib_omx_https_pipe_arm11_elinux			\
	lib_omx_fsl_parser_v2_arm11_elinux		\
	lib_omx_wav_parser_v2_arm11_elinux		\
	lib_omx_mp3_parser_v2_arm11_elinux		\
	lib_omx_aac_parser_v2_arm11_elinux		\
	lib_omx_flac_parser_v2_arm11_elinux		\
	lib_omx_pcm_dec_v2_arm11_elinux			\
	lib_omx_mp3_dec_v2_arm11_elinux			\
	lib_omx_aac_dec_v2_arm11_elinux			\
	lib_omx_amr_dec_v2_arm11_elinux			\
	lib_omx_vorbis_dec_v2_arm11_elinux		\
	lib_omx_flac_dec_v2_arm11_elinux		\
	lib_omx_audio_processor_v2_arm11_elinux		\
	lib_omx_sorenson_dec_v2_arm11_elinux		\
	lib_omx_android_audio_render_arm11_elinux	\
	lib_omx_audio_fake_render_arm11_elinux		\
	lib_omx_ipulib_render_arm11_elinux		\
	lib_avi_parser_arm11_elinux.3.0			\
	lib_divx_drm_arm11_elinux			\
	lib_mp4_parser_arm11_elinux.3.0			\
	lib_mkv_parser_arm11_elinux.3.0			\
	lib_flv_parser_arm11_elinux.3.0			\
	lib_id3_parser_arm11_elinux			\
	lib_wav_parser_arm11_elinux			\
	lib_mp3_parser_v2_arm11_elinux			\
	lib_aac_parser_arm11_elinux			\
	lib_flac_parser_arm11_elinux			\
	lib_mp3_dec_v2_arm12_elinux			\
	lib_aac_dec_v2_arm12_elinux			\
	lib_flac_dec_v2_arm11_elinux			\
	lib_nb_amr_dec_v2_arm9_elinux			\
	lib_oggvorbis_dec_v2_arm11_elinux		\
	lib_peq_v2_arm11_elinux				\
	lib_mpg2_parser_arm11_elinux.3.0		\
	libstagefrighthw				\
	libxec						\
	lib_omx_vpu_v2_arm11_elinux			\
	lib_omx_vpu_dec_v2_arm11_elinux			\
	lib_vpu_wrapper					\
	lib_ogg_parser_arm11_elinux.3.0		\
	libfslxec					\
	lib_omx_overlay_render_arm11_elinux             \
	lib_omx_fsl_muxer_v2_arm11_elinux \
	lib_omx_mp3_enc_v2_arm11_elinux \
	lib_omx_amr_enc_v2_arm11_elinux \
	lib_omx_android_audio_source_arm11_elinux \
	lib_omx_camera_source_arm11_elinux \
	lib_mp4_muxer_arm11_elinux \
	lib_mp3_enc_v2_arm12_elinux \
	lib_nb_amr_enc_v2_arm11_elinux \
	lib_omx_vpu_enc_v2_arm11_elinux \
	lib_ffmpeg_arm11_elinux	\
	lib_omx_https_pipe_v2_arm11_elinux \
	lib_omx_https_pipe_v3_arm11_elinux \
	lib_omx_udps_pipe_arm11_elinux \
	lib_omx_rtps_pipe_arm11_elinux \
	lib_omx_streaming_parser_arm11_elinux \
	lib_omx_surface_render_arm11_elinux \
	libfsl_jpeg_enc_arm11_elinux \
	lib_wb_amr_enc_arm11_elinux \
	lib_wb_amr_dec_arm9_elinux \
	lib_omx_aac_enc_v2_arm11_elinux \
	lib_amr_parser_arm11_elinux.3.0 \
	lib_aac_parser_arm11_elinux.3.0 \
	lib_aacd_wrap_arm12_elinux_android \
	lib_mp3d_wrap_arm12_elinux_android \
	lib_vorbisd_wrap_arm11_elinux_android \
	lib_mp3_parser_arm11_elinux.3.0 \
	lib_flac_parser_arm11_elinux.3.0 \
	lib_wav_parser_arm11_elinux.3.0 \
	lib_omx_ac3toiec937_arm11_elinux \
        lib_omx_ec3_dec_v2_arm11_elinux \
	lib_omx_libav_video_dec_arm11_elinux \
	libavcodec-55 \
	libavutil-53 \
	lib_omx_libav_audio_dec_arm11_elinux \



# Omx excluded libs
omx_excluded_libs :=					\
	lib_asf_parser_arm11_elinux.3.0			\
	lib_wma10_dec_v2_arm12_elinux		\
	lib_WMV789_dec_v2_arm11_elinux		\
	lib_aacplus_dec_v2_arm11_elinux			\
	lib_ac3_dec_v2_arm11_elinux			\
	\
	lib_omx_wma_dec_v2_arm11_elinux			\
	lib_omx_wmv_dec_v2_arm11_elinux			\
	lib_omx_ac3_dec_v2_arm11_elinux			\
	lib_wma10d_wrap_arm12_elinux_android \
	lib_aacplusd_wrap_arm12_elinux_android \
	lib_ac3d_wrap_arm11_elinux_android \
        lib_ddpd_wrap_arm12_elinux_android \
        lib_ddplus_dec_v2_arm12_elinux \
    lib_realad_wrap_arm11_elinux_android \
    lib_realaudio_dec_v2_arm11_elinux \
    lib_rm_parser_arm11_elinux.3.0 \
    lib_omx_ra_dec_v2_arm11_elinux \



PRODUCT_PACKAGES += $(omx_libs) $(omx_excluded_libs)

PRODUCT_PACKAGES += libubi ubinize ubiformat ubiattach ubidetach ubiupdatevol ubimkvol ubinfo mkfs.ubifs

# FUSE based emulated sdcard daemon
PRODUCT_PACKAGES += sdcard

# e2fsprogs libs
PRODUCT_PACKAGES += \
        e2fsck          \
	mke2fs		\
	libext2_blkid	\
	libext2_com_err	\
	libext2_e2p	\
	libext2_profile	\
	libext2_uuid	\
	libext2fs

# ntfs-3g binary
PRODUCT_PACKAGES += \
	ntfs-3g		\
	ntfsfix

# for CtsVerifier
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

PRODUCT_AAPT_CONFIG := normal mdpi

# ril related libs
PRODUCT_PACKAGES += \
    libreference-ril.so \
    libruntime-ril-port

PRODUCT_PACKAGES += \
    charger_res_images \
    charger

PRODUCT_COPY_FILES +=	\
	device/fsl/common/input/mx53_keypad.idc:system/usr/idc/mx53_keypad.idc \
	device/fsl/common/input/mx53_keypad.kl:system/usr/keylayout/mx53_keypad.kl \
	device/fsl/common/input/xf_keypad.idc:system/usr/idc/xf_keypad.idc \
        device/fsl/common/input/xf_keypad.kl:system/usr/keylayout/xf_keypad.kl \
	device/fsl/common/input/Atmel_maXTouch_Touchscreen.idc:system/usr/idc/Atmel_maXTouch_Touchscreen.idc \
	device/fsl/common/input/Vendor_0001_Product_0001.idc:system/usr/idc/Vendor_0001_Product_0001.idc \
	device/fsl/common/input/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
        device/fsl/imx6/bootanimation.zip:system/media/bootanimation.zip \
	device/fsl/imx6/poweron.wav:system/media/audio/ui/poweron.wav \
	device/fsl/imx6/poweron.ogg:system/media/audio/ui/poweron.ogg \
        device/fsl/imx6/etc/init.rc:root/init.rc \
	device/fsl/imx6/etc/apns-conf.xml:system/etc/apns-conf.xml \
	device/fsl/imx6/etc/init.usb.rc:root/init.freescale.usb.rc \
	device/fsl/imx6/etc/ueventd.freescale.rc:root/ueventd.freescale.rc \
	device/fsl/imx6/etc/ota.conf:system/etc/ota.conf \
	device/fsl/common/display/display_mode_fb0.conf:system/etc/display_mode_fb0.conf \
	device/fsl/common/display/display_mode_fb2.conf:system/etc/display_mode_fb2.conf \
	device/fsl/common/display/display_mode_fb4.conf:system/etc/display_mode_fb4.conf \
	device/fsl/sabreauto_6q/audio_policy.conf:system/etc/audio_policy.conf \
	device/fsl/imx6/package_scan_list.conf:system/etc/package_scan_list.conf

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# for property
PRODUCT_DEFAULT_PROPERTY_OVERRIDES := \
	persist.sys.usb.config=mtp

PRODUCT_DEFAULT_DEV_CERTIFICATE := \
        device/fsl/common/security/testkey

PRODUCT_LOCALES := zh_CN en_US

# include a google recommand heap config file.
include frameworks/native/build/tablet-7in-hdpi-1024-dalvik-heap.mk

-include device/google/gapps/gapps.mk
