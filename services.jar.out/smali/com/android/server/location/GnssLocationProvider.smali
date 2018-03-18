.class public Lcom/android/server/location/GnssLocationProvider;
.super Ljava/lang/Object;
.source "GnssLocationProvider.java"

# interfaces
.implements Lcom/android/server/location/LocationProviderInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GnssLocationProvider$1;,
        Lcom/android/server/location/GnssLocationProvider$2;,
        Lcom/android/server/location/GnssLocationProvider$3;,
        Lcom/android/server/location/GnssLocationProvider$4;,
        Lcom/android/server/location/GnssLocationProvider$5;,
        Lcom/android/server/location/GnssLocationProvider$6;,
        Lcom/android/server/location/GnssLocationProvider$7;,
        Lcom/android/server/location/GnssLocationProvider$BackOff;,
        Lcom/android/server/location/GnssLocationProvider$GnssSystemInfoProvider;,
        Lcom/android/server/location/GnssLocationProvider$GpsIndoorOptimization;,
        Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;,
        Lcom/android/server/location/GnssLocationProvider$GpsProviderListener;,
        Lcom/android/server/location/GnssLocationProvider$GpsRequest;,
        Lcom/android/server/location/GnssLocationProvider$NetworkLocationListener;,
        Lcom/android/server/location/GnssLocationProvider$ProviderHandler;
    }
.end annotation


# static fields
.field private static final ADD_LISTENER:I = 0x8

.field private static final AGPS_DATA_CONNECTION_CLOSED:I = 0x0

.field private static final AGPS_DATA_CONNECTION_OPEN:I = 0x2

.field private static final AGPS_DATA_CONNECTION_OPENING:I = 0x1

.field private static final AGPS_REF_LOCATION_TYPE_GSM_CELLID:I = 0x1

.field private static final AGPS_REF_LOCATION_TYPE_UMTS_CELLID:I = 0x2

.field private static final AGPS_REG_LOCATION_TYPE_MAC:I = 0x3

.field private static final AGPS_RIL_REQUEST_REFLOC_CELLID:I = 0x1

.field private static final AGPS_RIL_REQUEST_REFLOC_MAC:I = 0x2

.field private static final AGPS_RIL_REQUEST_SETID_IMSI:I = 0x1

.field private static final AGPS_RIL_REQUEST_SETID_MSISDN:I = 0x2

.field private static final AGPS_SETID_TYPE_IMSI:I = 0x1

.field private static final AGPS_SETID_TYPE_MSISDN:I = 0x2

.field private static final AGPS_SETID_TYPE_NONE:I = 0x0

.field private static final AGPS_SUPL_MODE_MSA:I = 0x2

.field private static final AGPS_SUPL_MODE_MSB:I = 0x1

.field private static final AGPS_TYPE_C2K:I = 0x2

.field private static final AGPS_TYPE_SUPL:I = 0x1

.field private static final ALARM_TIMEOUT:Ljava/lang/String; = "com.android.internal.location.ALARM_TIMEOUT"

.field private static final ALARM_WAKEUP:Ljava/lang/String; = "com.android.internal.location.ALARM_WAKEUP"

.field private static final APN_INVALID:I = 0x0

.field private static final APN_IPV4:I = 0x1

.field private static final APN_IPV4V6:I = 0x3

.field private static final APN_IPV6:I = 0x2

.field private static final BATTERY_SAVER_GPS_MODE:Ljava/lang/String; = "batterySaverGpsMode"

.field private static final BATTERY_SAVER_MODE_DISABLED_WHEN_SCREEN_OFF:I = 0x1

.field private static final BATTERY_SAVER_MODE_NO_CHANGE:I = 0x0

.field private static final CHECK_LOCATION:I = 0x1

.field private static final DEBUG:Z

.field private static final DEFAULT_PROPERTIES_FILE:Ljava/lang/String; = "/etc/gps.conf"

.field private static final DOWNLOAD_XTRA_DATA:I = 0x6

.field private static final DOWNLOAD_XTRA_DATA_FINISHED:I = 0xb

.field private static final ENABLE:I = 0x2

.field private static final GPS_AGPS_DATA_CONNECTED:I = 0x3

.field private static final GPS_AGPS_DATA_CONN_DONE:I = 0x4

.field private static final GPS_AGPS_DATA_CONN_FAILED:I = 0x5

.field private static final GPS_CAPABILITY_GEOFENCING:I = 0x20

.field private static final GPS_CAPABILITY_MEASUREMENTS:I = 0x40

.field private static final GPS_CAPABILITY_MSA:I = 0x4

.field private static final GPS_CAPABILITY_MSB:I = 0x2

.field private static final GPS_CAPABILITY_NAV_MESSAGES:I = 0x80

.field private static final GPS_CAPABILITY_ON_DEMAND_TIME:I = 0x10

.field private static final GPS_CAPABILITY_SCHEDULING:I = 0x1

.field private static final GPS_CAPABILITY_SINGLE_SHOT:I = 0x8

.field private static final GPS_DELETE_ALL:I = 0xffff

.field private static final GPS_DELETE_ALMANAC:I = 0x2

.field private static final GPS_DELETE_CELLDB_INFO:I = 0x8000

.field private static final GPS_DELETE_EPHEMERIS:I = 0x1

.field private static final GPS_DELETE_HEALTH:I = 0x40

.field private static final GPS_DELETE_IONO:I = 0x10

.field private static final GPS_DELETE_POSITION:I = 0x4

.field private static final GPS_DELETE_RTI:I = 0x400

.field private static final GPS_DELETE_SADATA:I = 0x200

.field private static final GPS_DELETE_SVDIR:I = 0x80

.field private static final GPS_DELETE_SVSTEER:I = 0x100

.field private static final GPS_DELETE_TIME:I = 0x8

.field private static final GPS_DELETE_UTC:I = 0x20

.field private static final GPS_GEOFENCE_AVAILABLE:I = 0x2

.field private static final GPS_GEOFENCE_ERROR_GENERIC:I = -0x95

.field private static final GPS_GEOFENCE_ERROR_ID_EXISTS:I = -0x65

.field private static final GPS_GEOFENCE_ERROR_ID_UNKNOWN:I = -0x66

.field private static final GPS_GEOFENCE_ERROR_INVALID_TRANSITION:I = -0x67

.field private static final GPS_GEOFENCE_ERROR_TOO_MANY_GEOFENCES:I = 0x64

.field private static final GPS_GEOFENCE_OPERATION_SUCCESS:I = 0x0

.field private static final GPS_GEOFENCE_UNAVAILABLE:I = 0x1

.field private static final GPS_HAS_FOREGROUND_REQUEST:I = 0x65

.field private static final GPS_POLLING_THRESHOLD_INTERVAL:I = 0x2710

.field private static final GPS_POSITION_MODE_MS_ASSISTED:I = 0x2

.field private static final GPS_POSITION_MODE_MS_BASED:I = 0x1

.field private static final GPS_POSITION_MODE_STANDALONE:I = 0x0

.field private static final GPS_POSITION_RECURRENCE_PERIODIC:I = 0x0

.field private static final GPS_POSITION_RECURRENCE_SINGLE:I = 0x1

.field private static final GPS_RELEASE_AGPS_DATA_CONN:I = 0x2

.field private static final GPS_REQUEST_AGPS_DATA_CONN:I = 0x1

.field private static final GPS_STATUS_ENGINE_OFF:I = 0x4

.field private static final GPS_STATUS_ENGINE_ON:I = 0x3

.field private static final GPS_STATUS_NONE:I = 0x0

.field private static final GPS_STATUS_SESSION_BEGIN:I = 0x1

.field private static final GPS_STATUS_SESSION_END:I = 0x2

.field private static final INITIALIZE_HANDLER:I = 0xd

.field private static final INJECT_NTP_TIME:I = 0x5

.field private static final INJECT_NTP_TIME_FINISHED:I = 0xa

.field private static final LOCATION_HAS_ACCURACY:I = 0x10

.field private static final LOCATION_HAS_ALTITUDE:I = 0x2

.field private static final LOCATION_HAS_BEARING:I = 0x8

.field private static final LOCATION_HAS_LAT_LONG:I = 0x1

.field private static final LOCATION_HAS_SPEED:I = 0x4

.field private static final LOCATION_INVALID:I = 0x0

.field private static final LPP_PROFILE:Ljava/lang/String; = "persist.sys.gps.lpp"

.field private static final MAX_RETRY_INTERVAL:J = 0xdbba00L

.field private static final MAX_SVS:I = 0x40

.field private static final NO_FIX_TIMEOUT:I = 0xea60

.field private static final NTP_INTERVAL:J = 0x5265c00L

.field private static final PROPERTIES:Lcom/android/internal/location/ProviderProperties;

.field private static final PROPERTIES_FILE_PREFIX:Ljava/lang/String; = "/etc/gps"

.field private static final PROPERTIES_FILE_SUFFIX:Ljava/lang/String; = ".conf"

.field private static final RECENT_FIX_TIMEOUT:J = 0x2710L

.field private static final RELEASE_SUPL_CONNECTION:I = 0xf

.field private static final REMOVE_LISTENER:I = 0x9

.field private static final REQUEST_SUPL_CONNECTION:I = 0xe

.field private static final RETRY_INTERVAL:J = 0x493e0L

.field private static final SET_REQUEST:I = 0x3

.field private static final SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field private static final STATE_DOWNLOADING:I = 0x1

.field private static final STATE_IDLE:I = 0x2

.field private static final STATE_PENDING_NETWORK:I = 0x0

.field private static final SUBSCRIPTION_OR_SIM_CHANGED:I = 0xc

.field private static final TAG:Ljava/lang/String; = "GnssLocationProvider"

.field private static final TCP_MAX_PORT:I = 0xffff

.field private static final TCP_MIN_PORT:I = 0x0

.field private static final UPDATE_LOCATION:I = 0x7

.field private static final UPDATE_NETWORK_STATE:I = 0x4

.field private static final VERBOSE:Z

.field private static final VzwGid1List:[Ljava/lang/String;

.field private static final VzwMccMncList:[Ljava/lang/String;

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "GnssLocationProvider"


# instance fields
.field private mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

.field private mAGpsDataConnectionState:I

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mC2KServerHost:Ljava/lang/String;

.field private mC2KServerPort:I

.field private mClientSource:Landroid/os/WorkSource;

.field private mCn0s:[F

.field private final mConnMgr:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mDisableGps:Z

.field private mDownloadXtraDataPending:I

.field private mEnabled:Z

.field private mEngineCapabilities:I

.field private mEngineOn:Z

.field private mFixInterval:I

.field private mFixRequestTime:J

.field private mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

.field private final mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

.field private final mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

.field private final mGnssStatusProvider:Landroid/location/IGnssStatusProvider;

.field private mGpsGeofenceBinder:Landroid/location/IGpsGeofenceHardware;

.field private mGpsIndoorOpti:Lcom/android/server/location/GnssLocationProvider$GpsIndoorOptimization;

.field private mGpsNotificationOpti:Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;

.field private mHandler:Landroid/os/Handler;

.field private final mILocationManager:Landroid/location/ILocationManager;

.field private mInjectNtpTimePending:I

.field private mLastFixTime:J

.field private final mListenerHelper:Lcom/android/server/location/GnssStatusListenerHelper;

.field private mLocation:Landroid/location/Location;

.field private mLocationExtras:Landroid/os/Bundle;

.field private mLocationFlags:I

.field private mLock:Ljava/lang/Object;

.field private final mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

.field private mNavigating:Z

.field private final mNetInitiatedListener:Landroid/location/INetInitiatedListener;

.field private final mNetworkConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mNmeaBuffer:[B

.field private mNtpBackOff:Lcom/android/server/location/GnssLocationProvider$BackOff;

.field private final mNtpTime:Landroid/util/NtpTrustedTime;

.field private mOnDemandTimeInjection:Z

.field private final mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mPositionMode:I

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mProperties:Ljava/util/Properties;

.field private mProviderRequest:Lcom/android/internal/location/ProviderRequest;

.field private mSingleShot:Z

.field private mStarted:Z

.field private mStatus:I

.field private mStatusUpdateTime:J

.field private final mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mSuplEsEnabled:Z

.field private mSuplServerHost:Ljava/lang/String;

.field private mSuplServerPort:I

.field private mSupportSuplHostSelection:Z

.field private mSupportsXtra:Z

.field private mSvAzimuths:[F

.field private mSvCount:I

.field private mSvElevations:[F

.field private mSvidWithFlags:[I

.field private mTimeToFirstFix:I

.field private final mTimeoutIntent:Landroid/app/PendingIntent;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mWakeupIntent:Landroid/app/PendingIntent;

.field private mWorkSource:Landroid/os/WorkSource;

.field private mXtraBackOff:Lcom/android/server/location/GnssLocationProvider$BackOff;

.field private mYearOfHardware:I


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/GnssLocationProvider$BackOff;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNtpBackOff:Lcom/android/server/location/GnssLocationProvider$BackOff;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/location/GnssLocationProvider;)Landroid/util/NtpTrustedTime;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/location/GnssLocationProvider;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mOnDemandTimeInjection:Z

    return v0
.end method

.method static synthetic -get13(Lcom/android/server/location/GnssLocationProvider;)Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/server/location/GnssLocationProvider;)Ljava/util/Properties;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mProperties:Ljava/util/Properties;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/server/location/GnssLocationProvider;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/GnssLocationProvider$BackOff;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mXtraBackOff:Lcom/android/server/location/GnssLocationProvider$BackOff;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/server/location/GnssLocationProvider;)I
    .locals 1

    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mYearOfHardware:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/location/GnssLocationProvider;)Landroid/net/ConnectivityManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/location/GnssLocationProvider;)I
    .locals 1

    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadXtraDataPending:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGpsNotificationOpti:Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/location/GnssLocationProvider;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/location/GnssLocationProvider;)I
    .locals 1

    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mInjectNtpTimePending:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/GnssStatusListenerHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mListenerHelper:Lcom/android/server/location/GnssStatusListenerHelper;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/location/GnssLocationProvider;)Landroid/net/ConnectivityManager$NetworkCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNetworkConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/location/GnssLocationProvider;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadXtraDataPending:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/location/GnssLocationProvider;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/location/GnssLocationProvider;->mInjectNtpTimePending:I

    return p1
.end method

.method static synthetic -wrap0(IDDDIIII)Z
    .locals 1
    .param p0, "geofenceId"    # I
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "radius"    # D
    .param p7, "lastTransition"    # I
    .param p8, "monitorTransitions"    # I
    .param p9, "notificationResponsivenes"    # I
    .param p10, "unknownTimer"    # I

    .prologue
    invoke-static/range {p0 .. p10}, Lcom/android/server/location/GnssLocationProvider;->native_add_geofence(IDDDIIII)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1()Z
    .locals 1

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->native_is_agps_ril_supported()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/location/GnssLocationProvider;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_stop_measurement_collection()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap11(Lcom/android/server/location/GnssLocationProvider;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_stop_navigation_message_collection()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap12(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->checkSmsSuplInit(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->checkWapSuplInit(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/location/GnssLocationProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->handleDisable()V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/location/GnssLocationProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->handleDownloadXtraData()V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/location/GnssLocationProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->handleEnable()V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/location/GnssLocationProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->handleInjectNtpTime()V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/server/location/GnssLocationProvider;I)V
    .locals 0
    .param p1, "agpsDataConnStatus"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->handleReleaseSuplConnection(I)V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/server/location/GnssLocationProvider;Ljava/net/InetAddress;)V
    .locals 0
    .param p1, "address"    # Ljava/net/InetAddress;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->handleRequestSuplConnection(Ljava/net/InetAddress;)V

    return-void
.end method

.method static synthetic -wrap2()Z
    .locals 1

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->native_is_geofence_supported()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(Lcom/android/server/location/GnssLocationProvider;Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .locals 0
    .param p1, "request"    # Lcom/android/internal/location/ProviderRequest;
    .param p2, "source"    # Landroid/os/WorkSource;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GnssLocationProvider;->handleSetRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    return-void
.end method

.method static synthetic -wrap21(Lcom/android/server/location/GnssLocationProvider;Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->handleUpdateLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic -wrap22(Lcom/android/server/location/GnssLocationProvider;Landroid/net/Network;)V
    .locals 0
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->handleUpdateNetworkState(Landroid/net/Network;)V

    return-void
.end method

.method static synthetic -wrap23(Lcom/android/server/location/GnssLocationProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->hibernate()V

    return-void
.end method

.method static synthetic -wrap24(Lcom/android/server/location/GnssLocationProvider;JJI)V
    .locals 1
    .param p1, "time"    # J
    .param p3, "timeReference"    # J
    .param p5, "uncertainty"    # I

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/server/location/GnssLocationProvider;->native_inject_time(JJI)V

    return-void
.end method

.method static synthetic -wrap25(Lcom/android/server/location/GnssLocationProvider;[BI)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "length"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GnssLocationProvider;->native_inject_xtra_data([BI)V

    return-void
.end method

.method static synthetic -wrap26(Lcom/android/server/location/GnssLocationProvider;II)V
    .locals 0
    .param p1, "notificationId"    # I
    .param p2, "userResponse"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GnssLocationProvider;->native_send_ni_response(II)V

    return-void
.end method

.method static synthetic -wrap27(Lcom/android/server/location/GnssLocationProvider;I)V
    .locals 0
    .param p1, "connStatus"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->releaseSuplConnection(I)V

    return-void
.end method

.method static synthetic -wrap28(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Context;Ljava/util/Properties;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "properties"    # Ljava/util/Properties;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GnssLocationProvider;->reloadGpsProperties(Landroid/content/Context;Ljava/util/Properties;)V

    return-void
.end method

.method static synthetic -wrap29(Lcom/android/server/location/GnssLocationProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->requestUtcTime()V

    return-void
.end method

.method static synthetic -wrap3()Z
    .locals 1

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->native_is_measurement_supported()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap30(Lcom/android/server/location/GnssLocationProvider;IILjava/lang/Object;)V
    .locals 0
    .param p1, "message"    # I
    .param p2, "arg"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    return-void
.end method

.method static synthetic -wrap31(Lcom/android/server/location/GnssLocationProvider;Z)V
    .locals 0
    .param p1, "singleShot"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->startNavigating(Z)V

    return-void
.end method

.method static synthetic -wrap32(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->subscriptionOrSimChanged(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic -wrap33(Lcom/android/server/location/GnssLocationProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->updateLowPowerMode()V

    return-void
.end method

.method static synthetic -wrap34(Lcom/android/server/location/GnssLocationProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->xtraDownloadRequest()V

    return-void
.end method

.method static synthetic -wrap4()Z
    .locals 1

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->native_is_navigation_message_supported()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(I)Z
    .locals 1
    .param p0, "geofenceId"    # I

    .prologue
    invoke-static {p0}, Lcom/android/server/location/GnssLocationProvider;->native_pause_geofence(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(I)Z
    .locals 1
    .param p0, "geofenceId"    # I

    .prologue
    invoke-static {p0}, Lcom/android/server/location/GnssLocationProvider;->native_remove_geofence(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(II)Z
    .locals 1
    .param p0, "geofenceId"    # I
    .param p1, "transitions"    # I

    .prologue
    invoke-static {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->native_resume_geofence(II)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap8(Lcom/android/server/location/GnssLocationProvider;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_start_measurement_collection()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap9(Lcom/android/server/location/GnssLocationProvider;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_start_navigation_message_collection()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v8, 0x3

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 135
    const-string/jumbo v0, "GnssLocationProvider"

    invoke-static {v0, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    .line 136
    const-string/jumbo v0, "GnssLocationProvider"

    invoke-static {v0, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/GnssLocationProvider;->VERBOSE:Z

    .line 140
    new-instance v0, Lcom/android/internal/location/ProviderProperties;

    move v2, v1

    move v4, v3

    move v5, v1

    move v6, v1

    move v7, v1

    move v9, v1

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/location/ProviderProperties;-><init>(ZZZZZZZII)V

    sput-object v0, Lcom/android/server/location/GnssLocationProvider;->PROPERTIES:Lcom/android/internal/location/ProviderProperties;

    .line 441
    new-array v0, v8, [Ljava/lang/String;

    const-string/jumbo v2, "311480"

    aput-object v2, v0, v3

    const-string/jumbo v2, "310004"

    aput-object v2, v0, v1

    const-string/jumbo v2, "20404"

    aput-object v2, v0, v10

    sput-object v0, Lcom/android/server/location/GnssLocationProvider;->VzwMccMncList:[Ljava/lang/String;

    .line 443
    new-array v0, v8, [Ljava/lang/String;

    const-string/jumbo v2, ""

    aput-object v2, v0, v3

    const-string/jumbo v2, ""

    aput-object v2, v0, v1

    const-string/jumbo v1, "BAE0000000000000"

    aput-object v1, v0, v10

    sput-object v0, Lcom/android/server/location/GnssLocationProvider;->VzwGid1List:[Ljava/lang/String;

    .line 2996
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->class_init_native()V

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/location/ILocationManager;Landroid/os/Looper;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ilocationManager"    # Landroid/location/ILocationManager;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    const-wide/32 v8, 0x493e0

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/16 v5, 0x40

    const/4 v4, 0x0

    .line 795
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mLock:Ljava/lang/Object;

    .line 298
    iput v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLocationFlags:I

    .line 301
    iput v6, p0, Lcom/android/server/location/GnssLocationProvider;->mStatus:I

    .line 304
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/location/GnssLocationProvider;->mStatusUpdateTime:J

    .line 329
    new-instance v1, Lcom/android/server/location/GnssLocationProvider$BackOff;

    const-wide/32 v2, 0xdbba00

    invoke-direct {v1, v8, v9, v2, v3}, Lcom/android/server/location/GnssLocationProvider$BackOff;-><init>(JJ)V

    iput-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mNtpBackOff:Lcom/android/server/location/GnssLocationProvider$BackOff;

    .line 330
    new-instance v1, Lcom/android/server/location/GnssLocationProvider$BackOff;

    const-wide/32 v2, 0xdbba00

    invoke-direct {v1, v8, v9, v2, v3}, Lcom/android/server/location/GnssLocationProvider$BackOff;-><init>(JJ)V

    iput-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mXtraBackOff:Lcom/android/server/location/GnssLocationProvider$BackOff;

    .line 342
    iput v4, p0, Lcom/android/server/location/GnssLocationProvider;->mInjectNtpTimePending:I

    .line 343
    iput v4, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadXtraDataPending:I

    .line 355
    const/16 v1, 0x3e8

    iput v1, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    .line 373
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/location/GnssLocationProvider;->mFixRequestTime:J

    .line 375
    iput v4, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

    .line 382
    iput-object v7, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    .line 384
    iput-object v7, p0, Lcom/android/server/location/GnssLocationProvider;->mWorkSource:Landroid/os/WorkSource;

    .line 386
    iput-boolean v4, p0, Lcom/android/server/location/GnssLocationProvider;->mDisableGps:Z

    .line 395
    iput v4, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerPort:I

    .line 398
    iput-boolean v4, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplEsEnabled:Z

    .line 403
    new-instance v1, Landroid/location/Location;

    const-string/jumbo v2, "gps"

    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mLocation:Landroid/location/Location;

    .line 404
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    .line 455
    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1}, Landroid/os/WorkSource;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    .line 459
    iput v4, p0, Lcom/android/server/location/GnssLocationProvider;->mYearOfHardware:I

    .line 461
    new-instance v1, Lcom/android/server/location/GnssLocationProvider$1;

    invoke-direct {v1, p0}, Lcom/android/server/location/GnssLocationProvider$1;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    iput-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssStatusProvider:Landroid/location/IGnssStatusProvider;

    .line 493
    new-instance v1, Lcom/android/server/location/GnssLocationProvider$2;

    invoke-direct {v1, p0}, Lcom/android/server/location/GnssLocationProvider$2;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    .line 492
    iput-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mNetworkConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 511
    new-instance v1, Lcom/android/server/location/GnssLocationProvider$3;

    invoke-direct {v1, p0}, Lcom/android/server/location/GnssLocationProvider$3;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    .line 510
    iput-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 529
    new-instance v1, Lcom/android/server/location/GnssLocationProvider$4;

    invoke-direct {v1, p0}, Lcom/android/server/location/GnssLocationProvider$4;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    iput-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 575
    new-instance v1, Lcom/android/server/location/GnssLocationProvider$5;

    invoke-direct {v1, p0}, Lcom/android/server/location/GnssLocationProvider$5;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    .line 574
    iput-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 1474
    new-instance v1, Lcom/android/server/location/GnssLocationProvider$6;

    invoke-direct {v1, p0}, Lcom/android/server/location/GnssLocationProvider$6;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    iput-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGpsGeofenceBinder:Landroid/location/IGpsGeofenceHardware;

    .line 2117
    new-instance v1, Lcom/android/server/location/GnssLocationProvider$7;

    invoke-direct {v1, p0}, Lcom/android/server/location/GnssLocationProvider$7;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    iput-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    .line 2988
    new-array v1, v5, [I

    iput-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mSvidWithFlags:[I

    .line 2989
    new-array v1, v5, [F

    iput-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mCn0s:[F

    .line 2990
    new-array v1, v5, [F

    iput-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mSvElevations:[F

    .line 2991
    new-array v1, v5, [F

    iput-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mSvAzimuths:[F

    .line 2994
    const/16 v1, 0x78

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mNmeaBuffer:[B

    .line 797
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 798
    invoke-static {p1}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;

    .line 799
    iput-object p2, p0, Lcom/android/server/location/GnssLocationProvider;->mILocationManager:Landroid/location/ILocationManager;

    .line 801
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mLocation:Landroid/location/Location;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 804
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    .line 805
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v2, "GnssLocationProvider"

    invoke-virtual {v1, v6, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 806
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 808
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    .line 809
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.android.internal.location.ALARM_WAKEUP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v4, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    .line 810
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v4, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    .line 812
    const-string/jumbo v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 816
    const-string/jumbo v1, "appops"

    .line 815
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 820
    const-string/jumbo v1, "batterystats"

    .line 819
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 823
    new-instance v1, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;

    invoke-direct {v1, p0, p3}, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;-><init>(Lcom/android/server/location/GnssLocationProvider;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    .line 830
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mProperties:Ljava/util/Properties;

    .line 831
    const/16 v1, 0xd

    invoke-direct {p0, v1, v4, v7}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 833
    new-instance v1, Lcom/android/server/location/GnssLocationProvider$GpsIndoorOptimization;

    invoke-direct {v1, p0}, Lcom/android/server/location/GnssLocationProvider$GpsIndoorOptimization;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    iput-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGpsIndoorOpti:Lcom/android/server/location/GnssLocationProvider$GpsIndoorOptimization;

    .line 836
    new-instance v1, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;-><init>(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGpsNotificationOpti:Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;

    .line 843
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mILocationManager:Landroid/location/ILocationManager;

    new-instance v2, Lcom/android/server/location/GnssLocationProvider$GpsProviderListener;

    invoke-direct {v2, p0}, Lcom/android/server/location/GnssLocationProvider$GpsProviderListener;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    invoke-interface {v1, v2}, Landroid/location/ILocationManager;->setGpsProviderListener(Landroid/location/IGpsProviderListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 852
    :goto_0
    new-instance v1, Lcom/android/internal/location/GpsNetInitiatedHandler;

    .line 853
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    .line 854
    iget-boolean v3, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplEsEnabled:Z

    .line 852
    invoke-direct {v1, p1, v2, v3}, Lcom/android/internal/location/GpsNetInitiatedHandler;-><init>(Landroid/content/Context;Landroid/location/INetInitiatedListener;Z)V

    iput-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    .line 856
    new-instance v1, Lcom/android/server/location/GnssLocationProvider$8;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/location/GnssLocationProvider$8;-><init>(Lcom/android/server/location/GnssLocationProvider;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mListenerHelper:Lcom/android/server/location/GnssStatusListenerHelper;

    .line 868
    new-instance v1, Lcom/android/server/location/GnssLocationProvider$9;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/location/GnssLocationProvider$9;-><init>(Lcom/android/server/location/GnssLocationProvider;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    .line 890
    new-instance v1, Lcom/android/server/location/GnssLocationProvider$10;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/location/GnssLocationProvider$10;-><init>(Lcom/android/server/location/GnssLocationProvider;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    .line 796
    return-void

    .line 845
    :catch_0
    move-exception v0

    .line 846
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "GnssLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setGpsProviderListener exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private agpsDataConnStateAsString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2564
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionState:I

    packed-switch v0, :pswitch_data_0

    .line 2572
    const-string/jumbo v0, "<Unknown>"

    return-object v0

    .line 2566
    :pswitch_0
    const-string/jumbo v0, "CLOSED"

    return-object v0

    .line 2568
    :pswitch_1
    const-string/jumbo v0, "OPEN"

    return-object v0

    .line 2570
    :pswitch_2
    const-string/jumbo v0, "OPENING"

    return-object v0

    .line 2564
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private agpsDataConnStatusAsString(I)Ljava/lang/String;
    .locals 1
    .param p1, "agpsDataConnStatus"    # I

    .prologue
    .line 2580
    packed-switch p1, :pswitch_data_0

    .line 2592
    const-string/jumbo v0, "<Unknown>"

    return-object v0

    .line 2582
    :pswitch_0
    const-string/jumbo v0, "CONNECTED"

    return-object v0

    .line 2584
    :pswitch_1
    const-string/jumbo v0, "DONE"

    return-object v0

    .line 2586
    :pswitch_2
    const-string/jumbo v0, "FAILED"

    return-object v0

    .line 2588
    :pswitch_3
    const-string/jumbo v0, "RELEASE"

    return-object v0

    .line 2590
    :pswitch_4
    const-string/jumbo v0, "REQUEST"

    return-object v0

    .line 2580
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private buildLocation(IDDDFFFJ)Landroid/location/Location;
    .locals 6
    .param p1, "flags"    # I
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .param p6, "altitude"    # D
    .param p8, "speed"    # F
    .param p9, "bearing"    # F
    .param p10, "accuracy"    # F
    .param p11, "timestamp"    # J

    .prologue
    .line 1973
    new-instance v2, Landroid/location/Location;

    const-string/jumbo v3, "gps"

    invoke-direct {v2, v3}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 1974
    .local v2, "location":Landroid/location/Location;
    and-int/lit8 v3, p1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1975
    invoke-virtual {v2, p2, p3}, Landroid/location/Location;->setLatitude(D)V

    .line 1976
    invoke-virtual {v2, p4, p5}, Landroid/location/Location;->setLongitude(D)V

    .line 1977
    move-wide/from16 v0, p11

    invoke-virtual {v2, v0, v1}, Landroid/location/Location;->setTime(J)V

    .line 1978
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 1980
    :cond_0
    and-int/lit8 v3, p1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1981
    invoke-virtual {v2, p6, p7}, Landroid/location/Location;->setAltitude(D)V

    .line 1983
    :cond_1
    and-int/lit8 v3, p1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 1984
    invoke-virtual {v2, p8}, Landroid/location/Location;->setSpeed(F)V

    .line 1986
    :cond_2
    and-int/lit8 v3, p1, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 1987
    invoke-virtual {v2, p9}, Landroid/location/Location;->setBearing(F)V

    .line 1989
    :cond_3
    and-int/lit8 v3, p1, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 1990
    move/from16 v0, p10

    invoke-virtual {v2, v0}, Landroid/location/Location;->setAccuracy(F)V

    .line 1992
    :cond_4
    return-object v2
.end method

.method private checkSmsSuplInit(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 628
    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v1

    .line 629
    .local v1, "messages":[Landroid/telephony/SmsMessage;
    if-nez v1, :cond_0

    .line 630
    const-string/jumbo v3, "GnssLocationProvider"

    const-string/jumbo v4, "Message does not exist in the intent."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    return-void

    .line 634
    :cond_0
    const/4 v3, 0x0

    array-length v4, v1

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v0, v1, v3

    .line 635
    .local v0, "message":Landroid/telephony/SmsMessage;
    if-eqz v0, :cond_1

    iget-object v5, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    if-eqz v5, :cond_1

    .line 636
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v2

    .line 637
    .local v2, "suplInit":[B
    if-eqz v2, :cond_1

    .line 638
    array-length v5, v2

    invoke-direct {p0, v2, v5}, Lcom/android/server/location/GnssLocationProvider;->native_agps_ni_message([BI)V

    .line 634
    .end local v2    # "suplInit":[B
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 627
    .end local v0    # "message":Landroid/telephony/SmsMessage;
    :cond_2
    return-void
.end method

.method private checkWapSuplInit(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 645
    const-string/jumbo v1, "data"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 646
    .local v0, "suplInit":[B
    if-nez v0, :cond_0

    .line 647
    return-void

    .line 649
    :cond_0
    array-length v1, v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/location/GnssLocationProvider;->native_agps_ni_message([BI)V

    .line 644
    return-void
.end method

.method private static native class_init_native()V
.end method

.method private deleteAidingData(Landroid/os/Bundle;)Z
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 1502
    if-nez p1, :cond_1

    .line 1503
    const v0, 0xffff

    .line 1521
    .local v0, "flags":I
    :cond_0
    :goto_0
    if-eqz v0, :cond_e

    .line 1522
    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->native_delete_aiding_data(I)V

    .line 1523
    const/4 v1, 0x1

    return v1

    .line 1505
    .end local v0    # "flags":I
    :cond_1
    const/4 v0, 0x0

    .line 1506
    .restart local v0    # "flags":I
    const-string/jumbo v1, "ephemeris"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 1507
    :cond_2
    const-string/jumbo v1, "almanac"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x2

    .line 1508
    :cond_3
    const-string/jumbo v1, "position"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x4

    .line 1509
    :cond_4
    const-string/jumbo v1, "time"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x8

    .line 1510
    :cond_5
    const-string/jumbo v1, "iono"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    or-int/lit8 v0, v0, 0x10

    .line 1511
    :cond_6
    const-string/jumbo v1, "utc"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    or-int/lit8 v0, v0, 0x20

    .line 1512
    :cond_7
    const-string/jumbo v1, "health"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    or-int/lit8 v0, v0, 0x40

    .line 1513
    :cond_8
    const-string/jumbo v1, "svdir"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    or-int/lit16 v0, v0, 0x80

    .line 1514
    :cond_9
    const-string/jumbo v1, "svsteer"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    or-int/lit16 v0, v0, 0x100

    .line 1515
    :cond_a
    const-string/jumbo v1, "sadata"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    or-int/lit16 v0, v0, 0x200

    .line 1516
    :cond_b
    const-string/jumbo v1, "rti"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    or-int/lit16 v0, v0, 0x400

    .line 1517
    :cond_c
    const-string/jumbo v1, "celldb-info"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const v1, 0x8000

    or-int/2addr v0, v1

    .line 1518
    :cond_d
    const-string/jumbo v1, "all"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0xffff

    or-int/2addr v0, v1

    goto/16 :goto_0

    .line 1526
    :cond_e
    return v2
.end method

.method private ensureInHandlerThread()V
    .locals 2

    .prologue
    .line 2554
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2555
    return-void

    .line 2557
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "This method must run on the Handler thread."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getApnIpType(Ljava/lang/String;)I
    .locals 9
    .param p1, "apn"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v8, 0x0

    .line 2476
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->ensureInHandlerThread()V

    .line 2477
    if-nez p1, :cond_0

    .line 2478
    return v8

    .line 2481
    :cond_0
    const-string/jumbo v0, "current = 1 and apn = \'%s\' and carrier_enabled = 1"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2482
    .local v3, "selection":Ljava/lang/String;
    const/4 v6, 0x0

    .line 2484
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2485
    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    .line 2486
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "protocol"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    .line 2489
    const-string/jumbo v5, "name ASC"

    .line 2488
    const/4 v4, 0x0

    .line 2484
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2491
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2492
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/location/GnssLocationProvider;->translateToApnIpType(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 2499
    if-eqz v6, :cond_1

    .line 2500
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2492
    :cond_1
    return v0

    .line 2494
    :cond_2
    :try_start_1
    const-string/jumbo v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No entry found in query for APN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2499
    if-eqz v6, :cond_3

    .line 2500
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2504
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_3
    :goto_0
    return v8

    .line 2496
    :catch_0
    move-exception v7

    .line 2497
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error encountered on APN query for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2499
    if-eqz v6, :cond_3

    .line 2500
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2498
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 2499
    if-eqz v6, :cond_4

    .line 2500
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2498
    :cond_4
    throw v0
.end method

.method private getGeofenceStatus(I)I
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 1999
    sparse-switch p1, :sswitch_data_0

    .line 2013
    const/4 v0, -0x1

    return v0

    .line 2001
    :sswitch_0
    const/4 v0, 0x0

    return v0

    .line 2003
    :sswitch_1
    const/4 v0, 0x5

    return v0

    .line 2005
    :sswitch_2
    const/4 v0, 0x2

    return v0

    .line 2007
    :sswitch_3
    const/4 v0, 0x4

    return v0

    .line 2009
    :sswitch_4
    const/4 v0, 0x1

    return v0

    .line 2011
    :sswitch_5
    const/4 v0, 0x3

    return v0

    .line 1999
    nop

    :sswitch_data_0
    .sparse-switch
        -0x95 -> :sswitch_1
        -0x67 -> :sswitch_3
        -0x66 -> :sswitch_5
        -0x65 -> :sswitch_2
        0x0 -> :sswitch_0
        0x64 -> :sswitch_4
    .end sparse-switch
.end method

.method private getSelectedApn()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 2450
    const-string/jumbo v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2451
    .local v1, "uri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 2453
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2455
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "apn"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 2458
    const-string/jumbo v5, "name ASC"

    .line 2456
    const/4 v3, 0x0

    .line 2457
    const/4 v4, 0x0

    .line 2453
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2459
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2460
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2467
    if-eqz v6, :cond_0

    .line 2468
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2460
    :cond_0
    return-object v0

    .line 2462
    :cond_1
    :try_start_1
    const-string/jumbo v0, "GnssLocationProvider"

    const-string/jumbo v2, "No APN found to select."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2467
    if-eqz v6, :cond_2

    .line 2468
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2472
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_2
    :goto_0
    return-object v8

    .line 2464
    :catch_0
    move-exception v7

    .line 2465
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v0, "GnssLocationProvider"

    const-string/jumbo v2, "Error encountered on selecting the APN."

    invoke-static {v0, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2467
    if-eqz v6, :cond_2

    .line 2468
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2466
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 2467
    if-eqz v6, :cond_3

    .line 2468
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2466
    :cond_3
    throw v0
.end method

.method private getSuplMode(Ljava/util/Properties;ZZ)I
    .locals 7
    .param p1, "properties"    # Ljava/util/Properties;
    .param p2, "agpsEnabled"    # Z
    .param p3, "singleShot"    # Z

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x0

    .line 1209
    if-eqz p2, :cond_2

    .line 1210
    const-string/jumbo v3, "SUPL_MODE"

    invoke-virtual {p1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1211
    .local v1, "modeString":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1212
    .local v2, "suplMode":I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1214
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1222
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_1

    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_1

    .line 1223
    const/4 v3, 0x1

    return v3

    .line 1215
    :catch_0
    move-exception v0

    .line 1216
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v3, "GnssLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unable to parse SUPL_MODE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    return v6

    .line 1228
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    if-eqz p3, :cond_2

    .line 1229
    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v3

    .line 1228
    if-eqz v3, :cond_2

    .line 1230
    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_2

    .line 1231
    return v4

    .line 1234
    .end local v1    # "modeString":Ljava/lang/String;
    .end local v2    # "suplMode":I
    :cond_2
    return v6
.end method

.method private handleDisable()V
    .locals 2

    .prologue
    .line 1279
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "GnssLocationProvider"

    const-string/jumbo v1, "handleDisable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    :cond_0
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->updateClientUids(Landroid/os/WorkSource;)V

    .line 1290
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->stopNavigating()V

    .line 1291
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1292
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1295
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_cleanup()V

    .line 1297
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    invoke-virtual {v0}, Lcom/android/server/location/GnssMeasurementsProvider;->onGpsEnabledChanged()V

    .line 1298
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    invoke-virtual {v0}, Lcom/android/server/location/GnssNavigationMessageProvider;->onGpsEnabledChanged()V

    .line 1278
    return-void
.end method

.method private handleDownloadXtraData()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1113
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSupportsXtra:Z

    if-nez v0, :cond_0

    .line 1115
    const-string/jumbo v0, "GnssLocationProvider"

    const-string/jumbo v1, "handleDownloadXtraData() called when Xtra not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    return-void

    .line 1118
    :cond_0
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadXtraDataPending:I

    if-ne v0, v1, :cond_1

    .line 1120
    return-void

    .line 1122
    :cond_1
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->isDataNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1124
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadXtraDataPending:I

    .line 1125
    return-void

    .line 1127
    :cond_2
    iput v1, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadXtraDataPending:I

    .line 1130
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1131
    const-string/jumbo v0, "GnssLocationProvider"

    const-string/jumbo v1, "WakeLock acquired by handleDownloadXtraData()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/location/GnssLocationProvider$12;

    invoke-direct {v1, p0}, Lcom/android/server/location/GnssLocationProvider$12;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1112
    return-void
.end method

.method private handleEnable()V
    .locals 4

    .prologue
    .line 1238
    sget-boolean v1, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "GnssLocationProvider"

    const-string/jumbo v2, "handleEnable"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    :cond_0
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_init()Z

    move-result v0

    .line 1242
    .local v0, "enabled":Z
    if-eqz v0, :cond_3

    .line 1243
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_supports_xtra()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mSupportsXtra:Z

    .line 1246
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerHost:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1247
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerHost:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerPort:I

    const/4 v3, 0x1

    invoke-direct {p0, v3, v1, v2}, Lcom/android/server/location/GnssLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 1249
    :cond_1
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mC2KServerHost:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1250
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mC2KServerHost:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/location/GnssLocationProvider;->mC2KServerPort:I

    const/4 v3, 0x2

    invoke-direct {p0, v3, v1, v2}, Lcom/android/server/location/GnssLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 1253
    :cond_2
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    invoke-virtual {v1}, Lcom/android/server/location/GnssMeasurementsProvider;->onGpsEnabledChanged()V

    .line 1254
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    invoke-virtual {v1}, Lcom/android/server/location/GnssNavigationMessageProvider;->onGpsEnabledChanged()V

    .line 1237
    :goto_0
    return-void

    .line 1256
    :cond_3
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1257
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1259
    const-string/jumbo v1, "GnssLocationProvider"

    const-string/jumbo v2, "Failed to enable location provider"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1256
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method private handleInjectNtpTime()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1041
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mInjectNtpTimePending:I

    if-ne v0, v1, :cond_0

    .line 1043
    return-void

    .line 1045
    :cond_0
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->isDataNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1047
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider;->mInjectNtpTimePending:I

    .line 1048
    return-void

    .line 1050
    :cond_1
    iput v1, p0, Lcom/android/server/location/GnssLocationProvider;->mInjectNtpTimePending:I

    .line 1053
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1054
    const-string/jumbo v0, "GnssLocationProvider"

    const-string/jumbo v1, "WakeLock acquired by handleInjectNtpTime()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/location/GnssLocationProvider$11;

    invoke-direct {v1, p0}, Lcom/android/server/location/GnssLocationProvider$11;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1040
    return-void
.end method

.method private handleReleaseSuplConnection(I)V
    .locals 6
    .param p1, "agpsDataConnStatus"    # I

    .prologue
    const/4 v5, 0x0

    .line 1014
    sget-boolean v1, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1016
    const-string/jumbo v1, "releaseSuplConnection, state=%s, status=%s"

    .line 1015
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 1017
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->agpsDataConnStateAsString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 1018
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->agpsDataConnStatusAsString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 1015
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1019
    .local v0, "message":Ljava/lang/String;
    const-string/jumbo v1, "GnssLocationProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    iget v1, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionState:I

    if-nez v1, :cond_1

    .line 1023
    return-void

    .line 1025
    :cond_1
    iput v5, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionState:I

    .line 1027
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1028
    packed-switch p1, :pswitch_data_0

    .line 1036
    :pswitch_0
    const-string/jumbo v1, "GnssLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid status to release SUPL connection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    :goto_0
    return-void

    .line 1030
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_agps_data_conn_failed()V

    goto :goto_0

    .line 1033
    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_agps_data_conn_closed()V

    goto :goto_0

    .line 1028
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleRequestSuplConnection(Ljava/net/InetAddress;)V
    .locals 8
    .param p1, "address"    # Ljava/net/InetAddress;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 989
    sget-boolean v3, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 991
    const-string/jumbo v3, "requestSuplConnection, state=%s, address=%s"

    .line 990
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 992
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->agpsDataConnStateAsString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    .line 993
    aput-object p1, v4, v7

    .line 990
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 994
    .local v0, "message":Ljava/lang/String;
    const-string/jumbo v3, "GnssLocationProvider"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    iget v3, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionState:I

    if-eqz v3, :cond_1

    .line 998
    return-void

    .line 1000
    :cond_1
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    .line 1001
    iput v7, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionState:I

    .line 1003
    new-instance v2, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 1004
    .local v2, "requestBuilder":Landroid/net/NetworkRequest$Builder;
    invoke-virtual {v2, v6}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 1005
    invoke-virtual {v2, v7}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 1006
    invoke-virtual {v2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    .line 1007
    .local v1, "request":Landroid/net/NetworkRequest;
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 1009
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1010
    const v5, 0x5b8d80

    .line 1007
    invoke-virtual {v3, v1, v4, v5}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;I)V

    .line 988
    return-void
.end method

.method private handleSetRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .locals 0
    .param p1, "request"    # Lcom/android/internal/location/ProviderRequest;
    .param p2, "source"    # Landroid/os/WorkSource;

    .prologue
    .line 1336
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    .line 1337
    iput-object p2, p0, Lcom/android/server/location/GnssLocationProvider;->mWorkSource:Landroid/os/WorkSource;

    .line 1338
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->updateRequirements()V

    .line 1335
    return-void
.end method

.method private handleUpdateLocation(Landroid/location/Location;)V
    .locals 7
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 1160
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1161
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    .line 1162
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v6

    move-object v1, p0

    .line 1161
    invoke-direct/range {v1 .. v6}, Lcom/android/server/location/GnssLocationProvider;->native_inject_location(DDF)V

    .line 1159
    :cond_0
    return-void
.end method

.method private handleUpdateNetworkState(Landroid/net/Network;)V
    .locals 12
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 928
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v10

    .line 929
    .local v10, "info":Landroid/net/NetworkInfo;
    if-nez v10, :cond_0

    .line 930
    return-void

    .line 933
    :cond_0
    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    .line 934
    .local v1, "isConnected":Z
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 936
    const-string/jumbo v0, "UpdateNetworkState, state=%s, connected=%s, info=%s, capabilities=%S"

    .line 935
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    .line 937
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->agpsDataConnStateAsString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v2, v5

    .line 938
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 939
    const/4 v3, 0x2

    aput-object v10, v2, v3

    .line 940
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v3

    const/4 v5, 0x3

    aput-object v3, v2, v5

    .line 935
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 941
    .local v11, "message":Ljava/lang/String;
    const-string/jumbo v0, "GnssLocationProvider"

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    .end local v11    # "message":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->native_is_agps_ril_supported()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 945
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v9

    .line 946
    .local v9, "dataEnabled":Z
    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_7

    move v4, v9

    .line 947
    :goto_0
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->getSelectedApn()Ljava/lang/String;

    move-result-object v6

    .line 948
    .local v6, "defaultApn":Ljava/lang/String;
    if-nez v6, :cond_2

    .line 949
    const-string/jumbo v6, "dummy-apn"

    .line 954
    :cond_2
    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 955
    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v3

    .line 957
    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    .line 952
    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GnssLocationProvider;->native_update_network_state(ZIZZLjava/lang/String;Ljava/lang/String;)V

    .line 963
    .end local v6    # "defaultApn":Ljava/lang/String;
    .end local v9    # "dataEnabled":Z
    :cond_3
    :goto_1
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionState:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_6

    .line 964
    if-eqz v1, :cond_9

    .line 965
    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v8

    .line 966
    .local v8, "apnName":Ljava/lang/String;
    if-nez v8, :cond_4

    .line 969
    const-string/jumbo v8, "dummy-apn"

    .line 971
    :cond_4
    invoke-direct {p0, v8}, Lcom/android/server/location/GnssLocationProvider;->getApnIpType(Ljava/lang/String;)I

    move-result v7

    .line 972
    .local v7, "apnIpType":I
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->setRouting()V

    .line 973
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_5

    .line 975
    const-string/jumbo v0, "native_agps_data_conn_open: mAgpsApn=%s, mApnIpType=%s"

    .line 974
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 976
    const/4 v3, 0x0

    aput-object v8, v2, v3

    .line 977
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 974
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 978
    .restart local v11    # "message":Ljava/lang/String;
    const-string/jumbo v0, "GnssLocationProvider"

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    .end local v11    # "message":Ljava/lang/String;
    :cond_5
    invoke-direct {p0, v8, v7}, Lcom/android/server/location/GnssLocationProvider;->native_agps_data_conn_open(Ljava/lang/String;I)V

    .line 981
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionState:I

    .line 926
    .end local v7    # "apnIpType":I
    .end local v8    # "apnName":Ljava/lang/String;
    :cond_6
    :goto_2
    return-void

    .line 946
    .restart local v9    # "dataEnabled":Z
    :cond_7
    const/4 v4, 0x0

    .local v4, "networkAvailable":Z
    goto :goto_0

    .line 959
    .end local v4    # "networkAvailable":Z
    .end local v9    # "dataEnabled":Z
    :cond_8
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 960
    const-string/jumbo v0, "GnssLocationProvider"

    const-string/jumbo v2, "Skipped network state update because GPS HAL AGPS-RIL is not  supported"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 983
    :cond_9
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->handleReleaseSuplConnection(I)V

    goto :goto_2
.end method

.method private hasCapability(I)Z
    .locals 2
    .param p1, "capability"    # I

    .prologue
    const/4 v0, 0x0

    .line 1622
    iget v1, p0, Lcom/android/server/location/GnssLocationProvider;->mEngineCapabilities:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private hibernate()V
    .locals 7

    .prologue
    .line 1614
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->stopNavigating()V

    .line 1615
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1616
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1617
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1618
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget v3, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    int-to-long v4, v3

    add-long/2addr v4, v0

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    const/4 v6, 0x2

    invoke-virtual {v2, v6, v4, v5, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1612
    return-void
.end method

.method private isCN()Z
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 735
    const/4 v2, 0x0

    .line 736
    .local v2, "mString":Ljava/lang/String;
    const/4 v0, 0x1

    .line 737
    .local v0, "mCN":Z
    iget-object v6, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 738
    .local v3, "mTm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    .line 739
    .local v2, "mString":Ljava/lang/String;
    const-string/jumbo v6, "GnssLocationProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mnc mcc: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    const-string/jumbo v6, ""

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    if-nez v2, :cond_2

    :cond_0
    :goto_0
    if-nez v4, :cond_1

    .line 741
    invoke-virtual {v2, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 742
    .local v1, "mCountryCode":Ljava/lang/String;
    const-string/jumbo v4, "460"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 743
    const/4 v0, 0x0

    .line 745
    .end local v1    # "mCountryCode":Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, "GnssLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mCN: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    return v0

    .line 740
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v9, :cond_0

    move v4, v5

    goto :goto_0
.end method

.method private isDataNetworkConnected()Z
    .locals 2

    .prologue
    .line 2546
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 2547
    .local v0, "activeNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isForegroundAPPRequest(I)Z
    .locals 7
    .param p1, "uid"    # I

    .prologue
    .line 2970
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 2971
    const-string/jumbo v5, "activity"

    .line 2970
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 2972
    .local v2, "mActivityManager":Landroid/app/ActivityManager;
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 2974
    .local v3, "mRunningProcess":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "amProcess$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 2975
    .local v0, "amProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v5, 0x64

    if-ne v4, v5, :cond_0

    .line 2976
    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v4, p1, :cond_0

    .line 2977
    const-string/jumbo v4, "GnssLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "uid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " running in foreground"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2978
    const/4 v4, 0x1

    return v4

    .line 2981
    .end local v0    # "amProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    const/4 v4, 0x0

    return v4
.end method

.method public static isSupported()Z
    .locals 1

    .prologue
    .line 669
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->native_is_supported()Z

    move-result v0

    return v0
.end method

.method private final isVerizon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "mccMnc"    # Ljava/lang/String;
    .param p2, "imsi"    # Ljava/lang/String;
    .param p3, "groupId"    # Ljava/lang/String;

    .prologue
    .line 583
    sget-boolean v1, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "GnssLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "simOperator: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 596
    :cond_1
    const/4 v1, 0x0

    return v1

    .line 585
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/server/location/GnssLocationProvider;->VzwMccMncList:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 586
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/android/server/location/GnssLocationProvider;->VzwMccMncList:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 587
    :cond_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lcom/android/server/location/GnssLocationProvider;->VzwMccMncList:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 586
    if-eqz v1, :cond_7

    .line 589
    :cond_4
    sget-object v1, Lcom/android/server/location/GnssLocationProvider;->VzwGid1List:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/android/server/location/GnssLocationProvider;->VzwGid1List:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 590
    :cond_5
    sget-boolean v1, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v1, :cond_6

    const-string/jumbo v1, "GnssLocationProvider"

    const-string/jumbo v2, "Verizon UICC"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_6
    const/4 v1, 0x1

    return v1

    .line 585
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private loadPropertiesFromFile(Ljava/lang/String;Ljava/util/Properties;)Z
    .locals 7
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "properties"    # Ljava/util/Properties;

    .prologue
    .line 779
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 780
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 782
    .local v2, "stream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 783
    .local v3, "stream":Ljava/io/FileInputStream;
    :try_start_2
    invoke-virtual {p2, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 785
    .end local v2    # "stream":Ljava/io/FileInputStream;
    :try_start_3
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 792
    const/4 v4, 0x1

    return v4

    .line 784
    .end local v3    # "stream":Ljava/io/FileInputStream;
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v4

    .line 785
    .end local v2    # "stream":Ljava/io/FileInputStream;
    :goto_0
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 784
    throw v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 788
    .end local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 789
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v4, "GnssLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Could not open GPS configuration file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    const/4 v4, 0x0

    return v4

    .line 784
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "stream":Ljava/io/FileInputStream;
    .local v2, "stream":Ljava/io/FileInputStream;
    goto :goto_0
.end method

.method private loadPropertiesFromResource(Landroid/content/Context;Ljava/util/Properties;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "properties"    # Ljava/util/Properties;

    .prologue
    const/4 v4, 0x0

    .line 755
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x1120052

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/location/GnssLocationProvider;->mSupportSuplHostSelection:Z

    .line 756
    iget-boolean v3, p0, Lcom/android/server/location/GnssLocationProvider;->mSupportSuplHostSelection:Z

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->isCN()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 757
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 758
    const v5, 0x1070045

    .line 757
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 764
    .local v0, "configValues":[Ljava/lang/String;
    :goto_0
    array-length v5, v0

    move v3, v4

    :goto_1
    if-ge v3, v5, :cond_3

    aget-object v1, v0, v3

    .line 765
    .local v1, "item":Ljava/lang/String;
    sget-boolean v6, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string/jumbo v6, "GnssLocationProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "GpsParamsResource: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    :cond_0
    const-string/jumbo v6, "="

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 768
    .local v2, "split":[Ljava/lang/String;
    array-length v6, v2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 769
    aget-object v6, v2, v4

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v2, v7

    invoke-virtual {p2, v6, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 764
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 760
    .end local v0    # "configValues":[Ljava/lang/String;
    .end local v1    # "item":Ljava/lang/String;
    .end local v2    # "split":[Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 761
    const v5, 0x1070044

    .line 760
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "configValues":[Ljava/lang/String;
    goto :goto_0

    .line 771
    .restart local v1    # "item":Ljava/lang/String;
    .restart local v2    # "split":[Ljava/lang/String;
    :cond_2
    const-string/jumbo v6, "GnssLocationProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "malformed contents: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 752
    .end local v1    # "item":Ljava/lang/String;
    .end local v2    # "split":[Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private static native native_add_geofence(IDDDIIII)Z
.end method

.method private native native_agps_data_conn_closed()V
.end method

.method private native native_agps_data_conn_failed()V
.end method

.method private native native_agps_data_conn_open(Ljava/lang/String;I)V
.end method

.method private native native_agps_ni_message([BI)V
.end method

.method private native native_agps_set_id(ILjava/lang/String;)V
.end method

.method private native native_agps_set_ref_location_cellid(IIIII)V
.end method

.method private native native_cleanup()V
.end method

.method private static native native_configuration_update(Ljava/lang/String;)V
.end method

.method private native native_delete_aiding_data(I)V
.end method

.method private native native_get_internal_state()Ljava/lang/String;
.end method

.method private native native_init()Z
.end method

.method private native native_inject_location(DDF)V
.end method

.method private native native_inject_time(JJI)V
.end method

.method private native native_inject_xtra_data([BI)V
.end method

.method private static native native_is_agps_ril_supported()Z
.end method

.method private static native native_is_geofence_supported()Z
.end method

.method private static native native_is_gnss_configuration_supported()Z
.end method

.method private static native native_is_measurement_supported()Z
.end method

.method private static native native_is_navigation_message_supported()Z
.end method

.method private static native native_is_supported()Z
.end method

.method private static native native_pause_geofence(I)Z
.end method

.method private native native_read_nmea([BI)I
.end method

.method private native native_read_sv_status([I[F[F[F)I
.end method

.method private static native native_remove_geofence(I)Z
.end method

.method private static native native_resume_geofence(II)Z
.end method

.method private native native_send_ni_response(II)V
.end method

.method private native native_set_agps_server(ILjava/lang/String;I)V
.end method

.method private native native_set_position_mode(IIIII)Z
.end method

.method private native native_start()Z
.end method

.method private native native_start_measurement_collection()Z
.end method

.method private native native_start_navigation_message_collection()Z
.end method

.method private native native_stop()Z
.end method

.method private native native_stop_measurement_collection()Z
.end method

.method private native native_stop_navigation_message_collection()Z
.end method

.method private native native_supports_xtra()Z
.end method

.method private native native_update_network_state(ZIZZLjava/lang/String;Ljava/lang/String;)V
.end method

.method private releaseSuplConnection(I)V
    .locals 2
    .param p1, "connStatus"    # I

    .prologue
    .line 1883
    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1882
    return-void
.end method

.method private reloadGpsProperties(Landroid/content/Context;Ljava/util/Properties;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "properties"    # Ljava/util/Properties;

    .prologue
    const/4 v9, 0x1

    .line 673
    sget-boolean v10, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v10, :cond_0

    const-string/jumbo v10, "GnssLocationProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Reset GPS properties, previous size = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p2}, Ljava/util/Properties;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GnssLocationProvider;->loadPropertiesFromResource(Landroid/content/Context;Ljava/util/Properties;)V

    .line 676
    const/4 v4, 0x0

    .line 677
    .local v4, "isPropertiesLoadedFromFile":Z
    const-string/jumbo v10, "ro.hardware.gps"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 679
    .local v3, "gpsHardware":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 681
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "/etc/gps."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ".conf"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 683
    .local v7, "propFilename":Ljava/lang/String;
    invoke-direct {p0, v7, p2}, Lcom/android/server/location/GnssLocationProvider;->loadPropertiesFromFile(Ljava/lang/String;Ljava/util/Properties;)Z

    move-result v4

    .line 685
    .end local v4    # "isPropertiesLoadedFromFile":Z
    .end local v7    # "propFilename":Ljava/lang/String;
    :cond_1
    if-nez v4, :cond_2

    .line 686
    const-string/jumbo v10, "/etc/gps.conf"

    invoke-direct {p0, v10, p2}, Lcom/android/server/location/GnssLocationProvider;->loadPropertiesFromFile(Ljava/lang/String;Ljava/util/Properties;)Z

    .line 688
    :cond_2
    sget-boolean v10, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v10, :cond_3

    const-string/jumbo v10, "GnssLocationProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "GPS properties reloaded, size = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p2}, Ljava/util/Properties;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    :cond_3
    const-string/jumbo v10, "persist.sys.gps.lpp"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 690
    .local v5, "lpp_prof":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 692
    const-string/jumbo v10, "LPP_PROFILE"

    invoke-virtual {p2, v10, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 695
    :cond_4
    const-string/jumbo v10, "SUPL_HOST"

    invoke-virtual {p2, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 696
    const-string/jumbo v11, "SUPL_PORT"

    invoke-virtual {p2, v11}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 695
    invoke-direct {p0, v10, v11}, Lcom/android/server/location/GnssLocationProvider;->setSuplHostPort(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    const-string/jumbo v10, "C2K_HOST"

    invoke-virtual {p2, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/location/GnssLocationProvider;->mC2KServerHost:Ljava/lang/String;

    .line 698
    const-string/jumbo v10, "C2K_PORT"

    invoke-virtual {p2, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 699
    .local v6, "portString":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/location/GnssLocationProvider;->mC2KServerHost:Ljava/lang/String;

    if-eqz v10, :cond_5

    if-eqz v6, :cond_5

    .line 701
    :try_start_0
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/android/server/location/GnssLocationProvider;->mC2KServerPort:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 707
    :cond_5
    :goto_0
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->native_is_gnss_configuration_supported()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 710
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v10, 0x1000

    invoke-direct {v0, v10}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 711
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v10, 0x0

    invoke-virtual {p2, v0, v10}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 712
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/location/GnssLocationProvider;->native_configuration_update(Ljava/lang/String;)V

    .line 713
    sget-boolean v10, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v10, :cond_6

    const-string/jumbo v10, "GnssLocationProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "final config = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 723
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    :cond_6
    :goto_1
    iget-object v10, p0, Lcom/android/server/location/GnssLocationProvider;->mProperties:Ljava/util/Properties;

    const-string/jumbo v11, "SUPL_ES"

    invoke-virtual {v10, v11}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 724
    .local v8, "suplESProperty":Ljava/lang/String;
    if-eqz v8, :cond_7

    .line 726
    :try_start_2
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-ne v10, v9, :cond_9

    :goto_2
    iput-boolean v9, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplEsEnabled:Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 672
    :cond_7
    :goto_3
    return-void

    .line 702
    .end local v8    # "suplESProperty":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 703
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v10, "GnssLocationProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "unable to parse C2K_PORT: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 714
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v2

    .line 715
    .local v2, "ex":Ljava/io/IOException;
    const-string/jumbo v10, "GnssLocationProvider"

    const-string/jumbo v11, "failed to dump properties contents"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 717
    .end local v2    # "ex":Ljava/io/IOException;
    :cond_8
    sget-boolean v10, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v10, :cond_6

    .line 718
    const-string/jumbo v10, "GnssLocationProvider"

    const-string/jumbo v11, "Skipped configuration update because GNSS configuration in GPS HAL is not supported"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 726
    .restart local v8    # "suplESProperty":Ljava/lang/String;
    :cond_9
    const/4 v9, 0x0

    goto :goto_2

    .line 727
    :catch_2
    move-exception v1

    .line 728
    .restart local v1    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v9, "GnssLocationProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "unable to parse SUPL_ES: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private reportAGpsStatus(II[B)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "status"    # I
    .param p3, "ipaddr"    # [B

    .prologue
    .line 1849
    packed-switch p2, :pswitch_data_0

    .line 1878
    sget-boolean v2, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "GnssLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Received Unknown AGPS status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    :cond_0
    :goto_0
    return-void

    .line 1851
    :pswitch_0
    sget-boolean v2, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "GnssLocationProvider"

    const-string/jumbo v3, "GPS_REQUEST_AGPS_DATA_CONN"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    :cond_1
    const-string/jumbo v2, "GnssLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Received SUPL IP addr[]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1853
    const/4 v0, 0x0

    .line 1854
    .local v0, "connectionIpAddress":Ljava/net/InetAddress;
    if-eqz p3, :cond_2

    .line 1856
    :try_start_0
    invoke-static {p3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    .line 1857
    .local v0, "connectionIpAddress":Ljava/net/InetAddress;
    sget-boolean v2, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "GnssLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IP address converted to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1862
    .end local v0    # "connectionIpAddress":Ljava/net/InetAddress;
    :cond_2
    :goto_1
    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v0}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    goto :goto_0

    .line 1858
    :catch_0
    move-exception v1

    .line 1859
    .local v1, "e":Ljava/net/UnknownHostException;
    const-string/jumbo v2, "GnssLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Bad IP Address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1865
    .end local v1    # "e":Ljava/net/UnknownHostException;
    :pswitch_1
    sget-boolean v2, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "GnssLocationProvider"

    const-string/jumbo v3, "GPS_RELEASE_AGPS_DATA_CONN"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1866
    :cond_3
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/server/location/GnssLocationProvider;->releaseSuplConnection(I)V

    goto/16 :goto_0

    .line 1869
    :pswitch_2
    sget-boolean v2, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "GnssLocationProvider"

    const-string/jumbo v3, "GPS_AGPS_DATA_CONNECTED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1872
    :pswitch_3
    sget-boolean v2, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "GnssLocationProvider"

    const-string/jumbo v3, "GPS_AGPS_DATA_CONN_DONE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1875
    :pswitch_4
    sget-boolean v2, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "GnssLocationProvider"

    const-string/jumbo v3, "GPS_AGPS_DATA_CONN_FAILED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1849
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private reportGeofenceAddStatus(II)V
    .locals 2
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 2078
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_0

    .line 2079
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 2081
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0, p2}, Lcom/android/server/location/GnssLocationProvider;->getGeofenceStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceAddStatus(II)V

    .line 2077
    return-void
.end method

.method private reportGeofencePauseStatus(II)V
    .locals 2
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 2098
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_0

    .line 2099
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 2101
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0, p2}, Lcom/android/server/location/GnssLocationProvider;->getGeofenceStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofencePauseStatus(II)V

    .line 2097
    return-void
.end method

.method private reportGeofenceRemoveStatus(II)V
    .locals 2
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 2088
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_0

    .line 2089
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 2091
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0, p2}, Lcom/android/server/location/GnssLocationProvider;->getGeofenceStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceRemoveStatus(II)V

    .line 2087
    return-void
.end method

.method private reportGeofenceResumeStatus(II)V
    .locals 2
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 2108
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_0

    .line 2109
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 2111
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0, p2}, Lcom/android/server/location/GnssLocationProvider;->getGeofenceStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceResumeStatus(II)V

    .line 2107
    return-void
.end method

.method private reportGeofenceStatus(IIDDDFFFJ)V
    .locals 17
    .param p1, "status"    # I
    .param p2, "flags"    # I
    .param p3, "latitude"    # D
    .param p5, "longitude"    # D
    .param p7, "altitude"    # D
    .param p9, "speed"    # F
    .param p10, "bearing"    # F
    .param p11, "accuracy"    # F
    .param p12, "timestamp"    # J

    .prologue
    .line 2051
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v2, :cond_0

    .line 2052
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    :cond_0
    move-object/from16 v2, p0

    move/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move-wide/from16 v13, p12

    .line 2054
    invoke-direct/range {v2 .. v14}, Lcom/android/server/location/GnssLocationProvider;->buildLocation(IDDDFFFJ)Landroid/location/Location;

    move-result-object v15

    .line 2063
    .local v15, "location":Landroid/location/Location;
    const/16 v16, 0x1

    .line 2064
    .local v16, "monitorStatus":I
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_1

    .line 2065
    const/16 v16, 0x0

    .line 2067
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 2071
    sget v3, Landroid/location/FusedBatchOptions$SourceTechnologies;->GNSS:I

    .line 2068
    const/4 v4, 0x0

    .line 2067
    move/from16 v0, v16

    invoke-virtual {v2, v4, v0, v15, v3}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceMonitorStatus(IILandroid/location/Location;I)V

    .line 2050
    return-void
.end method

.method private reportGeofenceTransition(IIDDDFFFJIJ)V
    .locals 13
    .param p1, "geofenceId"    # I
    .param p2, "flags"    # I
    .param p3, "latitude"    # D
    .param p5, "longitude"    # D
    .param p7, "altitude"    # D
    .param p9, "speed"    # F
    .param p10, "bearing"    # F
    .param p11, "accuracy"    # F
    .param p12, "timestamp"    # J
    .param p14, "transition"    # I
    .param p15, "transitionTimestamp"    # J

    .prologue
    .line 2024
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_0

    .line 2025
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    :cond_0
    move-object v0, p0

    move v1, p2

    move-wide/from16 v2, p3

    move-wide/from16 v4, p5

    move-wide/from16 v6, p7

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move-wide/from16 v11, p12

    .line 2027
    invoke-direct/range {v0 .. v12}, Lcom/android/server/location/GnssLocationProvider;->buildLocation(IDDDFFFJ)Landroid/location/Location;

    move-result-object v2

    .line 2036
    .local v2, "location":Landroid/location/Location;
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 2042
    sget v7, Landroid/location/FusedBatchOptions$SourceTechnologies;->GNSS:I

    .line 2041
    const/4 v6, 0x0

    move v1, p1

    move/from16 v3, p14

    move-wide/from16 v4, p15

    .line 2036
    invoke-virtual/range {v0 .. v7}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceTransition(ILandroid/location/Location;IJII)V

    .line 2023
    return-void
.end method

.method private reportLocation(IDDDFFFJ)V
    .locals 8
    .param p1, "flags"    # I
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .param p6, "altitude"    # D
    .param p8, "speed"    # F
    .param p9, "bearing"    # F
    .param p10, "accuracy"    # F
    .param p11, "timestamp"    # J

    .prologue
    .line 1631
    sget-boolean v4, Lcom/android/server/location/GnssLocationProvider;->VERBOSE:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "GnssLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "reportLocation lat: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " long: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1632
    const-string/jumbo v6, " timestamp: "

    .line 1631
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p11

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    :cond_0
    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider;->mLocation:Landroid/location/Location;

    monitor-enter v5

    .line 1635
    :try_start_0
    iput p1, p0, Lcom/android/server/location/GnssLocationProvider;->mLocationFlags:I

    .line 1636
    and-int/lit8 v4, p1, 0x1

    const/4 v6, 0x1

    if-ne v4, v6, :cond_1

    .line 1637
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v4, p2, p3}, Landroid/location/Location;->setLatitude(D)V

    .line 1638
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v4, p4, p5}, Landroid/location/Location;->setLongitude(D)V

    .line 1639
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLocation:Landroid/location/Location;

    move-wide/from16 v0, p11

    invoke-virtual {v4, v0, v1}, Landroid/location/Location;->setTime(J)V

    .line 1642
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLocation:Landroid/location/Location;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 1644
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mGpsIndoorOpti:Lcom/android/server/location/GnssLocationProvider$GpsIndoorOptimization;

    invoke-virtual {v4}, Lcom/android/server/location/GnssLocationProvider$GpsIndoorOptimization;->setLocation()V

    .line 1647
    :cond_1
    and-int/lit8 v4, p1, 0x2

    const/4 v6, 0x2

    if-ne v4, v6, :cond_9

    .line 1648
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v4, p6, p7}, Landroid/location/Location;->setAltitude(D)V

    .line 1652
    :goto_0
    and-int/lit8 v4, p1, 0x4

    const/4 v6, 0x4

    if-ne v4, v6, :cond_a

    .line 1653
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLocation:Landroid/location/Location;

    move/from16 v0, p8

    invoke-virtual {v4, v0}, Landroid/location/Location;->setSpeed(F)V

    .line 1655
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mGpsIndoorOpti:Lcom/android/server/location/GnssLocationProvider$GpsIndoorOptimization;

    move/from16 v0, p8

    invoke-virtual {v4, v0}, Lcom/android/server/location/GnssLocationProvider$GpsIndoorOptimization;->setSpeed(F)V

    .line 1683
    :goto_1
    and-int/lit8 v4, p1, 0x8

    const/16 v6, 0x8

    if-ne v4, v6, :cond_b

    .line 1684
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLocation:Landroid/location/Location;

    move/from16 v0, p9

    invoke-virtual {v4, v0}, Landroid/location/Location;->setBearing(F)V

    .line 1688
    :goto_2
    and-int/lit8 v4, p1, 0x10

    const/16 v6, 0x10

    if-ne v4, v6, :cond_c

    .line 1689
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLocation:Landroid/location/Location;

    move/from16 v0, p10

    invoke-virtual {v4, v0}, Landroid/location/Location;->setAccuracy(F)V

    .line 1693
    :goto_3
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLocation:Landroid/location/Location;

    iget-object v6, p0, Lcom/android/server/location/GnssLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    invoke-virtual {v4, v6}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1696
    :try_start_1
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mILocationManager:Landroid/location/ILocationManager;

    iget-object v6, p0, Lcom/android/server/location/GnssLocationProvider;->mLocation:Landroid/location/Location;

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Landroid/location/ILocationManager;->reportLocation(Landroid/location/Location;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    monitor-exit v5

    .line 1702
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLastFixTime:J

    .line 1704
    iget v4, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

    if-nez v4, :cond_3

    and-int/lit8 v4, p1, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 1705
    iget-wide v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLastFixTime:J

    iget-wide v6, p0, Lcom/android/server/location/GnssLocationProvider;->mFixRequestTime:J

    sub-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

    .line 1706
    sget-boolean v4, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string/jumbo v4, "GnssLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "TTFF: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    :cond_2
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mListenerHelper:Lcom/android/server/location/GnssStatusListenerHelper;

    iget v5, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

    invoke-virtual {v4, v5}, Lcom/android/server/location/GnssStatusListenerHelper;->onFirstFix(I)V

    .line 1712
    :cond_3
    iget-boolean v4, p0, Lcom/android/server/location/GnssLocationProvider;->mSingleShot:Z

    if-eqz v4, :cond_4

    .line 1713
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->stopNavigating()V

    .line 1716
    :cond_4
    iget-boolean v4, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-eqz v4, :cond_6

    iget v4, p0, Lcom/android/server/location/GnssLocationProvider;->mStatus:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_6

    .line 1719
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v4

    if-nez v4, :cond_5

    iget v4, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    const v5, 0xea60

    if-ge v4, v5, :cond_5

    .line 1720
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1724
    :cond_5
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.location.GPS_FIX_CHANGE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1725
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "enabled"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1726
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1727
    iget v4, p0, Lcom/android/server/location/GnssLocationProvider;->mSvCount:I

    const/4 v5, 0x2

    invoke-direct {p0, v5, v4}, Lcom/android/server/location/GnssLocationProvider;->updateStatus(II)V

    .line 1730
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_6
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v4

    if-nez v4, :cond_8

    iget-boolean v4, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-eqz v4, :cond_8

    .line 1731
    iget v4, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    const/16 v5, 0x2710

    if-le v4, v5, :cond_8

    .line 1732
    sget-boolean v4, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v4, :cond_7

    const-string/jumbo v4, "GnssLocationProvider"

    const-string/jumbo v5, "got fix, hibernating"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    :cond_7
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->hibernate()V

    .line 1630
    :cond_8
    return-void

    .line 1650
    :cond_9
    :try_start_2
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->removeAltitude()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 1634
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 1681
    :cond_a
    :try_start_3
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->removeSpeed()V

    goto/16 :goto_1

    .line 1686
    :cond_b
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->removeBearing()V

    goto/16 :goto_2

    .line 1691
    :cond_c
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->removeAccuracy()V

    goto/16 :goto_3

    .line 1697
    :catch_0
    move-exception v2

    .line 1698
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "GnssLocationProvider"

    const-string/jumbo v6, "RemoteException calling reportLocation"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_4
.end method

.method private reportMeasurementData(Landroid/location/GnssMeasurementsEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/location/GnssMeasurementsEvent;

    .prologue
    .line 1899
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/location/GnssMeasurementsProvider;->onMeasurementsAvailable(Landroid/location/GnssMeasurementsEvent;)V

    .line 1898
    return-void
.end method

.method private reportNavigationMessage(Landroid/location/GnssNavigationMessage;)V
    .locals 1
    .param p1, "event"    # Landroid/location/GnssNavigationMessage;

    .prologue
    .line 1906
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/location/GnssNavigationMessageProvider;->onNavigationMessageAvailable(Landroid/location/GnssNavigationMessage;)V

    .line 1905
    return-void
.end method

.method private reportNmea(J)V
    .locals 5
    .param p1, "timestamp"    # J

    .prologue
    .line 1890
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mNmeaBuffer:[B

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mNmeaBuffer:[B

    array-length v3, v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/location/GnssLocationProvider;->native_read_nmea([BI)I

    move-result v0

    .line 1891
    .local v0, "length":I
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mNmeaBuffer:[B

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([BII)V

    .line 1892
    .local v1, "nmea":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mListenerHelper:Lcom/android/server/location/GnssStatusListenerHelper;

    invoke-virtual {v2, p1, p2, v1}, Lcom/android/server/location/GnssStatusListenerHelper;->onNmeaReceived(JLjava/lang/String;)V

    .line 1889
    return-void
.end method

.method private reportStatus(I)V
    .locals 7
    .param p1, "status"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1741
    sget-boolean v2, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "GnssLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reportStatus status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1743
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mNavigating:Z

    .line 1744
    .local v1, "wasNavigating":Z
    packed-switch p1, :pswitch_data_0

    .line 1762
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mNavigating:Z

    if-eq v1, v2, :cond_1

    .line 1763
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mListenerHelper:Lcom/android/server/location/GnssStatusListenerHelper;

    iget-boolean v3, p0, Lcom/android/server/location/GnssLocationProvider;->mNavigating:Z

    invoke-virtual {v2, v3}, Lcom/android/server/location/GnssStatusListenerHelper;->onStatusChanged(Z)V

    .line 1766
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.location.GPS_ENABLED_CHANGE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1767
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "enabled"

    iget-boolean v3, p0, Lcom/android/server/location/GnssLocationProvider;->mNavigating:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1768
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1740
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void

    .line 1746
    :pswitch_0
    iput-boolean v6, p0, Lcom/android/server/location/GnssLocationProvider;->mNavigating:Z

    .line 1747
    iput-boolean v6, p0, Lcom/android/server/location/GnssLocationProvider;->mEngineOn:Z

    goto :goto_0

    .line 1750
    :pswitch_1
    iput-boolean v5, p0, Lcom/android/server/location/GnssLocationProvider;->mNavigating:Z

    .line 1751
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mGpsIndoorOpti:Lcom/android/server/location/GnssLocationProvider$GpsIndoorOptimization;

    invoke-virtual {v2}, Lcom/android/server/location/GnssLocationProvider$GpsIndoorOptimization;->clearData()V

    goto :goto_0

    .line 1754
    :pswitch_2
    iput-boolean v6, p0, Lcom/android/server/location/GnssLocationProvider;->mEngineOn:Z

    goto :goto_0

    .line 1757
    :pswitch_3
    iput-boolean v5, p0, Lcom/android/server/location/GnssLocationProvider;->mEngineOn:Z

    .line 1758
    iput-boolean v5, p0, Lcom/android/server/location/GnssLocationProvider;->mNavigating:Z

    goto :goto_0

    .line 1744
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private reportSvStatus()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 1776
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSvidWithFlags:[I

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mCn0s:[F

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mSvElevations:[F

    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mSvAzimuths:[F

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/android/server/location/GnssLocationProvider;->native_read_sv_status([I[F[F[F)I

    move-result v1

    .line 1777
    .local v1, "svCount":I
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mListenerHelper:Lcom/android/server/location/GnssStatusListenerHelper;

    .line 1779
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mSvidWithFlags:[I

    .line 1780
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mCn0s:[F

    .line 1781
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mSvElevations:[F

    .line 1782
    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider;->mSvAzimuths:[F

    .line 1777
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/location/GnssStatusListenerHelper;->onSvStatusChanged(I[I[F[F[F)V

    .line 1807
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 1808
    const-string/jumbo v0, "GnssLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SV count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    :cond_0
    const/4 v10, 0x0

    .line 1812
    .local v10, "usedInFixCount":I
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 1813
    .local v9, "strSV":Ljava/lang/StringBuffer;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v1, :cond_3

    .line 1814
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSvidWithFlags:[I

    aget v0, v0, v7

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 1815
    add-int/lit8 v10, v10, 0x1

    .line 1817
    :cond_1
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->VERBOSE:Z

    if-eqz v0, :cond_2

    .line 1818
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "svid: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mSvidWithFlags:[I

    aget v2, v2, v7

    shr-int/lit8 v2, v2, 0x7

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " cn0: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mCn0s:[F

    aget v2, v2, v7

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1813
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1821
    :cond_3
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->VERBOSE:Z

    if-eqz v0, :cond_4

    .line 1822
    const-string/jumbo v0, "GnssLocationProvider"

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1826
    :cond_4
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStatus:I

    invoke-direct {p0, v0, v10}, Lcom/android/server/location/GnssLocationProvider;->updateStatus(II)V

    .line 1827
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNavigating:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStatus:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    iget-wide v2, p0, Lcom/android/server/location/GnssLocationProvider;->mLastFixTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_5

    .line 1828
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLastFixTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2710

    cmp-long v0, v2, v4

    if-lez v0, :cond_5

    .line 1830
    new-instance v6, Landroid/util/BugManager;

    invoke-direct {v6, v12, v12}, Landroid/util/BugManager;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1831
    .local v6, "bugMan":Landroid/util/BugManager;
    const-string/jumbo v0, "GnssLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reportSvStatus,RECENT_FIX_TIMEOUT,svCount"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " system time"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1832
    const-string/jumbo v3, " latitude:"

    .line 1831
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1832
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    .line 1831
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1832
    const-string/jumbo v3, " longitude:"

    .line 1831
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1832
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    .line 1831
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1833
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Location lost during navigation,svCount"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1834
    const-string/jumbo v2, "latitude:"

    .line 1833
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1834
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    .line 1833
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1834
    const-string/jumbo v2, "longitude:"

    .line 1833
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1834
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    .line 1833
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v2, 0xf04803

    invoke-virtual {v6, v2, v0}, Landroid/util/BugManager;->report(ILjava/lang/String;)V

    .line 1838
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v0, "android.location.GPS_FIX_CHANGE"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1839
    .local v8, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "enabled"

    invoke-virtual {v8, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1840
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v8, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1841
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSvCount:I

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0}, Lcom/android/server/location/GnssLocationProvider;->updateStatus(II)V

    .line 1775
    .end local v6    # "bugMan":Landroid/util/BugManager;
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_5
    return-void
.end method

.method private requestRefLocation(I)V
    .locals 10
    .param p1, "flags"    # I

    .prologue
    const/4 v5, 0x3

    .line 2249
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "phone"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 2248
    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 2250
    .local v8, "phone":Landroid/telephony/TelephonyManager;
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v9

    .line 2251
    .local v9, "phoneType":I
    const/4 v0, 0x1

    if-ne v9, v0, :cond_4

    .line 2252
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v6

    check-cast v6, Landroid/telephony/gsm/GsmCellLocation;

    .line 2253
    .local v6, "gsm_cell":Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v6, :cond_3

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2254
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v5, :cond_3

    .line 2256
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2257
    .local v2, "mcc":I
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2258
    .local v3, "mnc":I
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v7

    .line 2259
    .local v7, "networkType":I
    if-eq v7, v5, :cond_0

    .line 2260
    const/16 v0, 0x8

    if-ne v7, v0, :cond_2

    .line 2264
    :cond_0
    const/4 v1, 0x2

    .line 2269
    .local v1, "type":I
    :goto_0
    invoke-virtual {v6}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v4

    invoke-virtual {v6}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v5

    move-object v0, p0

    .line 2268
    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GnssLocationProvider;->native_agps_set_ref_location_cellid(IIIII)V

    .line 2247
    .end local v1    # "type":I
    .end local v2    # "mcc":I
    .end local v3    # "mnc":I
    .end local v6    # "gsm_cell":Landroid/telephony/gsm/GsmCellLocation;
    .end local v7    # "networkType":I
    :cond_1
    :goto_1
    return-void

    .line 2261
    .restart local v2    # "mcc":I
    .restart local v3    # "mnc":I
    .restart local v6    # "gsm_cell":Landroid/telephony/gsm/GsmCellLocation;
    .restart local v7    # "networkType":I
    :cond_2
    const/16 v0, 0x9

    if-eq v7, v0, :cond_0

    .line 2262
    const/16 v0, 0xa

    if-eq v7, v0, :cond_0

    .line 2263
    const/16 v0, 0xf

    if-eq v7, v0, :cond_0

    .line 2266
    const/4 v1, 0x1

    .restart local v1    # "type":I
    goto :goto_0

    .line 2271
    .end local v1    # "type":I
    .end local v2    # "mcc":I
    .end local v3    # "mnc":I
    .end local v7    # "networkType":I
    :cond_3
    const-string/jumbo v0, "GnssLocationProvider"

    const-string/jumbo v4, "Error getting cell location info."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2273
    .end local v6    # "gsm_cell":Landroid/telephony/gsm/GsmCellLocation;
    :cond_4
    const/4 v0, 0x2

    if-ne v9, v0, :cond_1

    .line 2274
    const-string/jumbo v0, "GnssLocationProvider"

    const-string/jumbo v4, "CDMA not supported."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private requestSetID(I)V
    .locals 6
    .param p1, "flags"    # I

    .prologue
    .line 2208
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 2207
    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 2209
    .local v2, "phone":Landroid/telephony/TelephonyManager;
    const/4 v3, 0x0

    .line 2210
    .local v3, "type":I
    const-string/jumbo v0, ""

    .line 2212
    .local v0, "data":Ljava/lang/String;
    and-int/lit8 v4, p1, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 2213
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 2214
    .local v1, "data_temp":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 2232
    .end local v1    # "data_temp":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-direct {p0, v3, v0}, Lcom/android/server/location/GnssLocationProvider;->native_agps_set_id(ILjava/lang/String;)V

    .line 2206
    return-void

    .line 2218
    .restart local v1    # "data_temp":Ljava/lang/String;
    :cond_1
    move-object v0, v1

    .line 2219
    const/4 v3, 0x1

    goto :goto_0

    .line 2222
    .end local v1    # "data_temp":Ljava/lang/String;
    :cond_2
    and-int/lit8 v4, p1, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 2223
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 2224
    .restart local v1    # "data_temp":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 2228
    move-object v0, v1

    .line 2229
    const/4 v3, 0x2

    goto :goto_0
.end method

.method private requestUtcTime()V
    .locals 3

    .prologue
    .line 2239
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "GnssLocationProvider"

    const-string/jumbo v1, "utcTimeRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2240
    :cond_0
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 2238
    return-void
.end method

.method private sendMessage(IILjava/lang/Object;)V
    .locals 3
    .param p1, "message"    # I
    .param p2, "arg"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2282
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2283
    const-string/jumbo v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WakeLock acquired by sendMessage("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2284
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2278
    return-void
.end method

.method private setEngineCapabilities(I)V
    .locals 5
    .param p1, "capabilities"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1913
    iput p1, p0, Lcom/android/server/location/GnssLocationProvider;->mEngineCapabilities:I

    .line 1915
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1916
    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mOnDemandTimeInjection:Z

    .line 1917
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->requestUtcTime()V

    .line 1920
    :cond_0
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    .line 1921
    and-int/lit8 v0, p1, 0x40

    const/16 v4, 0x40

    if-ne v0, v4, :cond_1

    move v0, v1

    .line 1920
    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/server/location/GnssMeasurementsProvider;->onCapabilitiesUpdated(Z)V

    .line 1922
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    .line 1923
    and-int/lit16 v3, p1, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_2

    .line 1922
    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/server/location/GnssNavigationMessageProvider;->onCapabilitiesUpdated(Z)V

    .line 1912
    return-void

    :cond_1
    move v0, v2

    .line 1921
    goto :goto_0

    :cond_2
    move v1, v2

    .line 1923
    goto :goto_1
.end method

.method private setGnssYearOfHardware(I)V
    .locals 3
    .param p1, "yearOfHardware"    # I

    .prologue
    .line 1930
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setGnssYearOfHardware called with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1931
    :cond_0
    iput p1, p0, Lcom/android/server/location/GnssLocationProvider;->mYearOfHardware:I

    .line 1929
    return-void
.end method

.method private setRouting()V
    .locals 4

    .prologue
    .line 2525
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    if-nez v1, :cond_0

    .line 2526
    return-void

    .line 2530
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 2532
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    .line 2531
    const/4 v3, 0x3

    .line 2530
    invoke-virtual {v1, v3, v2}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v0

    .line 2534
    .local v0, "result":Z
    if-nez v0, :cond_2

    .line 2535
    const-string/jumbo v1, "GnssLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error requesting route to host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2524
    :cond_1
    :goto_0
    return-void

    .line 2536
    :cond_2
    sget-boolean v1, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 2537
    const-string/jumbo v1, "GnssLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Successfully requested route to host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setSuplHostPort(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "hostString"    # Ljava/lang/String;
    .param p2, "portString"    # Ljava/lang/String;

    .prologue
    .line 1182
    if-eqz p1, :cond_0

    .line 1183
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerHost:Ljava/lang/String;

    .line 1185
    :cond_0
    if-eqz p2, :cond_1

    .line 1187
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerPort:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1192
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerHost:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1193
    iget v1, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerPort:I

    if-lez v1, :cond_2

    .line 1194
    iget v1, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerPort:I

    const v2, 0xffff

    if-gt v1, v2, :cond_2

    .line 1195
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerHost:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerPort:I

    const/4 v3, 0x1

    invoke-direct {p0, v3, v1, v2}, Lcom/android/server/location/GnssLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 1181
    :cond_2
    return-void

    .line 1188
    :catch_0
    move-exception v0

    .line 1189
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v1, "GnssLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to parse SUPL_PORT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startNavigating(Z)V
    .locals 10
    .param p1, "singleShot"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 1530
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-nez v0, :cond_6

    .line 1531
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startNavigating, singleShot is "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGpsIndoorOpti:Lcom/android/server/location/GnssLocationProvider$GpsIndoorOptimization;

    invoke-virtual {v0}, Lcom/android/server/location/GnssLocationProvider$GpsIndoorOptimization;->clearData()V

    .line 1535
    iput v2, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

    .line 1536
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLastFixTime:J

    .line 1537
    iput-boolean v8, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    .line 1538
    iput-boolean p1, p0, Lcom/android/server/location/GnssLocationProvider;->mSingleShot:Z

    .line 1539
    iput v2, p0, Lcom/android/server/location/GnssLocationProvider;->mPositionMode:I

    .line 1542
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1543
    const-string/jumbo v1, "assisted_gps_enabled"

    .line 1542
    invoke-static {v0, v1, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v6, 0x1

    .line 1544
    .local v6, "agpsEnabled":Z
    :goto_0
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mProperties:Ljava/util/Properties;

    invoke-direct {p0, v0, v6, p1}, Lcom/android/server/location/GnssLocationProvider;->getSuplMode(Ljava/util/Properties;ZZ)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider;->mPositionMode:I

    .line 1546
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 1549
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mPositionMode:I

    packed-switch v0, :pswitch_data_0

    .line 1560
    const-string/jumbo v7, "unknown"

    .line 1563
    .local v7, "mode":Ljava/lang/String;
    :goto_1
    const-string/jumbo v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setting position_mode to "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    .end local v7    # "mode":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v8}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v3, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    .line 1567
    .local v3, "interval":I
    :goto_2
    const-string/jumbo v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "interval = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    iget v1, p0, Lcom/android/server/location/GnssLocationProvider;->mPositionMode:I

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GnssLocationProvider;->native_set_position_mode(IIIII)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1570
    iput-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    .line 1571
    const-string/jumbo v0, "GnssLocationProvider"

    const-string/jumbo v1, "set_position_mode failed in startNavigating()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1572
    return-void

    .line 1542
    .end local v3    # "interval":I
    .end local v6    # "agpsEnabled":Z
    :cond_2
    const/4 v6, 0x0

    .restart local v6    # "agpsEnabled":Z
    goto :goto_0

    .line 1551
    :pswitch_0
    const-string/jumbo v7, "standalone"

    .restart local v7    # "mode":Ljava/lang/String;
    goto :goto_1

    .line 1554
    .end local v7    # "mode":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v7, "MS_ASSISTED"

    .restart local v7    # "mode":Ljava/lang/String;
    goto :goto_1

    .line 1557
    .end local v7    # "mode":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v7, "MS_BASED"

    .restart local v7    # "mode":Ljava/lang/String;
    goto :goto_1

    .line 1566
    .end local v7    # "mode":Ljava/lang/String;
    :cond_3
    const/16 v3, 0x3e8

    .restart local v3    # "interval":I
    goto :goto_2

    .line 1574
    :cond_4
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_start()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1575
    iput-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    .line 1576
    const-string/jumbo v0, "GnssLocationProvider"

    const-string/jumbo v1, "native_start failed in startNavigating()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    return-void

    .line 1581
    :cond_5
    invoke-direct {p0, v8, v2}, Lcom/android/server/location/GnssLocationProvider;->updateStatus(II)V

    .line 1582
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/GnssLocationProvider;->mFixRequestTime:J

    .line 1583
    invoke-direct {p0, v8}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1586
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    const v1, 0xea60

    if-lt v0, v1, :cond_6

    .line 1587
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    .line 1588
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/32 v8, 0xea60

    add-long/2addr v4, v8

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    .line 1587
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1529
    .end local v3    # "interval":I
    .end local v6    # "agpsEnabled":Z
    :cond_6
    return-void

    .line 1549
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private stopNavigating()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1595
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "GnssLocationProvider"

    const-string/jumbo v1, "stopNavigating"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1596
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-eqz v0, :cond_1

    .line 1597
    iput-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    .line 1598
    iput-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mSingleShot:Z

    .line 1599
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_stop()Z

    .line 1600
    iput v2, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

    .line 1601
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLastFixTime:J

    .line 1602
    iput v2, p0, Lcom/android/server/location/GnssLocationProvider;->mLocationFlags:I

    .line 1604
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGpsIndoorOpti:Lcom/android/server/location/GnssLocationProvider$GpsIndoorOptimization;

    invoke-virtual {v0}, Lcom/android/server/location/GnssLocationProvider$GpsIndoorOptimization;->clearData()V

    .line 1608
    const/4 v0, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/server/location/GnssLocationProvider;->updateStatus(II)V

    .line 1594
    :cond_1
    return-void
.end method

.method private subscriptionOrSimChanged(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 600
    sget-boolean v5, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "GnssLocationProvider"

    const-string/jumbo v6, "received SIM related action: "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :cond_0
    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 601
    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 603
    .local v4, "phone":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    .line 604
    .local v3, "mccMnc":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 605
    .local v1, "imsi":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v0

    .line 606
    .local v0, "groupId":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 607
    sget-boolean v5, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string/jumbo v5, "GnssLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SIM MCC/MNC is available: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :cond_1
    iget-object v6, p0, Lcom/android/server/location/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 609
    :try_start_0
    invoke-direct {p0, v3, v1, v0}, Lcom/android/server/location/GnssLocationProvider;->isVerizon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 611
    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider;->mProperties:Ljava/util/Properties;

    invoke-direct {p0, p1, v5}, Lcom/android/server/location/GnssLocationProvider;->loadPropertiesFromResource(Landroid/content/Context;Ljava/util/Properties;)V

    .line 612
    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider;->mProperties:Ljava/util/Properties;

    const-string/jumbo v7, "LPP_PROFILE"

    invoke-virtual {v5, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 614
    .local v2, "lpp_profile":Ljava/lang/String;
    const-string/jumbo v5, "persist.sys.gps.lpp"

    invoke-static {v5, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    .end local v2    # "lpp_profile":Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider;->mProperties:Ljava/util/Properties;

    invoke-direct {p0, p1, v5}, Lcom/android/server/location/GnssLocationProvider;->reloadGpsProperties(Landroid/content/Context;Ljava/util/Properties;)V

    .line 620
    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    iget-boolean v7, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplEsEnabled:Z

    invoke-virtual {v5, v7}, Lcom/android/internal/location/GpsNetInitiatedHandler;->setSuplEsEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    .line 599
    :cond_2
    :goto_1
    return-void

    .line 617
    :cond_3
    :try_start_1
    const-string/jumbo v5, "persist.sys.gps.lpp"

    const-string/jumbo v7, ""

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 608
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 623
    :cond_4
    sget-boolean v5, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string/jumbo v5, "GnssLocationProvider"

    const-string/jumbo v6, "SIM MCC/MNC is still not available"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private translateToApnIpType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "ipProtocol"    # Ljava/lang/String;
    .param p2, "apn"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2508
    const-string/jumbo v1, "IP"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2509
    return v4

    .line 2511
    :cond_0
    const-string/jumbo v1, "IPV6"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2512
    return v2

    .line 2514
    :cond_1
    const-string/jumbo v1, "IPV4V6"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2515
    const/4 v1, 0x3

    return v1

    .line 2519
    :cond_2
    const-string/jumbo v1, "Unknown IP Protocol: %s, for APN: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2520
    .local v0, "message":Ljava/lang/String;
    const-string/jumbo v1, "GnssLocationProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2521
    return v3
.end method

.method private updateClientUids(Landroid/os/WorkSource;)V
    .locals 11
    .param p1, "source"    # Landroid/os/WorkSource;

    .prologue
    .line 1398
    iget-object v7, p0, Lcom/android/server/location/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    invoke-virtual {v7, p1}, Landroid/os/WorkSource;->setReturningDiffs(Landroid/os/WorkSource;)[Landroid/os/WorkSource;

    move-result-object v0

    .line 1399
    .local v0, "changes":[Landroid/os/WorkSource;
    if-nez v0, :cond_0

    .line 1400
    return-void

    .line 1402
    :cond_0
    const/4 v7, 0x0

    aget-object v5, v0, v7

    .line 1403
    .local v5, "newWork":Landroid/os/WorkSource;
    const/4 v7, 0x1

    aget-object v2, v0, v7

    .line 1406
    .local v2, "goneWork":Landroid/os/WorkSource;
    if-eqz v5, :cond_2

    .line 1407
    const/4 v4, -0x1

    .line 1408
    .local v4, "lastuid":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v5}, Landroid/os/WorkSource;->size()I

    move-result v7

    if-ge v3, v7, :cond_2

    .line 1410
    :try_start_0
    invoke-virtual {v5, v3}, Landroid/os/WorkSource;->get(I)I

    move-result v6

    .line 1419
    .local v6, "uid":I
    iget-object v7, p0, Lcom/android/server/location/GnssLocationProvider;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    iget-object v8, p0, Lcom/android/server/location/GnssLocationProvider;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v8}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v8

    .line 1420
    invoke-virtual {v5, v3}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    .line 1419
    invoke-interface {v7, v8, v10, v6, v9}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;)I

    .line 1421
    if-eq v6, v4, :cond_1

    .line 1422
    move v4, v6

    .line 1423
    iget-object v7, p0, Lcom/android/server/location/GnssLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v7, v6}, Lcom/android/internal/app/IBatteryStats;->noteStartGps(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1408
    .end local v6    # "uid":I
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1425
    :catch_0
    move-exception v1

    .line 1426
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v7, "GnssLocationProvider"

    const-string/jumbo v8, "RemoteException"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1432
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "i":I
    .end local v4    # "lastuid":I
    :cond_2
    if-eqz v2, :cond_4

    .line 1433
    const/4 v4, -0x1

    .line 1434
    .restart local v4    # "lastuid":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    invoke-virtual {v2}, Landroid/os/WorkSource;->size()I

    move-result v7

    if-ge v3, v7, :cond_4

    .line 1436
    :try_start_1
    invoke-virtual {v2, v3}, Landroid/os/WorkSource;->get(I)I

    move-result v6

    .line 1437
    .restart local v6    # "uid":I
    iget-object v7, p0, Lcom/android/server/location/GnssLocationProvider;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    iget-object v8, p0, Lcom/android/server/location/GnssLocationProvider;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v8}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v8

    .line 1438
    invoke-virtual {v2, v3}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    .line 1437
    invoke-interface {v7, v8, v10, v6, v9}, Lcom/android/internal/app/IAppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V

    .line 1439
    if-eq v6, v4, :cond_3

    .line 1440
    move v4, v6

    .line 1441
    iget-object v7, p0, Lcom/android/server/location/GnssLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v7, v6}, Lcom/android/internal/app/IBatteryStats;->noteStopGps(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1434
    .end local v6    # "uid":I
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1443
    :catch_1
    move-exception v1

    .line 1444
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string/jumbo v7, "GnssLocationProvider"

    const-string/jumbo v8, "RemoteException"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1396
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "i":I
    .end local v4    # "lastuid":I
    :cond_4
    return-void
.end method

.method private updateLowPowerMode()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 654
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v0

    .line 655
    .local v0, "disableGps":Z
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "batterySaverGpsMode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 662
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mDisableGps:Z

    if-eq v0, v1, :cond_0

    .line 663
    iput-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mDisableGps:Z

    .line 664
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->updateRequirements()V

    .line 652
    :cond_0
    return-void

    .line 659
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    :goto_1
    or-int/2addr v0, v1

    .line 660
    goto :goto_0

    :cond_2
    move v1, v2

    .line 659
    goto :goto_1

    .line 655
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private updateRequirements()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 1343
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mWorkSource:Landroid/os/WorkSource;

    if-nez v0, :cond_1

    .line 1344
    :cond_0
    return-void

    .line 1347
    :cond_1
    const/4 v8, 0x0

    .line 1350
    .local v8, "singleShot":Z
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-object v0, v0, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 1351
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-object v0, v0, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1354
    const/4 v8, 0x1

    .line 1356
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-object v0, v0, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "lr$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/LocationRequest;

    .line 1357
    .local v6, "lr":Landroid/location/LocationRequest;
    invoke-virtual {v6}, Landroid/location/LocationRequest;->getNumUpdates()I

    move-result v0

    if-eq v0, v9, :cond_2

    .line 1358
    const/4 v8, 0x0

    goto :goto_0

    .line 1363
    .end local v6    # "lr":Landroid/location/LocationRequest;
    .end local v7    # "lr$iterator":Ljava/util/Iterator;
    :cond_3
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setRequest "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    :cond_4
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-boolean v0, v0, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mDisableGps:Z

    if-eqz v0, :cond_7

    .line 1388
    :cond_5
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->updateClientUids(Landroid/os/WorkSource;)V

    .line 1390
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->stopNavigating()V

    .line 1391
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1392
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1342
    :cond_6
    :goto_1
    return-void

    .line 1364
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/location/GnssLocationProvider;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1366
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->updateClientUids(Landroid/os/WorkSource;)V

    .line 1368
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-wide v0, v0, Lcom/android/internal/location/ProviderRequest;->interval:J

    long-to-int v0, v0

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    .line 1371
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    int-to-long v0, v0

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-wide v4, v3, Lcom/android/internal/location/ProviderRequest;->interval:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_8

    .line 1372
    const-string/jumbo v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "interval overflow: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-wide v4, v3, Lcom/android/internal/location/ProviderRequest;->interval:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    .line 1375
    :cond_8
    const-string/jumbo v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mFixInterval = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-eqz v0, :cond_9

    invoke-direct {p0, v9}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1379
    iget v1, p0, Lcom/android/server/location/GnssLocationProvider;->mPositionMode:I

    .line 1380
    iget v3, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    move-object v0, p0

    move v4, v2

    move v5, v2

    .line 1379
    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GnssLocationProvider;->native_set_position_mode(IIIII)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1381
    const-string/jumbo v0, "GnssLocationProvider"

    const-string/jumbo v1, "set_position_mode failed in setMinTime()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1383
    :cond_9
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-nez v0, :cond_6

    .line 1385
    invoke-direct {p0, v8}, Lcom/android/server/location/GnssLocationProvider;->startNavigating(Z)V

    goto/16 :goto_1
.end method

.method private updateStatus(II)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "svCount"    # I

    .prologue
    .line 1317
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStatus:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSvCount:I

    if-eq p2, v0, :cond_1

    .line 1318
    :cond_0
    iput p1, p0, Lcom/android/server/location/GnssLocationProvider;->mStatus:I

    .line 1319
    iput p2, p0, Lcom/android/server/location/GnssLocationProvider;->mSvCount:I

    .line 1320
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    const-string/jumbo v1, "satellites"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1321
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStatusUpdateTime:J

    .line 1316
    :cond_1
    return-void
.end method

.method private xtraDownloadRequest()V
    .locals 3

    .prologue
    .line 1957
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "GnssLocationProvider"

    const-string/jumbo v1, "xtraDownloadRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1958
    :cond_0
    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1956
    return-void
.end method


# virtual methods
.method IsPoorSVs(I)Z
    .locals 7
    .param p1, "svCount"    # I

    .prologue
    const v6, 0x3c23d70a    # 0.01f

    .line 2650
    const/4 v1, 0x0

    .line 2651
    .local v1, "nValidCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_2

    .line 2653
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mCn0s:[F

    aget v2, v2, v0

    float-to-double v2, v2

    const-wide/high16 v4, 0x402e000000000000L    # 15.0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mSvElevations:[F

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v6

    if-gtz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mSvAzimuths:[F

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v6

    if-lez v2, :cond_1

    .line 2655
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 2651
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2658
    :cond_2
    const/4 v2, 0x2

    if-lt v1, v2, :cond_3

    const/4 v2, 0x0

    :goto_1
    return v2

    :cond_3
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public disable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1270
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1271
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit v1

    return-void

    .line 1272
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 1275
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1269
    return-void

    .line 1270
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const/16 v3, 0xa

    .line 2598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2599
    .local v0, "s":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "  mFixInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2600
    const-string/jumbo v1, "  mDisableGps (battery saver mode)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mDisableGps:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2601
    const-string/jumbo v1, "  mEngineCapabilities=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GnssLocationProvider;->mEngineCapabilities:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2602
    const-string/jumbo v1, " ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2603
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SCHEDULING "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2604
    :cond_0
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "MSB "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2605
    :cond_1
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "MSA "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2606
    :cond_2
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "SINGLE_SHOT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2607
    :cond_3
    const/16 v1, 0x10

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "ON_DEMAND_TIME "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2608
    :cond_4
    const/16 v1, 0x20

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "GEOFENCING "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2609
    :cond_5
    const/16 v1, 0x40

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "MEASUREMENTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2610
    :cond_6
    const/16 v1, 0x80

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string/jumbo v1, "NAV_MESSAGES "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2611
    :cond_7
    const-string/jumbo v1, ")\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2613
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_get_internal_state()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2614
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2597
    return-void
.end method

.method public enable()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1173
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1174
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit v1

    return-void

    .line 1175
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 1178
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1172
    return-void

    .line 1173
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public forceRestoreNavigating()V
    .locals 1

    .prologue
    .line 2792
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->startNavigating(Z)V

    .line 2791
    return-void
.end method

.method public forceStopNavigating()V
    .locals 2

    .prologue
    .line 2786
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->stopNavigating()V

    .line 2787
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2788
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2785
    return-void
.end method

.method public getGnssMeasurementsProvider()Lcom/android/server/location/GnssMeasurementsProvider;
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    return-object v0
.end method

.method public getGnssNavigationMessageProvider()Lcom/android/server/location/GnssNavigationMessageProvider;
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    return-object v0
.end method

.method public getGnssStatusProvider()Landroid/location/IGnssStatusProvider;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssStatusProvider:Landroid/location/IGnssStatusProvider;

    return-object v0
.end method

.method public getGnssSystemInfoProvider()Lcom/android/server/location/GnssLocationProvider$GnssSystemInfoProvider;
    .locals 1

    .prologue
    .line 1945
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$13;

    invoke-direct {v0, p0}, Lcom/android/server/location/GnssLocationProvider$13;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    return-object v0
.end method

.method public getGpsGeofenceProxy()Landroid/location/IGpsGeofenceHardware;
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGpsGeofenceBinder:Landroid/location/IGpsGeofenceHardware;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 918
    const-string/jumbo v0, "gps"

    return-object v0
.end method

.method public getNetInitiatedListener()Landroid/location/INetInitiatedListener;
    .locals 1

    .prologue
    .line 2132
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    return-object v0
.end method

.method public getProperties()Lcom/android/internal/location/ProviderProperties;
    .locals 1

    .prologue
    .line 923
    sget-object v0, Lcom/android/server/location/GnssLocationProvider;->PROPERTIES:Lcom/android/internal/location/ProviderProperties;

    return-object v0
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1310
    if-eqz p1, :cond_0

    .line 1311
    const-string/jumbo v0, "satellites"

    iget v1, p0, Lcom/android/server/location/GnssLocationProvider;->mSvCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1313
    :cond_0
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStatus:I

    return v0
.end method

.method public getStatusUpdateTime()J
    .locals 2

    .prologue
    .line 1327
    iget-wide v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStatusUpdateTime:J

    return-wide v0
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    .line 1303
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1304
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 1303
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public reportNiNotification(IIIIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 10
    .param p1, "notificationId"    # I
    .param p2, "niType"    # I
    .param p3, "notifyFlags"    # I
    .param p4, "timeout"    # I
    .param p5, "defaultResponse"    # I
    .param p6, "requestorId"    # Ljava/lang/String;
    .param p7, "text"    # Ljava/lang/String;
    .param p8, "requestorIdEncoding"    # I
    .param p9, "textEncoding"    # I
    .param p10, "extras"    # Ljava/lang/String;

    .prologue
    .line 2149
    const-string/jumbo v7, "GnssLocationProvider"

    const-string/jumbo v8, "reportNiNotification: entered"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    const-string/jumbo v7, "GnssLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "notificationId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2151
    const-string/jumbo v9, ", niType: "

    .line 2150
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2152
    const-string/jumbo v9, ", notifyFlags: "

    .line 2150
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2153
    const-string/jumbo v9, ", timeout: "

    .line 2150
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2154
    const-string/jumbo v9, ", defaultResponse: "

    .line 2150
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2156
    const-string/jumbo v7, "GnssLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "requestorId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2157
    const-string/jumbo v9, ", text: "

    .line 2156
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p7

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2158
    const-string/jumbo v9, ", requestorIdEncoding: "

    .line 2156
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2159
    const-string/jumbo v9, ", textEncoding: "

    .line 2156
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p9

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2161
    new-instance v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;

    invoke-direct {v6}, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;-><init>()V

    .line 2163
    .local v6, "notification":Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;
    iput p1, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    .line 2164
    iput p2, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->niType:I

    .line 2165
    and-int/lit8 v7, p3, 0x1

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    :goto_0
    iput-boolean v7, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needNotify:Z

    .line 2166
    and-int/lit8 v7, p3, 0x2

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    :goto_1
    iput-boolean v7, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needVerify:Z

    .line 2167
    and-int/lit8 v7, p3, 0x4

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    :goto_2
    iput-boolean v7, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->privacyOverride:Z

    .line 2168
    iput p4, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->timeout:I

    .line 2169
    iput p5, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->defaultResponse:I

    .line 2170
    move-object/from16 v0, p6

    iput-object v0, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    .line 2171
    move-object/from16 v0, p7

    iput-object v0, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    .line 2172
    move/from16 v0, p8

    iput v0, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorIdEncoding:I

    .line 2173
    move/from16 v0, p9

    iput v0, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->textEncoding:I

    .line 2177
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2179
    .local v1, "bundle":Landroid/os/Bundle;
    if-nez p10, :cond_0

    const-string/jumbo p10, ""

    .line 2180
    :cond_0
    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    .line 2183
    .local v5, "extraProp":Ljava/util/Properties;
    :try_start_0
    new-instance v7, Ljava/io/StringReader;

    move-object/from16 v0, p10

    invoke-direct {v7, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/util/Properties;->load(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2190
    :goto_3
    invoke-virtual {v5}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "ent$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2192
    .local v3, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 2165
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v3    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v4    # "ent$iterator":Ljava/util/Iterator;
    .end local v5    # "extraProp":Ljava/util/Properties;
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 2166
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 2167
    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    .line 2186
    .restart local v1    # "bundle":Landroid/os/Bundle;
    .restart local v5    # "extraProp":Ljava/util/Properties;
    :catch_0
    move-exception v2

    .line 2187
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v7, "GnssLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "reportNiNotification cannot parse extras data: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p10

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2195
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v4    # "ent$iterator":Ljava/util/Iterator;
    :cond_4
    iput-object v1, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->extras:Landroid/os/Bundle;

    .line 2197
    iget-object v7, p0, Lcom/android/server/location/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-virtual {v7, v6}, Lcom/android/internal/location/GpsNetInitiatedHandler;->handleNiNotification(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V

    .line 2147
    return-void
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 6
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1453
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1454
    .local v0, "identity":J
    const/4 v2, 0x0

    .line 1456
    .local v2, "result":Z
    const-string/jumbo v3, "delete_aiding_data"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1457
    invoke-direct {p0, p2}, Lcom/android/server/location/GnssLocationProvider;->deleteAidingData(Landroid/os/Bundle;)Z

    move-result v2

    .line 1470
    .end local v2    # "result":Z
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1471
    return v2

    .line 1458
    .restart local v2    # "result":Z
    :cond_1
    const-string/jumbo v3, "force_time_injection"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1459
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->requestUtcTime()V

    .line 1460
    const/4 v2, 0x1

    goto :goto_0

    .line 1461
    :cond_2
    const-string/jumbo v3, "force_xtra_injection"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1462
    iget-boolean v3, p0, Lcom/android/server/location/GnssLocationProvider;->mSupportsXtra:Z

    if-eqz v3, :cond_0

    .line 1463
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->xtraDownloadRequest()V

    .line 1464
    const/4 v2, 0x1

    goto :goto_0

    .line 1467
    :cond_3
    const-string/jumbo v3, "GnssLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendExtraCommand: unknown command "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .locals 3
    .param p1, "request"    # Lcom/android/internal/location/ProviderRequest;
    .param p2, "source"    # Landroid/os/WorkSource;

    .prologue
    .line 1332
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$GpsRequest;

    invoke-direct {v0, p1, p2}, Lcom/android/server/location/GnssLocationProvider$GpsRequest;-><init>(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1331
    return-void
.end method
