.class public Lcom/android/server/wifi/WifiNative;
.super Ljava/lang/Object;
.source "WifiNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiNative$BucketSettings;,
        Lcom/android/server/wifi/WifiNative$ChannelSettings;,
        Lcom/android/server/wifi/WifiNative$FateReport;,
        Lcom/android/server/wifi/WifiNative$HotlistEventHandler;,
        Lcom/android/server/wifi/WifiNative$MonitorThread;,
        Lcom/android/server/wifi/WifiNative$PnoEventHandler;,
        Lcom/android/server/wifi/WifiNative$PnoNetwork;,
        Lcom/android/server/wifi/WifiNative$PnoSettings;,
        Lcom/android/server/wifi/WifiNative$RingBufferStatus;,
        Lcom/android/server/wifi/WifiNative$RttEventHandler;,
        Lcom/android/server/wifi/WifiNative$RxFateReport;,
        Lcom/android/server/wifi/WifiNative$ScanCapabilities;,
        Lcom/android/server/wifi/WifiNative$ScanEventHandler;,
        Lcom/android/server/wifi/WifiNative$ScanSettings;,
        Lcom/android/server/wifi/WifiNative$SignificantWifiChangeEventHandler;,
        Lcom/android/server/wifi/WifiNative$TdlsCapabilities;,
        Lcom/android/server/wifi/WifiNative$TdlsEventHandler;,
        Lcom/android/server/wifi/WifiNative$TdlsStatus;,
        Lcom/android/server/wifi/WifiNative$TxFateReport;,
        Lcom/android/server/wifi/WifiNative$WifiChannelInfo;,
        Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;,
        Lcom/android/server/wifi/WifiNative$WifiRssiEventHandler;
    }
.end annotation


# static fields
.field public static final BLUETOOTH_COEXISTENCE_MODE_DISABLED:I = 0x1

.field public static final BLUETOOTH_COEXISTENCE_MODE_ENABLED:I = 0x0

.field public static final BLUETOOTH_COEXISTENCE_MODE_SENSE:I = 0x2

.field private static final BSS_BSSID_STR:Ljava/lang/String; = "bssid="

.field private static final BSS_DELIMITER_STR:Ljava/lang/String; = "===="

.field private static final BSS_END_STR:Ljava/lang/String; = "####"

.field private static final BSS_FLAGS_STR:Ljava/lang/String; = "flags="

.field private static final BSS_FREQ_STR:Ljava/lang/String; = "freq="

.field private static final BSS_ID_STR:Ljava/lang/String; = "id="

.field private static final BSS_IE_STR:Ljava/lang/String; = "ie="

.field private static final BSS_LEVEL_STR:Ljava/lang/String; = "level="

.field private static final BSS_SSID_STR:Ljava/lang/String; = "ssid="

.field private static final BSS_TSF_STR:Ljava/lang/String; = "tsf="

.field private static DBG:Z = false

.field private static final DEFAULT_GROUP_OWNER_INTENT:I = 0x6

.field private static final STOP_HAL_TIMEOUT_MS:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "WifiNative-HAL"

.field public static final WIFI_SCAN_FAILED:I = 0x3

.field public static final WIFI_SCAN_RESULTS_AVAILABLE:I = 0x0

.field public static final WIFI_SCAN_THRESHOLD_NUM_SCANS:I = 0x1

.field public static final WIFI_SCAN_THRESHOLD_PERCENT:I = 0x2

.field public static final WIFI_SUCCESS:I

.field private static mFwMemoryDump:[B

.field private static p2pNativeInterface:Lcom/android/server/wifi/WifiNative;

.field private static sCmdId:I

.field private static sHotlistCmdId:I

.field private static sHotlistEventHandler:Lcom/android/server/wifi/WifiNative$HotlistEventHandler;

.field private static final sLocalLog:Landroid/util/LocalLog;

.field public static final sLock:Ljava/lang/Object;

.field private static sLogCmdId:I

.field private static sPnoCmdId:I

.field private static sPnoEventHandler:Lcom/android/server/wifi/WifiNative$PnoEventHandler;

.field private static sRssiMonitorCmdId:I

.field private static sRttCmdId:I

.field private static sRttEventHandler:Lcom/android/server/wifi/WifiNative$RttEventHandler;

.field private static sRttResponderCmdId:I

.field private static sScanCmdId:I

.field private static sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

.field private static sScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

.field private static sSignificantWifiChangeCmdId:I

.field private static sSignificantWifiChangeHandler:Lcom/android/server/wifi/WifiNative$SignificantWifiChangeEventHandler;

.field private static sTdlsEventHandler:Lcom/android/server/wifi/WifiNative$TdlsEventHandler;

.field private static sThread:Lcom/android/server/wifi/WifiNative$MonitorThread;

.field private static sWifiHalHandle:J

.field private static sWifiIfaceHandles:[J

.field private static sWifiLoggerEventHandler:Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;

.field private static sWifiRssiEventHandler:Lcom/android/server/wifi/WifiNative$WifiRssiEventHandler;

.field public static sWlan0Index:I

.field private static wlanNativeInterface:Lcom/android/server/wifi/WifiNative;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mInterfaceName:Ljava/lang/String;

.field private final mInterfacePrefix:Ljava/lang/String;

.field private final mTAG:Ljava/lang/String;


# direct methods
.method static synthetic -get0()J
    .locals 2

    sget-wide v0, Lcom/android/server/wifi/WifiNative;->sWifiHalHandle:J

    return-wide v0
.end method

.method static synthetic -wrap0()V
    .locals 0

    invoke-static {}, Lcom/android/server/wifi/WifiNative;->waitForHalEventNative()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 96
    sput-boolean v3, Lcom/android/server/wifi/WifiNative;->DBG:Z

    .line 105
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    .line 107
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x2000

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    sput-object v0, Lcom/android/server/wifi/WifiNative;->sLocalLog:Landroid/util/LocalLog;

    .line 116
    const-string/jumbo v0, "wifi-service"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 117
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->registerNatives()I

    .line 126
    new-instance v0, Lcom/android/server/wifi/WifiNative;

    const-string/jumbo v1, "wifi.interface"

    const-string/jumbo v2, "wlan0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Lcom/android/server/wifi/WifiNative;-><init>(Ljava/lang/String;Z)V

    .line 125
    sput-object v0, Lcom/android/server/wifi/WifiNative;->wlanNativeInterface:Lcom/android/server/wifi/WifiNative;

    .line 133
    new-instance v0, Lcom/android/server/wifi/WifiNative;

    const-string/jumbo v1, "wifi.direct.interface"

    const-string/jumbo v2, "p2p0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/android/server/wifi/WifiNative;-><init>(Ljava/lang/String;Z)V

    .line 131
    sput-object v0, Lcom/android/server/wifi/WifiNative;->p2pNativeInterface:Lcom/android/server/wifi/WifiNative;

    .line 1555
    sput v5, Lcom/android/server/wifi/WifiNative;->sCmdId:I

    .line 1561
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/wifi/WifiNative;->sWifiHalHandle:J

    .line 1562
    sput-object v6, Lcom/android/server/wifi/WifiNative;->sWifiIfaceHandles:[J

    .line 1563
    sput v4, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    .line 1923
    sput v3, Lcom/android/server/wifi/WifiNative;->sScanCmdId:I

    .line 2021
    sput v3, Lcom/android/server/wifi/WifiNative;->sHotlistCmdId:I

    .line 2243
    sput v3, Lcom/android/server/wifi/WifiNative;->sRttResponderCmdId:I

    .line 2464
    sput-object v6, Lcom/android/server/wifi/WifiNative;->sWifiLoggerEventHandler:Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;

    .line 2480
    sput v4, Lcom/android/server/wifi/WifiNative;->sLogCmdId:I

    .line 2905
    sput v3, Lcom/android/server/wifi/WifiNative;->sPnoCmdId:I

    .line 3064
    sput v3, Lcom/android/server/wifi/WifiNative;->sRssiMonitorCmdId:I

    .line 95
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "interfaceName"    # Ljava/lang/String;
    .param p2, "requiresPrefix"    # Z

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiNative;->mContext:Landroid/content/Context;

    .line 152
    iput-object p1, p0, Lcom/android/server/wifi/WifiNative;->mInterfaceName:Ljava/lang/String;

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "WifiNative-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    .line 155
    if-eqz p2, :cond_0

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "IFNAME="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiNative;->mInterfacePrefix:Ljava/lang/String;

    .line 151
    :goto_0
    return-void

    .line 158
    :cond_0
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiNative;->mInterfacePrefix:Ljava/lang/String;

    goto :goto_0
.end method

.method private static native cancelRangeRequestNative(II[Landroid/net/wifi/RttManager$RttParams;)Z
.end method

.method private static native closeSupplicantConnectionNative()V
.end method

.method private static native configureNeighborDiscoveryOffload(IZ)I
.end method

.method private static native connectToSupplicantNative()Z
.end method

.method private static createCSVStringFromIntegerSet(Ljava/util/Set;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 348
    .local p0, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 349
    .local v1, "list":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 350
    .local v0, "first":Z
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "value$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 351
    .local v2, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 352
    const-string/jumbo v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 355
    const/4 v0, 0x0

    goto :goto_0

    .line 357
    .end local v2    # "value":Ljava/lang/Integer;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static createWifiSsid([B)Landroid/net/wifi/WifiSsid;
    .locals 4
    .param p0, "rawSsid"    # [B

    .prologue
    const/4 v3, 0x0

    .line 1812
    invoke-static {p0}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    .line 1814
    .local v0, "ssidHexString":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1815
    return-object v3

    .line 1818
    :cond_0
    invoke-static {v0}, Landroid/net/wifi/WifiSsid;->createFromHex(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    move-result-object v1

    .line 1820
    .local v1, "wifiSsid":Landroid/net/wifi/WifiSsid;
    return-object v1
.end method

.method private static native disableRttResponderNative(II)Z
.end method

.method private doBooleanCommand(Ljava/lang/String;)Z
    .locals 6
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 258
    sget-boolean v2, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "doBoolean: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_0
    sget-object v3, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v3

    .line 260
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/wifi/WifiNative;->mInterfacePrefix:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 261
    .local v1, "toLog":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/wifi/WifiNative;->mInterfacePrefix:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiNative;->doBooleanCommandNative(Ljava/lang/String;)Z

    move-result v0

    .line 262
    .local v0, "result":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " -> "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiNative;->localLog(Ljava/lang/String;)V

    .line 263
    sget-boolean v2, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": returned "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v3

    .line 264
    return v0

    .line 259
    .end local v0    # "result":Z
    .end local v1    # "toLog":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private native doBooleanCommandNative(Ljava/lang/String;)Z
.end method

.method private doBooleanCommandWithoutLogging(Ljava/lang/String;)Z
    .locals 5
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 269
    sget-boolean v1, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "doBooleanCommandWithoutLogging: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 271
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/wifi/WifiNative;->mInterfacePrefix:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->doBooleanCommandNative(Ljava/lang/String;)Z

    move-result v0

    .line 272
    .local v0, "result":Z
    sget-boolean v1, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": returned "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v2

    .line 273
    return v0

    .line 270
    .end local v0    # "result":Z
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private doIntCommand(Ljava/lang/String;)I
    .locals 6
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 278
    sget-boolean v2, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "doInt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_0
    sget-object v3, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v3

    .line 280
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/wifi/WifiNative;->mInterfacePrefix:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 281
    .local v1, "toLog":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/wifi/WifiNative;->mInterfacePrefix:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiNative;->doIntCommandNative(Ljava/lang/String;)I

    move-result v0

    .line 282
    .local v0, "result":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " -> "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiNative;->localLog(Ljava/lang/String;)V

    .line 283
    sget-boolean v2, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "   returned "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v3

    .line 284
    return v0

    .line 279
    .end local v0    # "result":I
    .end local v1    # "toLog":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private native doIntCommandNative(Ljava/lang/String;)I
.end method

.method private doStringCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 289
    sget-boolean v2, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v2, :cond_0

    .line 291
    const-string/jumbo v2, "GET_NETWORK"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 292
    iget-object v2, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "doString: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_0
    sget-object v3, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v3

    .line 296
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/wifi/WifiNative;->mInterfacePrefix:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 297
    .local v1, "toLog":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/wifi/WifiNative;->mInterfacePrefix:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiNative;->doStringCommandNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 299
    sget-boolean v2, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    const-string/jumbo v4, "doStringCommandNative no result"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v3

    .line 306
    return-object v0

    .line 301
    :cond_2
    :try_start_1
    const-string/jumbo v2, "STATUS-"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 302
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " -> "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiNative;->localLog(Ljava/lang/String;)V

    .line 304
    :cond_3
    sget-boolean v2, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "   returned "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    const-string/jumbo v6, " "

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 295
    .end local v0    # "result":Ljava/lang/String;
    .end local v1    # "toLog":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private native doStringCommandNative(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private doStringCommandWithoutLogging(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 311
    sget-boolean v0, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v0, :cond_0

    .line 313
    const-string/jumbo v0, "GET_NETWORK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "doString: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_0
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 318
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/wifi/WifiNative;->mInterfacePrefix:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommandNative(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 317
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native enableDisableTdlsNative(IZLjava/lang/String;)Z
.end method

.method private static native enableRttResponderNative(IIILcom/android/server/wifi/WifiNative$WifiChannelInfo;)Landroid/net/wifi/RttManager$ResponderConfig;
.end method

.method private static native getApfCapabilitiesNative(I)Landroid/net/apf/ApfCapabilities;
.end method

.method private static native getChannelsForBandNative(II)[I
.end method

.method private static native getDriverStateDumpNative(I)[B
.end method

.method private static native getDriverVersionNative(I)Ljava/lang/String;
.end method

.method private static native getFirmwareVersionNative(I)Ljava/lang/String;
.end method

.method private static native getFwMemoryDumpNative(I)Z
.end method

.method private static native getInterfaceNameNative(I)Ljava/lang/String;
.end method

.method private static native getInterfacesNative()I
.end method

.method private static getNewCmdIdLocked()I
    .locals 2

    .prologue
    .line 1557
    sget v0, Lcom/android/server/wifi/WifiNative;->sCmdId:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/server/wifi/WifiNative;->sCmdId:I

    return v0
.end method

.method public static getP2pNativeInterface()Lcom/android/server/wifi/WifiNative;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/android/server/wifi/WifiNative;->p2pNativeInterface:Lcom/android/server/wifi/WifiNative;

    return-object v0
.end method

.method private getRawScanResults(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "range"    # Ljava/lang/String;

    .prologue
    .line 611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "BSS RANGE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " MASK=0x29d87"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommandWithoutLogging(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native getRingBufferDataNative(ILjava/lang/String;)Z
.end method

.method private static native getRingBufferStatusNative(I)[Lcom/android/server/wifi/WifiNative$RingBufferStatus;
.end method

.method private static native getRttCapabilitiesNative(I)Landroid/net/wifi/RttManager$RttCapabilities;
.end method

.method private static native getRxPktFatesNative(I[Lcom/android/server/wifi/WifiNative$RxFateReport;)I
.end method

.method private static native getScanCapabilitiesNative(ILcom/android/server/wifi/WifiNative$ScanCapabilities;)Z
.end method

.method private static native getScanResultsNative(IZ)[Landroid/net/wifi/WifiScanner$ScanData;
.end method

.method public static native getSupportedFeatureSetNative(I)I
.end method

.method private static native getSupportedLoggerFeatureSetNative(I)I
.end method

.method private static native getTdlsCapabilitiesNative(I)Lcom/android/server/wifi/WifiNative$TdlsCapabilities;
.end method

.method private static native getTdlsStatusNative(ILjava/lang/String;)Lcom/android/server/wifi/WifiNative$TdlsStatus;
.end method

.method private static native getTxPktFatesNative(I[Lcom/android/server/wifi/WifiNative$TxFateReport;)I
.end method

.method private static native getWifiLinkLayerStatsNative(I)Landroid/net/wifi/WifiLinkLayerStats;
.end method

.method public static getWlanNativeInterface()Lcom/android/server/wifi/WifiNative;
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/android/server/wifi/WifiNative;->wlanNativeInterface:Lcom/android/server/wifi/WifiNative;

    return-object v0
.end method

.method private static native getWlanWakeReasonCountNative(I)Landroid/net/wifi/WifiWakeReasonAndCounts;
.end method

.method private static native installPacketFilterNative(I[B)Z
.end method

.method private static native isDriverLoadedNative()Z
.end method

.method private static native isGetChannelsForBandSupportedNative()Z
.end method

.method private static native killSupplicantNative(Z)Z
.end method

.method private static native loadDriverNative()Z
.end method

.method private localLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 176
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sLocalLog:Landroid/util/LocalLog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wifi/WifiNative;->sLocalLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/wifi/WifiNative;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 175
    :cond_0
    return-void
.end method

.method private logDbg(Ljava/lang/String;)V
    .locals 8
    .param p1, "debug"    # Ljava/lang/String;

    .prologue
    .line 481
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    .line 482
    .local v0, "now":J
    const-string/jumbo v3, "[%,d us] "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-wide/16 v6, 0x3e8

    div-long v6, v0, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 483
    .local v2, "ts":Ljava/lang/String;
    const-string/jumbo v3, "WifiNative: "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " stack:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 484
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    .line 483
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 484
    const-string/jumbo v5, " - "

    .line 483
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 485
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    .line 483
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 485
    const-string/jumbo v5, " - "

    .line 483
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 486
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    const/4 v6, 0x4

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    .line 483
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 486
    const-string/jumbo v5, " - "

    .line 483
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 487
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    const/4 v6, 0x5

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    .line 483
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 487
    const-string/jumbo v5, " - "

    .line 483
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 488
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    const/4 v6, 0x6

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    .line 483
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    return-void
.end method

.method private static onFullScanResult(ILandroid/net/wifi/ScanResult;II)V
    .locals 4
    .param p0, "id"    # I
    .param p1, "result"    # Landroid/net/wifi/ScanResult;
    .param p2, "bucketsScanned"    # I
    .param p3, "beaconCap"    # I

    .prologue
    .line 1914
    sget-boolean v1, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WifiNative-HAL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Got a full scan results event, ssid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1916
    :cond_0
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    .line 1917
    .local v0, "handler":Lcom/android/server/wifi/WifiNative$ScanEventHandler;
    if-eqz v0, :cond_1

    .line 1918
    const-string/jumbo v1, " onFullScanResult "

    invoke-static {p1, p3, v1}, Lcom/android/server/wifi/WifiNative;->populateScanResult(Landroid/net/wifi/ScanResult;ILjava/lang/String;)V

    .line 1919
    invoke-interface {v0, p1, p2}, Lcom/android/server/wifi/WifiNative$ScanEventHandler;->onFullScanResult(Landroid/net/wifi/ScanResult;I)V

    .line 1913
    :cond_1
    return-void
.end method

.method private static onHotlistApFound(I[Landroid/net/wifi/ScanResult;)V
    .locals 3
    .param p0, "id"    # I
    .param p1, "results"    # [Landroid/net/wifi/ScanResult;

    .prologue
    .line 2065
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sHotlistEventHandler:Lcom/android/server/wifi/WifiNative$HotlistEventHandler;

    .line 2066
    .local v0, "handler":Lcom/android/server/wifi/WifiNative$HotlistEventHandler;
    if-eqz v0, :cond_0

    .line 2067
    invoke-interface {v0, p1}, Lcom/android/server/wifi/WifiNative$HotlistEventHandler;->onHotlistApFound([Landroid/net/wifi/ScanResult;)V

    .line 2064
    :goto_0
    return-void

    .line 2070
    :cond_0
    const-string/jumbo v1, "WifiNative-HAL"

    const-string/jumbo v2, "Ignoring hotlist AP found event"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static onHotlistApLost(I[Landroid/net/wifi/ScanResult;)V
    .locals 3
    .param p0, "id"    # I
    .param p1, "results"    # [Landroid/net/wifi/ScanResult;

    .prologue
    .line 2076
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sHotlistEventHandler:Lcom/android/server/wifi/WifiNative$HotlistEventHandler;

    .line 2077
    .local v0, "handler":Lcom/android/server/wifi/WifiNative$HotlistEventHandler;
    if-eqz v0, :cond_0

    .line 2078
    invoke-interface {v0, p1}, Lcom/android/server/wifi/WifiNative$HotlistEventHandler;->onHotlistApLost([Landroid/net/wifi/ScanResult;)V

    .line 2075
    :goto_0
    return-void

    .line 2081
    :cond_0
    const-string/jumbo v1, "WifiNative-HAL"

    const-string/jumbo v2, "Ignoring hotlist AP lost event"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static onPnoNetworkFound(I[Landroid/net/wifi/ScanResult;[I)V
    .locals 5
    .param p0, "id"    # I
    .param p1, "results"    # [Landroid/net/wifi/ScanResult;
    .param p2, "beaconCaps"    # [I

    .prologue
    .line 2966
    if-nez p1, :cond_0

    .line 2967
    const-string/jumbo v2, "WifiNative-HAL"

    const-string/jumbo v3, "onPnoNetworkFound null results"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2968
    return-void

    .line 2971
    :cond_0
    const-string/jumbo v2, "WifiNative-HAL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "WifiNative.onPnoNetworkFound result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2973
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sPnoEventHandler:Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    .line 2974
    .local v0, "handler":Lcom/android/server/wifi/WifiNative$PnoEventHandler;
    sget v2, Lcom/android/server/wifi/WifiNative;->sPnoCmdId:I

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 2975
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 2976
    const-string/jumbo v2, "WifiNative-HAL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPnoNetworkFound SSID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v1

    iget-object v4, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2977
    const-string/jumbo v4, " "

    .line 2976
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2977
    aget-object v4, p1, v1

    iget v4, v4, Landroid/net/wifi/ScanResult;->level:I

    .line 2976
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2977
    const-string/jumbo v4, " "

    .line 2976
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2977
    aget-object v4, p1, v1

    iget v4, v4, Landroid/net/wifi/ScanResult;->frequency:I

    .line 2976
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2979
    aget-object v2, p1, v1

    aget v3, p2, v1

    const-string/jumbo v4, "onPnoNetworkFound "

    invoke-static {v2, v3, v4}, Lcom/android/server/wifi/WifiNative;->populateScanResult(Landroid/net/wifi/ScanResult;ILjava/lang/String;)V

    .line 2980
    aget-object v2, p1, v1

    aget-object v3, p1, v1

    iget-object v3, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/wifi/WifiSsid;->createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    move-result-object v3

    iput-object v3, v2, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    .line 2975
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2983
    :cond_1
    invoke-interface {v0, p1}, Lcom/android/server/wifi/WifiNative$PnoEventHandler;->onPnoNetworkFound([Landroid/net/wifi/ScanResult;)V

    .line 2965
    .end local v1    # "i":I
    :goto_1
    return-void

    .line 2986
    :cond_2
    const-string/jumbo v2, "WifiNative-HAL"

    const-string/jumbo v3, "Ignoring Pno Network found event"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static onRingBufferData(Lcom/android/server/wifi/WifiNative$RingBufferStatus;[B)V
    .locals 1
    .param p0, "status"    # Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    .param p1, "buffer"    # [B

    .prologue
    .line 2468
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sWifiLoggerEventHandler:Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;

    .line 2469
    .local v0, "handler":Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;
    if-eqz v0, :cond_0

    .line 2470
    invoke-interface {v0, p0, p1}, Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;->onRingBufferData(Lcom/android/server/wifi/WifiNative$RingBufferStatus;[B)V

    .line 2467
    :cond_0
    return-void
.end method

.method private static onRssiThresholdBreached(IB)V
    .locals 1
    .param p0, "id"    # I
    .param p1, "curRssi"    # B

    .prologue
    .line 3055
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sWifiRssiEventHandler:Lcom/android/server/wifi/WifiNative$WifiRssiEventHandler;

    .line 3056
    .local v0, "handler":Lcom/android/server/wifi/WifiNative$WifiRssiEventHandler;
    if-eqz v0, :cond_0

    .line 3057
    invoke-interface {v0, p1}, Lcom/android/server/wifi/WifiNative$WifiRssiEventHandler;->onRssiThresholdBreached(B)V

    .line 3054
    :cond_0
    return-void
.end method

.method private static onRttResults(I[Landroid/net/wifi/RttManager$RttResult;)V
    .locals 4
    .param p0, "id"    # I
    .param p1, "results"    # [Landroid/net/wifi/RttManager$RttResult;

    .prologue
    .line 2187
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sRttEventHandler:Lcom/android/server/wifi/WifiNative$RttEventHandler;

    .line 2188
    .local v0, "handler":Lcom/android/server/wifi/WifiNative$RttEventHandler;
    if-eqz v0, :cond_0

    sget v1, Lcom/android/server/wifi/WifiNative;->sRttCmdId:I

    if-ne p0, v1, :cond_0

    .line 2189
    const-string/jumbo v1, "WifiNative-HAL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " rtt results"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2190
    invoke-interface {v0, p1}, Lcom/android/server/wifi/WifiNative$RttEventHandler;->onRttResults([Landroid/net/wifi/RttManager$RttResult;)V

    .line 2191
    const/4 v1, 0x0

    sput v1, Lcom/android/server/wifi/WifiNative;->sRttCmdId:I

    .line 2186
    :goto_0
    return-void

    .line 2193
    :cond_0
    const-string/jumbo v1, "WifiNative-HAL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "RTT Received event for unknown cmd = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2194
    const-string/jumbo v3, ", current id = "

    .line 2193
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2194
    sget v3, Lcom/android/server/wifi/WifiNative;->sRttCmdId:I

    .line 2193
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static onScanStatus(II)V
    .locals 1
    .param p0, "id"    # I
    .param p1, "event"    # I

    .prologue
    .line 1805
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    .line 1806
    .local v0, "handler":Lcom/android/server/wifi/WifiNative$ScanEventHandler;
    if-eqz v0, :cond_0

    .line 1807
    invoke-interface {v0, p1}, Lcom/android/server/wifi/WifiNative$ScanEventHandler;->onScanStatus(I)V

    .line 1804
    :cond_0
    return-void
.end method

.method private static onSignificantWifiChange(I[Landroid/net/wifi/ScanResult;)V
    .locals 3
    .param p0, "id"    # I
    .param p1, "results"    # [Landroid/net/wifi/ScanResult;

    .prologue
    .line 2135
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sSignificantWifiChangeHandler:Lcom/android/server/wifi/WifiNative$SignificantWifiChangeEventHandler;

    .line 2136
    .local v0, "handler":Lcom/android/server/wifi/WifiNative$SignificantWifiChangeEventHandler;
    if-eqz v0, :cond_0

    .line 2137
    invoke-interface {v0, p1}, Lcom/android/server/wifi/WifiNative$SignificantWifiChangeEventHandler;->onChangesFound([Landroid/net/wifi/ScanResult;)V

    .line 2134
    :goto_0
    return-void

    .line 2140
    :cond_0
    const-string/jumbo v1, "WifiNative-HAL"

    const-string/jumbo v2, "Ignoring significant wifi change"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static onTdlsStatus(Ljava/lang/String;II)Z
    .locals 2
    .param p0, "macAddr"    # Ljava/lang/String;
    .param p1, "status"    # I
    .param p2, "reason"    # I

    .prologue
    .line 2446
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sTdlsEventHandler:Lcom/android/server/wifi/WifiNative$TdlsEventHandler;

    .line 2447
    .local v0, "handler":Lcom/android/server/wifi/WifiNative$TdlsEventHandler;
    if-nez v0, :cond_0

    .line 2448
    const/4 v1, 0x0

    return v1

    .line 2450
    :cond_0
    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/wifi/WifiNative$TdlsEventHandler;->onTdlsStatus(Ljava/lang/String;II)V

    .line 2451
    const/4 v1, 0x1

    return v1
.end method

.method private static onWifiAlert([BI)V
    .locals 1
    .param p0, "buffer"    # [B
    .param p1, "errorCode"    # I

    .prologue
    .line 2475
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sWifiLoggerEventHandler:Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;

    .line 2476
    .local v0, "handler":Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;
    if-eqz v0, :cond_0

    .line 2477
    invoke-interface {v0, p1, p0}, Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;->onWifiAlert(I[B)V

    .line 2474
    :cond_0
    return-void
.end method

.method private static onWifiFwMemoryAvailable([B)V
    .locals 3
    .param p0, "buffer"    # [B

    .prologue
    .line 2612
    sput-object p0, Lcom/android/server/wifi/WifiNative;->mFwMemoryDump:[B

    .line 2613
    sget-boolean v0, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v0, :cond_0

    .line 2614
    const-string/jumbo v1, "WifiNative-HAL"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onWifiFwMemoryAvailable is called and buffer length is: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2615
    if-nez p0, :cond_1

    const/4 v0, 0x0

    .line 2614
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2611
    :cond_0
    return-void

    .line 2615
    :cond_1
    array-length v0, p0

    goto :goto_0
.end method

.method private p2pGetParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 1401
    if-nez p1, :cond_0

    return-object v7

    .line 1403
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiNative;->p2pPeer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1404
    .local v1, "peerInfo":Ljava/lang/String;
    if-nez v1, :cond_1

    return-object v7

    .line 1405
    :cond_1
    const-string/jumbo v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1407
    .local v3, "tokens":[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1408
    const/4 v4, 0x0

    array-length v5, v3

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v2, v3, v4

    .line 1409
    .local v2, "token":Ljava/lang/String;
    invoke-virtual {v2, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1410
    const-string/jumbo v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1411
    .local v0, "nameValue":[Ljava/lang/String;
    array-length v4, v0

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    .line 1415
    .end local v0    # "nameValue":[Ljava/lang/String;
    .end local v2    # "token":Ljava/lang/String;
    :cond_2
    return-object v7

    .line 1412
    .restart local v0    # "nameValue":[Ljava/lang/String;
    .restart local v2    # "token":Ljava/lang/String;
    :cond_3
    const/4 v4, 0x1

    aget-object v4, v0, v4

    return-object v4

    .line 1408
    .end local v0    # "nameValue":[Ljava/lang/String;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private static populateScanResult(Landroid/net/wifi/ScanResult;ILjava/lang/String;)V
    .locals 11
    .param p0, "result"    # Landroid/net/wifi/ScanResult;
    .param p1, "beaconCap"    # I
    .param p2, "dbg"    # Ljava/lang/String;

    .prologue
    .line 1853
    if-nez p2, :cond_0

    const-string/jumbo p2, ""

    .line 1855
    :cond_0
    new-instance v3, Lcom/android/server/wifi/util/InformationElementUtil$HtOperation;

    invoke-direct {v3}, Lcom/android/server/wifi/util/InformationElementUtil$HtOperation;-><init>()V

    .line 1857
    .local v3, "htOperation":Lcom/android/server/wifi/util/InformationElementUtil$HtOperation;
    new-instance v6, Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;

    invoke-direct {v6}, Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;-><init>()V

    .line 1859
    .local v6, "vhtOperation":Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;
    new-instance v2, Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;

    invoke-direct {v2}, Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;-><init>()V

    .line 1862
    .local v2, "extendedCaps":Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;
    iget-object v7, p0, Landroid/net/wifi/ScanResult;->bytes:[B

    invoke-static {v7}, Lcom/android/server/wifi/util/InformationElementUtil;->parseInformationElements([B)[Landroid/net/wifi/ScanResult$InformationElement;

    move-result-object v1

    .line 1863
    .local v1, "elements":[Landroid/net/wifi/ScanResult$InformationElement;
    const/4 v7, 0x0

    array-length v8, v1

    :goto_0
    if-ge v7, v8, :cond_4

    aget-object v5, v1, v7

    .line 1864
    .local v5, "ie":Landroid/net/wifi/ScanResult$InformationElement;
    iget v9, v5, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    const/16 v10, 0x3d

    if-ne v9, v10, :cond_2

    .line 1865
    invoke-virtual {v3, v5}, Lcom/android/server/wifi/util/InformationElementUtil$HtOperation;->from(Landroid/net/wifi/ScanResult$InformationElement;)V

    .line 1863
    :cond_1
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1866
    :cond_2
    iget v9, v5, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    const/16 v10, 0xc0

    if-ne v9, v10, :cond_3

    .line 1867
    invoke-virtual {v6, v5}, Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;->from(Landroid/net/wifi/ScanResult$InformationElement;)V

    goto :goto_1

    .line 1868
    :cond_3
    iget v9, v5, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    const/16 v10, 0x7f

    if-ne v9, v10, :cond_1

    .line 1869
    invoke-virtual {v2, v5}, Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;->from(Landroid/net/wifi/ScanResult$InformationElement;)V

    goto :goto_1

    .line 1873
    .end local v5    # "ie":Landroid/net/wifi/ScanResult$InformationElement;
    :cond_4
    iget-boolean v7, v2, Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;->is80211McRTTResponder:Z

    if-eqz v7, :cond_6

    .line 1874
    const-wide/16 v8, 0x2

    invoke-virtual {p0, v8, v9}, Landroid/net/wifi/ScanResult;->setFlag(J)V

    .line 1880
    :goto_2
    invoke-virtual {v6}, Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;->isValid()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1881
    invoke-virtual {v6}, Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;->getChannelWidth()I

    move-result v7

    iput v7, p0, Landroid/net/wifi/ScanResult;->channelWidth:I

    .line 1882
    invoke-virtual {v6}, Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;->getCenterFreq0()I

    move-result v7

    iput v7, p0, Landroid/net/wifi/ScanResult;->centerFreq0:I

    .line 1883
    invoke-virtual {v6}, Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;->getCenterFreq1()I

    move-result v7

    iput v7, p0, Landroid/net/wifi/ScanResult;->centerFreq1:I

    .line 1891
    :goto_3
    new-instance v0, Ljava/util/BitSet;

    const/16 v7, 0x10

    invoke-direct {v0, v7}, Ljava/util/BitSet;-><init>(I)V

    .line 1892
    .local v0, "beaconCapBits":Ljava/util/BitSet;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    const/16 v7, 0x10

    if-ge v4, v7, :cond_8

    .line 1893
    const/4 v7, 0x1

    shl-int/2addr v7, v4

    and-int/2addr v7, p1

    if-eqz v7, :cond_5

    .line 1894
    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 1892
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1876
    .end local v0    # "beaconCapBits":Ljava/util/BitSet;
    .end local v4    # "i":I
    :cond_6
    const-wide/16 v8, 0x2

    invoke-virtual {p0, v8, v9}, Landroid/net/wifi/ScanResult;->clearFlag(J)V

    goto :goto_2

    .line 1885
    :cond_7
    invoke-virtual {v3}, Lcom/android/server/wifi/util/InformationElementUtil$HtOperation;->getChannelWidth()I

    move-result v7

    iput v7, p0, Landroid/net/wifi/ScanResult;->channelWidth:I

    .line 1886
    iget v7, p0, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v3, v7}, Lcom/android/server/wifi/util/InformationElementUtil$HtOperation;->getCenterFreq0(I)I

    move-result v7

    iput v7, p0, Landroid/net/wifi/ScanResult;->centerFreq0:I

    .line 1887
    const/4 v7, 0x0

    iput v7, p0, Landroid/net/wifi/ScanResult;->centerFreq1:I

    goto :goto_3

    .line 1897
    .restart local v0    # "beaconCapBits":Ljava/util/BitSet;
    .restart local v4    # "i":I
    :cond_8
    invoke-static {v1, v0}, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->buildCapabilities([Landroid/net/wifi/ScanResult$InformationElement;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 1900
    sget-boolean v7, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v7, :cond_9

    .line 1901
    const-string/jumbo v8, "WifiNative-HAL"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, "SSID: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, " ChannelWidth is: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Landroid/net/wifi/ScanResult;->channelWidth:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1902
    const-string/jumbo v9, " PrimaryFreq: "

    .line 1901
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1902
    iget v9, p0, Landroid/net/wifi/ScanResult;->frequency:I

    .line 1901
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1902
    const-string/jumbo v9, " mCenterfreq0: "

    .line 1901
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1902
    iget v9, p0, Landroid/net/wifi/ScanResult;->centerFreq0:I

    .line 1901
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1903
    const-string/jumbo v9, " mCenterfreq1: "

    .line 1901
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1903
    iget v9, p0, Landroid/net/wifi/ScanResult;->centerFreq1:I

    .line 1901
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1903
    iget-boolean v7, v2, Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;->is80211McRTTResponder:Z

    if-eqz v7, :cond_a

    .line 1904
    const-string/jumbo v7, "Support RTT reponder: "

    .line 1901
    :goto_5
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1905
    const-string/jumbo v9, " Capabilities: "

    .line 1901
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1905
    iget-object v9, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 1901
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    :cond_9
    iput-object v1, p0, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    .line 1852
    return-void

    .line 1904
    :cond_a
    const-string/jumbo v7, "Do not support RTT responder"

    goto :goto_5
.end method

.method private static native readKernelLogNative()[B
.end method

.method private static native registerNatives()I
.end method

.method private static native requestRangeNative(II[Landroid/net/wifi/RttManager$RttParams;)Z
.end method

.method private static native resetHotlistNative(II)Z
.end method

.method private static native resetLogHandlerNative(II)Z
.end method

.method private static native resetPnoListNative(II)Z
.end method

.method private scanWithParams(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "freqList"    # Ljava/lang/String;
    .param p2, "hiddenNetworkIdList"    # Ljava/lang/String;

    .prologue
    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 379
    .local v0, "scanCommand":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "SCAN TYPE=ONLY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    if-eqz p1, :cond_0

    .line 381
    const-string/jumbo v1, " freq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    :cond_0
    if-eqz p2, :cond_1

    .line 384
    const-string/jumbo v1, " scan_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private static native setBssidBlacklistNative(II[Ljava/lang/String;)Z
.end method

.method private static native setCountryCodeHalNative(ILjava/lang/String;)Z
.end method

.method private static native setDfsFlagNative(IZ)Z
.end method

.method private static native setHotlistNative(IILandroid/net/wifi/WifiScanner$HotlistSettings;)Z
.end method

.method private static native setInterfaceUpNative(Z)Z
.end method

.method private static native setLoggingEventHandlerNative(II)Z
.end method

.method private static native setPnoListNative(IILcom/android/server/wifi/WifiNative$PnoSettings;)Z
.end method

.method private static native setScanningMacOuiNative(I[B)Z
.end method

.method public static setSsid([BLandroid/net/wifi/ScanResult;)Z
    .locals 2
    .param p0, "rawSsid"    # [B
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    const/4 v1, 0x0

    .line 1843
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 1844
    :cond_0
    return v1

    .line 1843
    :cond_1
    if-eqz p1, :cond_0

    .line 1847
    invoke-static {p0}, Lcom/android/server/wifi/WifiNative;->ssidConvert([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 1848
    invoke-static {p0}, Lcom/android/server/wifi/WifiNative;->createWifiSsid([B)Landroid/net/wifi/WifiSsid;

    move-result-object v0

    iput-object v0, p1, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    .line 1849
    const/4 v0, 0x1

    return v0
.end method

.method private static native setWifiLinkLayerStatsNative(II)V
.end method

.method public static ssidConvert([B)Ljava/lang/String;
    .locals 5
    .param p0, "rawSsid"    # [B

    .prologue
    .line 1826
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v2

    .line 1828
    .local v2, "decoder":Ljava/nio/charset/CharsetDecoder;
    :try_start_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 1829
    .local v1, "decoded":Ljava/nio/CharBuffer;
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1834
    .end local v1    # "decoded":Ljava/nio/CharBuffer;
    :goto_0
    if-nez v3, :cond_0

    .line 1835
    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v3, p0, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 1838
    :cond_0
    return-object v3

    .line 1830
    :catch_0
    move-exception v0

    .line 1831
    .local v0, "cce":Ljava/nio/charset/CharacterCodingException;
    const/4 v3, 0x0

    .local v3, "ssid":Ljava/lang/String;
    goto :goto_0
.end method

.method private static native startHalNative()Z
.end method

.method private static native startLoggingRingBufferNative(IIIIILjava/lang/String;)Z
.end method

.method private static native startPktFateMonitoringNative(I)I
.end method

.method private static native startRssiMonitoringNative(IIBB)I
.end method

.method private static native startScanNative(IILcom/android/server/wifi/WifiNative$ScanSettings;)Z
.end method

.method private static native startSendingOffloadedPacketNative(II[B[B[BI)I
.end method

.method private static native startSupplicantNative(Z)Z
.end method

.method private static native stopHalNative()V
.end method

.method private static native stopRssiMonitoringNative(II)I
.end method

.method private static native stopScanNative(II)Z
.end method

.method private static native stopSendingOffloadedPacketNative(II)I
.end method

.method private static native trackSignificantWifiChangeNative(IILandroid/net/wifi/WifiScanner$WifiChangeSettings;)Z
.end method

.method private static native unloadDriverNative()Z
.end method

.method private static native untrackSignificantWifiChangeNative(II)Z
.end method

.method private static native waitForEventNative()Ljava/lang/String;
.end method

.method private static native waitForHalEventNative()V
.end method


# virtual methods
.method public addNetwork()I
    .locals 1

    .prologue
    .line 408
    const-string/jumbo v0, "ADD_NETWORK"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doIntCommand(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public addToBlacklist(Ljava/lang/String;)Z
    .locals 2
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    .line 917
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 918
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "BLACKLIST "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public bssFlush()V
    .locals 1

    .prologue
    .line 999
    const-string/jumbo v0, "BSS_FLUSH 0"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    .line 998
    return-void
.end method

.method public cancelRtt([Landroid/net/wifi/RttManager$RttParams;)Z
    .locals 4
    .param p1, "params"    # [Landroid/net/wifi/RttManager$RttParams;

    .prologue
    const/4 v3, 0x0

    .line 2222
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2223
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2224
    sget v0, Lcom/android/server/wifi/WifiNative;->sRttCmdId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit v1

    .line 2225
    return v3

    .line 2228
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    sput v0, Lcom/android/server/wifi/WifiNative;->sRttCmdId:I

    .line 2230
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    sget v2, Lcom/android/server/wifi/WifiNative;->sRttCmdId:I

    invoke-static {v0, v2, p1}, Lcom/android/server/wifi/WifiNative;->cancelRangeRequestNative(II[Landroid/net/wifi/RttManager$RttParams;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2231
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wifi/WifiNative;->sRttEventHandler:Lcom/android/server/wifi/WifiNative$RttEventHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2232
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    .line 2234
    :cond_1
    :try_start_2
    const-string/jumbo v0, "WifiNative-HAL"

    const-string/jumbo v2, "RTT cancel Request failed"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    .line 2235
    return v3

    :cond_2
    monitor-exit v1

    .line 2238
    return v3

    .line 2222
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public cancelWps()Z
    .locals 1

    .prologue
    .line 1083
    const-string/jumbo v0, "WPS_CANCEL"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public clearBlacklist()Z
    .locals 1

    .prologue
    .line 922
    const-string/jumbo v0, "BLACKLIST clear"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public closeSupplicantConnection()V
    .locals 3

    .prologue
    .line 231
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 232
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/wifi/WifiNative;->mInterfacePrefix:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "closeSupplicantConnection"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->localLog(Ljava/lang/String;)V

    .line 233
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->closeSupplicantConnectionNative()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 230
    return-void

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public configureNeighborDiscoveryOffload(Z)Z
    .locals 7
    .param p1, "enabled"    # Z

    .prologue
    const/4 v2, 0x0

    .line 3128
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "configureNeighborDiscoveryOffload("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3129
    .local v0, "logMsg":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3130
    sget-object v3, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3131
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3132
    sget v4, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    invoke-static {v4, p1}, Lcom/android/server/wifi/WifiNative;->configureNeighborDiscoveryOffload(IZ)I

    move-result v1

    .line 3133
    .local v1, "ret":I
    if-eqz v1, :cond_0

    .line 3134
    iget-object v4, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " returned: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3136
    :cond_0
    if-nez v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    monitor-exit v3

    return v2

    .end local v1    # "ret":I
    :cond_2
    monitor-exit v3

    .line 3139
    return v2

    .line 3130
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public connectToSupplicant()Z
    .locals 3

    .prologue
    .line 223
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 224
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/wifi/WifiNative;->mInterfacePrefix:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "connectToSupplicant"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->localLog(Ljava/lang/String;)V

    .line 225
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->connectToSupplicantNative()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public disableNetwork(I)Z
    .locals 2
    .param p1, "netId"    # I

    .prologue
    .line 518
    sget-boolean v0, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "disableNetwork nid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->logDbg(Ljava/lang/String;)V

    .line 519
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DISABLE_NETWORK "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public disableRttResponder()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2274
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2275
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    monitor-exit v1

    return v2

    .line 2276
    :cond_0
    :try_start_1
    sget v0, Lcom/android/server/wifi/WifiNative;->sRttResponderCmdId:I

    if-nez v0, :cond_1

    .line 2277
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    const-string/jumbo v2, "responder role not enabled yet"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2278
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    .line 2280
    :cond_1
    const/4 v0, 0x0

    :try_start_2
    sput v0, Lcom/android/server/wifi/WifiNative;->sRttResponderCmdId:I

    .line 2281
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    sget v2, Lcom/android/server/wifi/WifiNative;->sRttResponderCmdId:I

    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiNative;->disableRttResponderNative(II)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 2274
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public disableScanOffload()V
    .locals 1

    .prologue
    .line 906
    const-string/jumbo v0, "SET disable_scan_offload 1"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    .line 905
    return-void
.end method

.method public disconnect()Z
    .locals 1

    .prologue
    .line 543
    sget-boolean v0, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "DISCONNECT "

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->logDbg(Ljava/lang/String;)V

    .line 544
    :cond_0
    const-string/jumbo v0, "DISCONNECT"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public doCustomSupplicantCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 323
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public enableAutoConnect(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 950
    if-eqz p1, :cond_0

    .line 951
    const-string/jumbo v0, "STA_AUTOCONNECT 1"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    .line 949
    :goto_0
    return-void

    .line 953
    :cond_0
    const-string/jumbo v0, "STA_AUTOCONNECT 0"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public enableDisableTdls(ZLjava/lang/String;Lcom/android/server/wifi/WifiNative$TdlsEventHandler;)Z
    .locals 2
    .param p1, "enable"    # Z
    .param p2, "macAdd"    # Ljava/lang/String;
    .param p3, "tdlsCallBack"    # Lcom/android/server/wifi/WifiNative$TdlsEventHandler;

    .prologue
    .line 2397
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2398
    :try_start_0
    sput-object p3, Lcom/android/server/wifi/WifiNative;->sTdlsEventHandler:Lcom/android/server/wifi/WifiNative$TdlsEventHandler;

    .line 2399
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    invoke-static {v0, p1, p2}, Lcom/android/server/wifi/WifiNative;->enableDisableTdlsNative(IZLjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 2397
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public enableNetwork(I)Z
    .locals 2
    .param p1, "netId"    # I

    .prologue
    .line 498
    sget-boolean v0, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "enableNetwork nid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->logDbg(Ljava/lang/String;)V

    .line 499
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ENABLE_NETWORK "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public enableNetworkWithoutConnect(I)Z
    .locals 2
    .param p1, "netId"    # I

    .prologue
    .line 508
    sget-boolean v0, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "enableNetworkWithoutConnect nid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->logDbg(Ljava/lang/String;)V

    .line 509
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ENABLE_NETWORK "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "no-connect"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public enableRttResponder(I)Landroid/net/wifi/RttManager$ResponderConfig;
    .locals 7
    .param p1, "timeoutSeconds"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 2253
    sget-object v3, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2254
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    monitor-exit v3

    return-object v5

    .line 2255
    :cond_0
    :try_start_1
    sget v4, Lcom/android/server/wifi/WifiNative;->sRttResponderCmdId:I

    if-eqz v4, :cond_2

    .line 2256
    sget-boolean v2, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    const-string/jumbo v4, "responder mode already enabled - this shouldn\'t happen"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v3

    .line 2257
    return-object v5

    .line 2259
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getNewCmdIdLocked()I

    move-result v1

    .line 2261
    .local v1, "id":I
    sget v4, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    const/4 v5, 0x0

    .line 2260
    invoke-static {v4, v1, p1, v5}, Lcom/android/server/wifi/WifiNative;->enableRttResponderNative(IIILcom/android/server/wifi/WifiNative$WifiChannelInfo;)Landroid/net/wifi/RttManager$ResponderConfig;

    move-result-object v0

    .line 2262
    .local v0, "config":Landroid/net/wifi/RttManager$ResponderConfig;
    if-eqz v0, :cond_3

    sput v1, Lcom/android/server/wifi/WifiNative;->sRttResponderCmdId:I

    .line 2263
    :cond_3
    sget-boolean v4, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v4, :cond_5

    const-string/jumbo v4, "WifiNative-HAL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "enabling rtt "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    :cond_4
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    monitor-exit v3

    .line 2264
    return-object v0

    .line 2253
    .end local v0    # "config":Landroid/net/wifi/RttManager$ResponderConfig;
    .end local v1    # "id":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public enableSaveConfig()V
    .locals 1

    .prologue
    .line 898
    const-string/jumbo v0, "SET update_config 1"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    .line 897
    return-void
.end method

.method public enableTdlsExtControl()V
    .locals 1

    .prologue
    .line 902
    const-string/jumbo v0, "SET tdls_external_control 1"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    .line 901
    return-void
.end method

.method enableVerboseLogging(I)V
    .locals 1
    .param p1, "verbose"    # I

    .prologue
    const/4 v0, 0x0

    .line 168
    if-lez p1, :cond_0

    .line 169
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wifi/WifiNative;->DBG:Z

    .line 167
    :goto_0
    return-void

    .line 171
    :cond_0
    sput-boolean v0, Lcom/android/server/wifi/WifiNative;->DBG:Z

    goto :goto_0
.end method

.method public fetchAnqp(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "bssid"    # Ljava/lang/String;
    .param p2, "subtypes"    # Ljava/lang/String;

    .prologue
    .line 1507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ANQP_GET "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getApfCapabilities()Landroid/net/apf/ApfCapabilities;
    .locals 2

    .prologue
    .line 2356
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2357
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2358
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    invoke-static {v0}, Lcom/android/server/wifi/WifiNative;->getApfCapabilitiesNative(I)Landroid/net/apf/ApfCapabilities;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 2360
    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    return-object v0

    .line 2356
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getChannelsForBand(I)[I
    .locals 2
    .param p1, "band"    # I

    .prologue
    .line 2301
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2302
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2303
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiNative;->getChannelsForBandNative(II)[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 2305
    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    return-object v0

    .line 2301
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getDriverStateDump()[B
    .locals 2

    .prologue
    .line 2638
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2639
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2640
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    invoke-static {v0}, Lcom/android/server/wifi/WifiNative;->getDriverStateDumpNative(I)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 2642
    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    return-object v0

    .line 2638
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getDriverVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2547
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2548
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2549
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    invoke-static {v0}, Lcom/android/server/wifi/WifiNative;->getDriverVersionNative(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 2551
    :cond_0
    :try_start_1
    const-string/jumbo v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0

    .line 2547
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getFirmwareVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2559
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2560
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2561
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    invoke-static {v0}, Lcom/android/server/wifi/WifiNative;->getFirmwareVersionNative(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 2563
    :cond_0
    :try_start_1
    const-string/jumbo v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0

    .line 2559
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getFreqCapability()Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    const-string/jumbo v0, "GET_CAPABILITY freq"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFwMemoryDump()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2621
    sget-object v2, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2622
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2623
    sget v1, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    invoke-static {v1}, Lcom/android/server/wifi/WifiNative;->getFwMemoryDumpNative(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2624
    sget-object v0, Lcom/android/server/wifi/WifiNative;->mFwMemoryDump:[B

    .line 2625
    .local v0, "fwMemoryDump":[B
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/wifi/WifiNative;->mFwMemoryDump:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 2626
    return-object v0

    .end local v0    # "fwMemoryDump":[B
    :cond_0
    monitor-exit v2

    .line 2628
    return-object v3

    :cond_1
    monitor-exit v2

    .line 2631
    return-object v3

    .line 2621
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getGroupCapability(Ljava/lang/String;)I
    .locals 9
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 1376
    const/4 v1, 0x0

    .line 1377
    .local v1, "gc":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    return v1

    .line 1378
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiNative;->p2pPeer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1379
    .local v3, "peerInfo":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    return v1

    .line 1381
    :cond_1
    const-string/jumbo v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1382
    .local v5, "tokens":[Ljava/lang/String;
    const/4 v6, 0x0

    array-length v7, v5

    :goto_0
    if-ge v6, v7, :cond_2

    aget-object v4, v5, v6

    .line 1383
    .local v4, "token":Ljava/lang/String;
    const-string/jumbo v8, "group_capab="

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1384
    const-string/jumbo v6, "="

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1385
    .local v2, "nameValue":[Ljava/lang/String;
    array-length v6, v2

    const/4 v7, 0x2

    if-eq v6, v7, :cond_3

    .line 1393
    .end local v2    # "nameValue":[Ljava/lang/String;
    .end local v4    # "token":Ljava/lang/String;
    :cond_2
    return v1

    .line 1387
    .restart local v2    # "nameValue":[Ljava/lang/String;
    .restart local v4    # "token":Ljava/lang/String;
    :cond_3
    const/4 v6, 0x1

    :try_start_0
    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    return v6

    .line 1388
    :catch_0
    move-exception v0

    .line 1389
    .local v0, "e":Ljava/lang/NumberFormatException;
    return v1

    .line 1382
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "nameValue":[Ljava/lang/String;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public getInterfaceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method public getInterfaceName(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1646
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1647
    :try_start_0
    invoke-static {p1}, Lcom/android/server/wifi/WifiNative;->getInterfaceNameNative(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1646
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getLocalLog()Landroid/util/LocalLog;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sLocalLog:Landroid/util/LocalLog;

    return-object v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 4

    .prologue
    .line 561
    const-string/jumbo v2, "DRIVER MACADDR"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 562
    .local v0, "ret":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 563
    const-string/jumbo v2, " = "

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 564
    .local v1, "tokens":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    aget-object v2, v1, v2

    return-object v2

    .line 566
    .end local v1    # "tokens":[Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public getNetworkExtra(ILjava/lang/String;)Ljava/util/Map;
    .locals 13
    .param p1, "netId"    # I
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 436
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 437
    .local v8, "wrapped":Ljava/lang/String;
    if-eqz v8, :cond_1

    const-string/jumbo v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string/jumbo v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 441
    :try_start_0
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    const/4 v10, 0x1

    invoke-virtual {v8, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 446
    .local v2, "encoded":Ljava/lang/String;
    new-instance v4, Lorg/json/JSONObject;

    const-string/jumbo v9, "UTF-8"

    invoke-static {v2, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 447
    .local v4, "json":Lorg/json/JSONObject;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 448
    .local v7, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 449
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 450
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 451
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 452
    .local v6, "value":Ljava/lang/Object;
    instance-of v9, v6, Ljava/lang/String;

    if-eqz v9, :cond_0

    .line 453
    check-cast v6, Ljava/lang/String;

    .end local v6    # "value":Ljava/lang/Object;
    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 457
    .end local v2    # "encoded":Ljava/lang/String;
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v4    # "json":Lorg/json/JSONObject;
    .end local v5    # "key":Ljava/lang/String;
    .end local v7    # "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 458
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v9, "WifiNative-HAL"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unable to deserialize networkExtra: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    return-object v12

    .line 438
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1
    return-object v12

    .line 456
    .restart local v2    # "encoded":Ljava/lang/String;
    .restart local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .restart local v4    # "json":Lorg/json/JSONObject;
    .restart local v7    # "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    return-object v7

    .line 460
    .end local v2    # "encoded":Ljava/lang/String;
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v4    # "json":Lorg/json/JSONObject;
    .end local v7    # "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_1
    move-exception v1

    .line 464
    .local v1, "e":Lorg/json/JSONException;
    return-object v12
.end method

.method public getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "netId"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 469
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 472
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "GET_NETWORK "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommandWithoutLogging(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNfcHandoverRequest()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1518
    const-string/jumbo v0, "NFC_GET_HANDOVER_REQ NDEF P2P-CR"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNfcHandoverSelect()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1522
    const-string/jumbo v0, "NFC_GET_HANDOVER_SEL NDEF P2P-CR"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNfcWpsConfigurationToken(I)Ljava/lang/String;
    .locals 2
    .param p1, "netId"    # I

    .prologue
    .line 1514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "WPS_NFC_CONFIG_TOKEN WPS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRingBufferData(Ljava/lang/String;)Z
    .locals 2
    .param p1, "ringName"    # Ljava/lang/String;

    .prologue
    .line 2600
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2601
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2602
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiNative;->getRingBufferDataNative(ILjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 2604
    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    .line 2600
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getRingBufferStatus()[Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    .locals 2

    .prologue
    .line 2589
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2590
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2591
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    invoke-static {v0}, Lcom/android/server/wifi/WifiNative;->getRingBufferStatusNative(I)[Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 2593
    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    return-object v0

    .line 2589
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getRttCapabilities()Landroid/net/wifi/RttManager$RttCapabilities;
    .locals 2

    .prologue
    .line 2345
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2346
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2347
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    invoke-static {v0}, Lcom/android/server/wifi/WifiNative;->getRttCapabilitiesNative(I)Landroid/net/wifi/RttManager$RttCapabilities;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 2349
    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    return-object v0

    .line 2345
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getRxPktFates([Lcom/android/server/wifi/WifiNative$RxFateReport;)Z
    .locals 6
    .param p1, "reportBufs"    # [Lcom/android/server/wifi/WifiNative$RxFateReport;

    .prologue
    const/4 v5, 0x0

    .line 2887
    sget-object v2, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2888
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2889
    sget v1, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    invoke-static {v1, p1}, Lcom/android/server/wifi/WifiNative;->getRxPktFatesNative(I[Lcom/android/server/wifi/WifiNative$RxFateReport;)I

    move-result v0

    .line 2890
    .local v0, "res":I
    if-eqz v0, :cond_0

    .line 2891
    const-string/jumbo v1, "WifiNative-HAL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getRxPktFatesNative returned "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 2892
    return v5

    .line 2894
    :cond_0
    const/4 v1, 0x1

    monitor-exit v2

    return v1

    .end local v0    # "res":I
    :cond_1
    monitor-exit v2

    .line 2897
    return v5

    .line 2887
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getScanCapabilities(Lcom/android/server/wifi/WifiNative$ScanCapabilities;)Z
    .locals 2
    .param p1, "capabilities"    # Lcom/android/server/wifi/WifiNative$ScanCapabilities;

    .prologue
    .line 1667
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1668
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiNative;->getScanCapabilitiesNative(ILcom/android/server/wifi/WifiNative$ScanCapabilities;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1667
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getScanResults()Ljava/util/ArrayList;
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 626
    const/16 v20, 0x0

    .line 627
    .local v20, "next_sid":I
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 628
    .local v22, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/ScanDetail;>;"
    :cond_0
    if-ltz v20, :cond_1

    .line 629
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "-"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiNative;->getRawScanResults(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 630
    .local v21, "rawResult":Ljava/lang/String;
    const/16 v20, -0x1

    .line 632
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_2

    .line 741
    .end local v21    # "rawResult":Ljava/lang/String;
    :cond_1
    return-object v22

    .line 635
    .restart local v21    # "rawResult":Ljava/lang/String;
    :cond_2
    const-string/jumbo v25, "\n"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 641
    .local v19, "lines":[Ljava/lang/String;
    const-string/jumbo v25, "bssid="

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v2

    .line 642
    .local v2, "bssidStrLen":I
    const-string/jumbo v25, "flags="

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v15

    .line 644
    .local v15, "flagLen":I
    const-string/jumbo v6, ""

    .line 645
    .local v6, "bssid":Ljava/lang/String;
    const/4 v8, 0x0

    .line 646
    .local v8, "level":I
    const/4 v9, 0x0

    .line 647
    .local v9, "freq":I
    const-wide/16 v10, 0x0

    .line 648
    .local v10, "tsf":J
    const-string/jumbo v7, ""

    .line 649
    .local v7, "flags":Ljava/lang/String;
    const/4 v5, 0x0

    .line 650
    .local v5, "wifiSsid":Landroid/net/wifi/WifiSsid;
    const/16 v17, 0x0

    .line 651
    .local v17, "infoElementsStr":Ljava/lang/String;
    const/4 v13, 0x0

    .line 653
    .local v13, "anqpLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v25, 0x0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v26, v0

    .end local v5    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    .end local v6    # "bssid":Ljava/lang/String;
    .end local v13    # "anqpLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "infoElementsStr":Ljava/lang/String;
    :goto_0
    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_0

    aget-object v18, v19, v25

    .line 654
    .local v18, "line":Ljava/lang/String;
    const-string/jumbo v27, "id="

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_4

    .line 656
    :try_start_0
    const-string/jumbo v27, "id="

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v27

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4

    move-result v27

    add-int/lit8 v20, v27, 0x1

    .line 653
    :cond_3
    :goto_1
    add-int/lit8 v25, v25, 0x1

    goto :goto_0

    .line 660
    :cond_4
    const-string/jumbo v27, "bssid="

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_5

    .line 661
    new-instance v6, Ljava/lang/String;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v28

    sub-int v28, v28, v2

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-direct {v6, v0, v2, v1}, Ljava/lang/String;-><init>([BII)V

    .restart local v6    # "bssid":Ljava/lang/String;
    goto :goto_1

    .line 662
    .end local v6    # "bssid":Ljava/lang/String;
    :cond_5
    const-string/jumbo v27, "freq="

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_6

    .line 664
    :try_start_1
    const-string/jumbo v27, "freq="

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v27

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v9

    goto :goto_1

    .line 665
    :catch_0
    move-exception v14

    .line 666
    .local v14, "e":Ljava/lang/NumberFormatException;
    const/4 v9, 0x0

    goto :goto_1

    .line 668
    .end local v14    # "e":Ljava/lang/NumberFormatException;
    :cond_6
    const-string/jumbo v27, "level="

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_7

    .line 670
    :try_start_2
    const-string/jumbo v27, "level="

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v27

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v8

    .line 674
    if-lez v8, :cond_3

    add-int/lit16 v8, v8, -0x100

    goto :goto_1

    .line 675
    :catch_1
    move-exception v14

    .line 676
    .restart local v14    # "e":Ljava/lang/NumberFormatException;
    const/4 v8, 0x0

    goto :goto_1

    .line 678
    .end local v14    # "e":Ljava/lang/NumberFormatException;
    :cond_7
    const-string/jumbo v27, "tsf="

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_8

    .line 680
    :try_start_3
    const-string/jumbo v27, "tsf="

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v27

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-wide v10

    goto/16 :goto_1

    .line 681
    :catch_2
    move-exception v14

    .line 682
    .restart local v14    # "e":Ljava/lang/NumberFormatException;
    const-wide/16 v10, 0x0

    goto/16 :goto_1

    .line 684
    .end local v14    # "e":Ljava/lang/NumberFormatException;
    :cond_8
    const-string/jumbo v27, "flags="

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_9

    .line 685
    new-instance v7, Ljava/lang/String;

    .end local v7    # "flags":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v28

    sub-int v28, v28, v15

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-direct {v7, v0, v15, v1}, Ljava/lang/String;-><init>([BII)V

    .restart local v7    # "flags":Ljava/lang/String;
    goto/16 :goto_1

    .line 686
    :cond_9
    const-string/jumbo v27, "ssid="

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_a

    .line 688
    const-string/jumbo v27, "ssid="

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v27

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v27

    .line 687
    invoke-static/range {v27 .. v27}, Landroid/net/wifi/WifiSsid;->createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    move-result-object v5

    .local v5, "wifiSsid":Landroid/net/wifi/WifiSsid;
    goto/16 :goto_1

    .line 689
    .end local v5    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    :cond_a
    const-string/jumbo v27, "ie="

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_b

    .line 690
    move-object/from16 v17, v18

    .local v17, "infoElementsStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 691
    .end local v17    # "infoElementsStr":Ljava/lang/String;
    :cond_b
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->isAnqpAttribute(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_d

    .line 692
    if-nez v13, :cond_c

    .line 693
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 695
    :cond_c
    move-object/from16 v0, v18

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 696
    :cond_d
    const-string/jumbo v27, "===="

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v27

    if-nez v27, :cond_e

    const-string/jumbo v27, "####"

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_3

    .line 697
    :cond_e
    if-eqz v6, :cond_f

    .line 699
    if-nez v17, :cond_10

    .line 700
    :try_start_4
    new-instance v27, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v28, "Null information element data"

    invoke-direct/range {v27 .. v28}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v27
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3

    .line 726
    :catch_3
    move-exception v16

    .line 727
    .local v16, "iae":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v27, "WifiNative-HAL"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "Failed to parse information elements: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    .end local v16    # "iae":Ljava/lang/IllegalArgumentException;
    :cond_f
    :goto_2
    const/4 v6, 0x0

    .line 731
    .local v6, "bssid":Ljava/lang/String;
    const/4 v8, 0x0

    .line 732
    const/4 v9, 0x0

    .line 733
    const-wide/16 v10, 0x0

    .line 734
    const-string/jumbo v7, ""

    .line 735
    const/4 v5, 0x0

    .line 736
    .local v5, "wifiSsid":Landroid/net/wifi/WifiSsid;
    const/16 v17, 0x0

    .line 737
    .local v17, "infoElementsStr":Ljava/lang/String;
    const/4 v13, 0x0

    .restart local v13    # "anqpLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_1

    .line 702
    .end local v5    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    .end local v6    # "bssid":Ljava/lang/String;
    .end local v13    # "anqpLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "infoElementsStr":Ljava/lang/String;
    :cond_10
    const/16 v27, 0x3d

    :try_start_5
    move-object/from16 v0, v17

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v23

    .line 703
    .local v23, "seperator":I
    if-gez v23, :cond_11

    .line 704
    new-instance v27, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v28, "No element separator"

    invoke-direct/range {v27 .. v28}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 709
    :cond_11
    add-int/lit8 v27, v23, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/android/server/wifi/hotspot2/Utils;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v27

    .line 708
    invoke-static/range {v27 .. v27}, Lcom/android/server/wifi/util/InformationElementUtil;->parseInformationElements([B)[Landroid/net/wifi/ScanResult$InformationElement;

    move-result-object v12

    .line 711
    .local v12, "infoElements":[Landroid/net/wifi/ScanResult$InformationElement;
    new-instance v4, Lcom/android/server/wifi/hotspot2/NetworkDetail;

    invoke-direct {v4, v6, v12, v13, v9}, Lcom/android/server/wifi/hotspot2/NetworkDetail;-><init>(Ljava/lang/String;[Landroid/net/wifi/ScanResult$InformationElement;Ljava/util/List;I)V

    .line 713
    .local v4, "networkDetail":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    if-eqz v5, :cond_14

    invoke-virtual {v5}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v24

    .line 714
    .local v24, "xssid":Ljava/lang/String;
    :goto_3
    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getTrimmedSSID()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_12

    .line 715
    const-string/jumbo v27, "WifiNative-HAL"

    .line 716
    const-string/jumbo v28, "Inconsistent SSID on BSSID \'%s\': \'%s\' vs \'%s\': %s"

    .line 715
    const/16 v29, 0x4

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    .line 717
    const/16 v30, 0x0

    aput-object v6, v29, v30

    const/16 v30, 0x1

    aput-object v24, v29, v30

    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getSSID()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x2

    aput-object v30, v29, v31

    const/16 v30, 0x3

    aput-object v17, v29, v30

    .line 715
    invoke-static/range {v28 .. v29}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    :cond_12
    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->hasInterworking()Z

    move-result v27

    if-eqz v27, :cond_13

    .line 721
    sget-boolean v27, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v27, :cond_13

    const-string/jumbo v27, "WifiNative-HAL"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "HSNwk: \'"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    :cond_13
    new-instance v3, Lcom/android/server/wifi/ScanDetail;

    invoke-direct/range {v3 .. v13}, Lcom/android/server/wifi/ScanDetail;-><init>(Lcom/android/server/wifi/hotspot2/NetworkDetail;Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;IIJ[Landroid/net/wifi/ScanResult$InformationElement;Ljava/util/List;)V

    .line 725
    .local v3, "scan":Lcom/android/server/wifi/ScanDetail;
    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 713
    .end local v3    # "scan":Lcom/android/server/wifi/ScanDetail;
    .end local v24    # "xssid":Ljava/lang/String;
    :cond_14
    const-string/jumbo v24, "<unknown ssid>"
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_3

    .restart local v24    # "xssid":Ljava/lang/String;
    goto :goto_3

    .line 657
    .end local v4    # "networkDetail":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .end local v12    # "infoElements":[Landroid/net/wifi/ScanResult$InformationElement;
    .end local v23    # "seperator":I
    .end local v24    # "xssid":Ljava/lang/String;
    :catch_4
    move-exception v14

    .restart local v14    # "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_1
.end method

.method public getScanResults(Z)[Landroid/net/wifi/WifiScanner$ScanData;
    .locals 3
    .param p1, "flush"    # Z

    .prologue
    .line 2002
    sget-object v2, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2003
    const/4 v0, 0x0

    .line 2004
    .local v0, "sd":[Landroid/net/wifi/WifiScanner$ScanData;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2005
    sget v1, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    invoke-static {v1, p1}, Lcom/android/server/wifi/WifiNative;->getScanResultsNative(IZ)[Landroid/net/wifi/WifiScanner$ScanData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2008
    .end local v0    # "sd":[Landroid/net/wifi/WifiScanner$ScanData;
    :cond_0
    if-eqz v0, :cond_1

    monitor-exit v2

    .line 2009
    return-object v0

    .line 2011
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    new-array v1, v1, [Landroid/net/wifi/WifiScanner$ScanData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return-object v1

    .line 2002
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getSupportedFeatureSet()I
    .locals 3

    .prologue
    .line 2167
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2168
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2169
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    invoke-static {v0}, Lcom/android/server/wifi/WifiNative;->getSupportedFeatureSetNative(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 2171
    :cond_0
    :try_start_1
    const-string/jumbo v0, "WifiNative-HAL"

    const-string/jumbo v2, "Failing getSupportedFeatureset because HAL isn\'t started"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2172
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    .line 2167
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getSupportedLoggerFeatureSet()I
    .locals 2

    .prologue
    .line 2515
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2516
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2517
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    invoke-static {v0}, Lcom/android/server/wifi/WifiNative;->getSupportedLoggerFeatureSetNative(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 2519
    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    .line 2515
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getTdlsCapabilities()Lcom/android/server/wifi/WifiNative$TdlsCapabilities;
    .locals 2

    .prologue
    .line 2436
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2437
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2438
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    invoke-static {v0}, Lcom/android/server/wifi/WifiNative;->getTdlsCapabilitiesNative(I)Lcom/android/server/wifi/WifiNative$TdlsCapabilities;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 2440
    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    return-object v0

    .line 2436
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getTdlsStatus(Ljava/lang/String;)Lcom/android/server/wifi/WifiNative$TdlsStatus;
    .locals 2
    .param p1, "macAdd"    # Ljava/lang/String;

    .prologue
    .line 2413
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2414
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2415
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiNative;->getTdlsStatusNative(ILjava/lang/String;)Lcom/android/server/wifi/WifiNative$TdlsStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 2417
    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    return-object v0

    .line 2413
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getTxPktFates([Lcom/android/server/wifi/WifiNative$TxFateReport;)Z
    .locals 6
    .param p1, "reportBufs"    # [Lcom/android/server/wifi/WifiNative$TxFateReport;

    .prologue
    const/4 v5, 0x0

    .line 2867
    sget-object v2, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2868
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2869
    sget v1, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    invoke-static {v1, p1}, Lcom/android/server/wifi/WifiNative;->getTxPktFatesNative(I[Lcom/android/server/wifi/WifiNative$TxFateReport;)I

    move-result v0

    .line 2870
    .local v0, "res":I
    if-eqz v0, :cond_0

    .line 2871
    const-string/jumbo v1, "WifiNative-HAL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getTxPktFatesNative returned "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 2872
    return v5

    .line 2874
    :cond_0
    const/4 v1, 0x1

    monitor-exit v2

    return v1

    .end local v0    # "res":I
    :cond_1
    monitor-exit v2

    .line 2877
    return v5

    .line 2867
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getWifiLinkLayerStats(Ljava/lang/String;)Landroid/net/wifi/WifiLinkLayerStats;
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 2146
    if-nez p1, :cond_0

    return-object v2

    .line 2147
    :cond_0
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2148
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2149
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    invoke-static {v0}, Lcom/android/server/wifi/WifiNative;->getWifiLinkLayerStatsNative(I)Landroid/net/wifi/WifiLinkLayerStats;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :cond_1
    monitor-exit v1

    .line 2151
    return-object v2

    .line 2147
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getWlanWakeReasonCount()Landroid/net/wifi/WifiWakeReasonAndCounts;
    .locals 3

    .prologue
    .line 3115
    const-string/jumbo v0, "WifiNative-HAL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getWlanWakeReasonCount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3116
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3117
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3118
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    invoke-static {v0}, Lcom/android/server/wifi/WifiNative;->getWlanWakeReasonCountNative(I)Landroid/net/wifi/WifiWakeReasonAndCounts;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 3120
    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    return-object v0

    .line 3116
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public initContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 146
    iput-object p1, p0, Lcom/android/server/wifi/WifiNative;->mContext:Landroid/content/Context;

    .line 144
    :cond_0
    return-void
.end method

.method public initiatorReportNfcHandover(Ljava/lang/String;)Z
    .locals 2
    .param p1, "selectMessage"    # Ljava/lang/String;

    .prologue
    .line 1526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "NFC_REPORT_HANDOVER INIT P2P 00 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public installPacketFilter([B)Z
    .locals 2
    .param p1, "filter"    # [B

    .prologue
    .line 2367
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2368
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2369
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiNative;->installPacketFilterNative(I[B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 2371
    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    .line 2367
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isDriverLoaded()Z
    .locals 2

    .prologue
    .line 193
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 194
    :try_start_0
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isDriverLoadedNative()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    .line 193
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public isGetChannelsForBandSupported()Z
    .locals 2

    .prologue
    .line 2312
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2313
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2314
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isGetChannelsForBandSupportedNative()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 2316
    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    .line 2312
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isHalStarted()Z
    .locals 4

    .prologue
    .line 1625
    sget-wide v0, Lcom/android/server/wifi/WifiNative;->sWifiHalHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public killSupplicant(Z)Z
    .locals 2
    .param p1, "p2pSupported"    # Z

    .prologue
    .line 216
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 217
    :try_start_0
    invoke-static {p1}, Lcom/android/server/wifi/WifiNative;->killSupplicantNative(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    .line 216
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public listNetworks()Ljava/lang/String;
    .locals 1

    .prologue
    .line 400
    const-string/jumbo v0, "LIST_NETWORKS"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public listNetworks(I)Ljava/lang/String;
    .locals 2
    .param p1, "last_id"    # I

    .prologue
    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "LIST_NETWORKS LAST_ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadDriver()Z
    .locals 2

    .prologue
    .line 186
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 187
    :try_start_0
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->loadDriverNative()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    .line 186
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public p2pCancelConnect()Z
    .locals 1

    .prologue
    .line 1280
    const-string/jumbo v0, "P2P_CANCEL"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public p2pConnect(Landroid/net/wifi/p2p/WifiP2pConfig;Z)Ljava/lang/String;
    .locals 8
    .param p1, "config"    # Landroid/net/wifi/p2p/WifiP2pConfig;
    .param p2, "joinExistingGroup"    # Z

    .prologue
    const/4 v6, 0x0

    .line 1229
    if-nez p1, :cond_0

    return-object v6

    .line 1230
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1231
    .local v0, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    .line 1232
    .local v5, "wps":Landroid/net/wifi/WpsInfo;
    iget-object v6, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1234
    iget v6, v5, Landroid/net/wifi/WpsInfo;->setup:I

    packed-switch v6, :pswitch_data_0

    .line 1257
    :goto_0
    iget v6, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    const/4 v7, -0x2

    if-ne v6, v7, :cond_1

    .line 1258
    const-string/jumbo v6, "persistent"

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1261
    :cond_1
    if-eqz p2, :cond_3

    .line 1262
    const-string/jumbo v6, "join"

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1273
    :goto_1
    const-string/jumbo v1, "P2P_CONNECT "

    .line 1274
    .local v1, "command":Ljava/lang/String;
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "s$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .local v3, "s":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 1236
    .end local v1    # "command":Ljava/lang/String;
    .end local v3    # "s":Ljava/lang/String;
    .end local v4    # "s$iterator":Ljava/util/Iterator;
    :pswitch_0
    const-string/jumbo v6, "pbc"

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1239
    :pswitch_1
    iget-object v6, v5, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1240
    const-string/jumbo v6, "pin"

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1244
    :goto_3
    const-string/jumbo v6, "display"

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1242
    :cond_2
    iget-object v6, v5, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1247
    :pswitch_2
    iget-object v6, v5, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1248
    const-string/jumbo v6, "keypad"

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1251
    :pswitch_3
    iget-object v6, v5, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1252
    const-string/jumbo v6, "label"

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1266
    :cond_3
    iget v2, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    .line 1267
    .local v2, "groupOwnerIntent":I
    if-ltz v2, :cond_4

    const/16 v6, 0xf

    if-le v2, v6, :cond_5

    .line 1268
    :cond_4
    const/4 v2, 0x6

    .line 1270
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "go_intent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1276
    .end local v2    # "groupOwnerIntent":I
    .restart local v1    # "command":Ljava/lang/String;
    .restart local v4    # "s$iterator":Ljava/util/Iterator;
    :cond_6
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 1234
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public p2pExtListen(ZII)Z
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "period"    # I
    .param p3, "interval"    # I

    .prologue
    .line 1190
    if-eqz p1, :cond_0

    if-ge p3, p2, :cond_0

    .line 1191
    const/4 v0, 0x0

    return v0

    .line 1193
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "P2P_EXT_LISTEN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1194
    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1193
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1194
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public p2pFind()Z
    .locals 1

    .prologue
    .line 1164
    const-string/jumbo v0, "P2P_FIND"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public p2pFind(I)Z
    .locals 2
    .param p1, "timeout"    # I

    .prologue
    .line 1168
    if-gtz p1, :cond_0

    .line 1169
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->p2pFind()Z

    move-result v0

    return v0

    .line 1171
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "P2P_FIND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public p2pFlush()Z
    .locals 1

    .prologue
    .line 1222
    const-string/jumbo v0, "P2P_FLUSH"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public p2pGetDeviceAddress()Ljava/lang/String;
    .locals 9

    .prologue
    .line 1347
    const-string/jumbo v5, "WifiNative-HAL"

    const-string/jumbo v6, "p2pGetDeviceAddress"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    const/4 v2, 0x0

    .line 1354
    .local v2, "status":Ljava/lang/String;
    sget-object v6, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1355
    :try_start_0
    const-string/jumbo v5, "STATUS"

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiNative;->doStringCommandNative(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .local v2, "status":Ljava/lang/String;
    monitor-exit v6

    .line 1358
    const-string/jumbo v1, ""

    .line 1359
    .local v1, "result":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1360
    const-string/jumbo v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1361
    .local v4, "tokens":[Ljava/lang/String;
    const/4 v5, 0x0

    array-length v6, v4

    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v3, v4, v5

    .line 1362
    .local v3, "token":Ljava/lang/String;
    const-string/jumbo v7, "p2p_device_address="

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1363
    const-string/jumbo v7, "="

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1364
    .local v0, "nameValue":[Ljava/lang/String;
    array-length v7, v0

    const/4 v8, 0x2

    if-eq v7, v8, :cond_1

    .line 1371
    .end local v0    # "nameValue":[Ljava/lang/String;
    .end local v3    # "token":Ljava/lang/String;
    .end local v4    # "tokens":[Ljava/lang/String;
    :cond_0
    const-string/jumbo v5, "WifiNative-HAL"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "p2pGetDeviceAddress returning "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    return-object v1

    .line 1354
    .end local v1    # "result":Ljava/lang/String;
    .local v2, "status":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 1366
    .restart local v0    # "nameValue":[Ljava/lang/String;
    .restart local v1    # "result":Ljava/lang/String;
    .local v2, "status":Ljava/lang/String;
    .restart local v3    # "token":Ljava/lang/String;
    .restart local v4    # "tokens":[Ljava/lang/String;
    :cond_1
    const/4 v7, 0x1

    aget-object v1, v0, v7

    .line 1361
    .end local v0    # "nameValue":[Ljava/lang/String;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public p2pGetSsid(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 1343
    const-string/jumbo v0, "oper_ssid"

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiNative;->p2pGetParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p2pGroupAdd(I)Z
    .locals 2
    .param p1, "netId"    # I

    .prologue
    .line 1309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "P2P_GROUP_ADD persistent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public p2pGroupAdd(Z)Z
    .locals 1
    .param p1, "persistent"    # Z

    .prologue
    .line 1302
    if-eqz p1, :cond_0

    .line 1303
    const-string/jumbo v0, "P2P_GROUP_ADD persistent"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1305
    :cond_0
    const-string/jumbo v0, "P2P_GROUP_ADD"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public p2pGroupRemove(Ljava/lang/String;)Z
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 1313
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1314
    :cond_0
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1315
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IFNAME="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " P2P_GROUP_REMOVE "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommandNative(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 1314
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public p2pInvite(Landroid/net/wifi/p2p/WifiP2pGroup;Ljava/lang/String;)Z
    .locals 2
    .param p1, "group"    # Landroid/net/wifi/p2p/WifiP2pGroup;
    .param p2, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 1325
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1327
    :cond_0
    if-nez p1, :cond_1

    .line 1328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "P2P_INVITE peer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1330
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "P2P_INVITE group="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1331
    const-string/jumbo v1, " peer="

    .line 1330
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1331
    const-string/jumbo v1, " go_dev_addr="

    .line 1330
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1331
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 1330
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public p2pListen()Z
    .locals 1

    .prologue
    .line 1179
    const-string/jumbo v0, "P2P_LISTEN"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public p2pListen(I)Z
    .locals 2
    .param p1, "timeout"    # I

    .prologue
    .line 1183
    if-gtz p1, :cond_0

    .line 1184
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->p2pListen()Z

    move-result v0

    return v0

    .line 1186
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "P2P_LISTEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public p2pPeer(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 1397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "P2P_PEER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p2pProvisionDiscovery(Landroid/net/wifi/p2p/WifiP2pConfig;)Z
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/p2p/WifiP2pConfig;

    .prologue
    const/4 v1, 0x0

    .line 1284
    if-nez p1, :cond_0

    return v1

    .line 1286
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget v0, v0, Landroid/net/wifi/WpsInfo;->setup:I

    packed-switch v0, :pswitch_data_0

    .line 1298
    return v1

    .line 1288
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "P2P_PROV_DISC "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " pbc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1291
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "P2P_PROV_DISC "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " keypad"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1294
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "P2P_PROV_DISC "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " display"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1286
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public p2pReinvoke(ILjava/lang/String;)Z
    .locals 2
    .param p1, "netId"    # I
    .param p2, "deviceAddress"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1337
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    return v1

    .line 1339
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "P2P_INVITE persistent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " peer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public p2pReject(Ljava/lang/String;)Z
    .locals 2
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 1320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "P2P_REJECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public p2pServDiscCancelReq(Ljava/lang/String;)Z
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 1493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "P2P_SERV_DISC_CANCEL_REQ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public p2pServDiscReq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "query"    # Ljava/lang/String;

    .prologue
    .line 1485
    const-string/jumbo v0, "P2P_SERV_DISC_REQ"

    .line 1486
    .local v0, "command":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1487
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1489
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public p2pServiceAdd(Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)Z
    .locals 6
    .param p1, "servInfo"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    .prologue
    .line 1439
    sget-object v4, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1440
    :try_start_0
    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->getSupplicantQueryList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "s$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1441
    .local v1, "s":Ljava/lang/String;
    const-string/jumbo v0, "P2P_SERVICE_ADD"

    .line 1442
    .local v0, "command":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1443
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 1444
    const/4 v3, 0x0

    monitor-exit v4

    return v3

    .end local v0    # "command":Ljava/lang/String;
    .end local v1    # "s":Ljava/lang/String;
    :cond_1
    monitor-exit v4

    .line 1448
    const/4 v3, 0x1

    return v3

    .line 1439
    .end local v2    # "s$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public p2pServiceDel(Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)Z
    .locals 9
    .param p1, "servInfo"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1456
    sget-object v5, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1457
    :try_start_0
    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->getSupplicantQueryList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "s$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1458
    .local v2, "s":Ljava/lang/String;
    const-string/jumbo v0, "P2P_SERVICE_DEL "

    .line 1460
    .local v0, "command":Ljava/lang/String;
    const-string/jumbo v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1461
    .local v1, "data":[Ljava/lang/String;
    array-length v4, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, 0x2

    if-ge v4, v6, :cond_1

    monitor-exit v5

    .line 1462
    return v7

    .line 1464
    :cond_1
    :try_start_1
    const-string/jumbo v4, "upnp"

    const/4 v6, 0x0

    aget-object v6, v1, v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1465
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1472
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    monitor-exit v5

    .line 1473
    return v7

    .line 1466
    :cond_2
    :try_start_2
    const-string/jumbo v4, "bonjour"

    const/4 v6, 0x0

    aget-object v6, v1, v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1467
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v6, 0x0

    aget-object v6, v1, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1468
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v6, 0x1

    aget-object v6, v1, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_0

    :cond_3
    monitor-exit v5

    .line 1470
    return v7

    .end local v0    # "command":Ljava/lang/String;
    .end local v1    # "data":[Ljava/lang/String;
    .end local v2    # "s":Ljava/lang/String;
    :cond_4
    monitor-exit v5

    .line 1477
    return v8

    .line 1456
    .end local v3    # "s$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public p2pServiceFlush()Z
    .locals 1

    .prologue
    .line 1481
    const-string/jumbo v0, "P2P_SERVICE_FLUSH"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public p2pSetChannel(II)Z
    .locals 6
    .param p1, "lc"    # I
    .param p2, "oc"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1198
    sget-boolean v1, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "p2pSetChannel: lc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", oc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    :cond_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1201
    if-lt p1, v5, :cond_1

    const/16 v1, 0xb

    if-gt p1, v1, :cond_1

    .line 1202
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "P2P_SET listen_channel "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    monitor-exit v2

    .line 1203
    return v4

    .line 1205
    :cond_1
    if-eqz p1, :cond_2

    monitor-exit v2

    .line 1206
    return v4

    .line 1209
    :cond_2
    if-lt p2, v5, :cond_4

    const/16 v1, 0xa5

    if-gt p2, v1, :cond_4

    .line 1210
    const/16 v1, 0xe

    if-gt p2, v1, :cond_3

    const/16 v1, 0x967

    :goto_0
    mul-int/lit8 v3, p2, 0x5

    add-int v0, v1, v3

    .line 1211
    .local v0, "freq":I
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "P2P_SET disallow_freq 1000-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1212
    add-int/lit8 v3, v0, -0x5

    .line 1211
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1212
    const-string/jumbo v3, ","

    .line 1211
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1212
    add-int/lit8 v3, v0, 0x5

    .line 1211
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1212
    const-string/jumbo v3, "-6000"

    .line 1211
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    .line 1210
    .end local v0    # "freq":I
    :cond_3
    const/16 v1, 0x1388

    goto :goto_0

    .line 1213
    :cond_4
    if-nez p2, :cond_5

    .line 1215
    :try_start_2
    const-string/jumbo v1, "P2P_SET disallow_freq \"\""

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    :cond_5
    monitor-exit v2

    .line 1218
    return v4

    .line 1200
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public p2pStopFind()Z
    .locals 1

    .prologue
    .line 1175
    const-string/jumbo v0, "P2P_STOP_FIND"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public pauseScan()V
    .locals 4

    .prologue
    .line 1969
    sget-object v2, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1970
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1971
    sget v1, Lcom/android/server/wifi/WifiNative;->sScanCmdId:I

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/wifi/WifiNative;->sScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/wifi/WifiNative;->sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    if-eqz v1, :cond_0

    .line 1972
    const-string/jumbo v1, "WifiNative-HAL"

    const-string/jumbo v3, "Pausing scan"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1973
    sget v1, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/android/server/wifi/WifiNative;->getScanResultsNative(IZ)[Landroid/net/wifi/WifiScanner$ScanData;

    move-result-object v0

    .line 1974
    .local v0, "scanData":[Landroid/net/wifi/WifiScanner$ScanData;
    sget v1, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    sget v3, Lcom/android/server/wifi/WifiNative;->sScanCmdId:I

    invoke-static {v1, v3}, Lcom/android/server/wifi/WifiNative;->stopScanNative(II)Z

    .line 1975
    const/4 v1, 0x0

    sput v1, Lcom/android/server/wifi/WifiNative;->sScanCmdId:I

    .line 1976
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    invoke-interface {v1, v0}, Lcom/android/server/wifi/WifiNative$ScanEventHandler;->onScanPaused([Landroid/net/wifi/WifiScanner$ScanData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "scanData":[Landroid/net/wifi/WifiScanner$ScanData;
    :cond_0
    monitor-exit v2

    .line 1968
    return-void

    .line 1969
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public ping()Z
    .locals 2

    .prologue
    .line 330
    const-string/jumbo v1, "PING"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "pong":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "PONG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public pktcntPoll()Ljava/lang/String;
    .locals 1

    .prologue
    .line 995
    const-string/jumbo v0, "PKTCNT_POLL"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public queryInterfaceIndex(Ljava/lang/String;)I
    .locals 5
    .param p1, "interfaceName"    # Ljava/lang/String;

    .prologue
    .line 1630
    sget-object v4, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1631
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1632
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getInterfacesNative()I

    move-result v2

    .line 1633
    .local v2, "num":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1634
    invoke-static {v0}, Lcom/android/server/wifi/WifiNative;->getInterfaceNameNative(I)Ljava/lang/String;

    move-result-object v1

    .line 1635
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    monitor-exit v4

    .line 1636
    return v0

    .line 1633
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "num":I
    :cond_1
    monitor-exit v4

    .line 1641
    const/4 v3, -0x1

    return v3

    .line 1630
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public declared-synchronized readKernelLog()Ljava/lang/String;
    .locals 6

    .prologue
    monitor-enter p0

    .line 1538
    :try_start_0
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->readKernelLogNative()[B

    move-result-object v0

    .line 1539
    .local v0, "bytes":[B
    if-eqz v0, :cond_0

    .line 1540
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 1542
    .local v3, "decoder":Ljava/nio/charset/CharsetDecoder;
    :try_start_1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v2

    .line 1543
    .local v2, "decoded":Ljava/nio/CharBuffer;
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    monitor-exit p0

    return-object v4

    .line 1544
    .end local v2    # "decoded":Ljava/nio/CharBuffer;
    :catch_0
    move-exception v1

    .line 1545
    .local v1, "cce":Ljava/nio/charset/CharacterCodingException;
    :try_start_2
    new-instance v4, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v4, v0, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v4

    .line 1548
    .end local v1    # "cce":Ljava/nio/charset/CharacterCodingException;
    .end local v3    # "decoder":Ljava/nio/charset/CharsetDecoder;
    :cond_0
    :try_start_3
    const-string/jumbo v4, "*** failed to read kernel log ***"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v4

    .end local v0    # "bytes":[B
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public reassociate()Z
    .locals 1

    .prologue
    .line 538
    sget-boolean v0, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "REASSOCIATE "

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->logDbg(Ljava/lang/String;)V

    .line 539
    :cond_0
    const-string/jumbo v0, "REASSOCIATE"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public reconnect()Z
    .locals 1

    .prologue
    .line 533
    sget-boolean v0, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "RECONNECT "

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->logDbg(Ljava/lang/String;)V

    .line 534
    :cond_0
    const-string/jumbo v0, "RECONNECT"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeNetwork(I)Z
    .locals 2
    .param p1, "netId"    # I

    .prologue
    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "REMOVE_NETWORK "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public requestRtt([Landroid/net/wifi/RttManager$RttParams;Lcom/android/server/wifi/WifiNative$RttEventHandler;)Z
    .locals 4
    .param p1, "params"    # [Landroid/net/wifi/RttManager$RttParams;
    .param p2, "handler"    # Lcom/android/server/wifi/WifiNative$RttEventHandler;

    .prologue
    const/4 v3, 0x0

    .line 2205
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2206
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2207
    sget v0, Lcom/android/server/wifi/WifiNative;->sRttCmdId:I

    if-eqz v0, :cond_0

    .line 2208
    const-string/jumbo v0, "WifiNative-HAL"

    const-string/jumbo v2, "Last one is still under measurement!"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 2209
    return v3

    .line 2211
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getNewCmdIdLocked()I

    move-result v0

    sput v0, Lcom/android/server/wifi/WifiNative;->sRttCmdId:I

    .line 2213
    sput-object p2, Lcom/android/server/wifi/WifiNative;->sRttEventHandler:Lcom/android/server/wifi/WifiNative$RttEventHandler;

    .line 2214
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    sget v2, Lcom/android/server/wifi/WifiNative;->sRttCmdId:I

    invoke-static {v0, v2, p1}, Lcom/android/server/wifi/WifiNative;->requestRangeNative(II[Landroid/net/wifi/RttManager$RttParams;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :cond_1
    monitor-exit v1

    .line 2216
    return v3

    .line 2205
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public resetHotlist()V
    .locals 3

    .prologue
    .line 2052
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2053
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2054
    sget v0, Lcom/android/server/wifi/WifiNative;->sHotlistCmdId:I

    if-eqz v0, :cond_0

    .line 2055
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    sget v2, Lcom/android/server/wifi/WifiNative;->sHotlistCmdId:I

    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiNative;->resetHotlistNative(II)Z

    .line 2056
    const/4 v0, 0x0

    sput v0, Lcom/android/server/wifi/WifiNative;->sHotlistCmdId:I

    .line 2057
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wifi/WifiNative;->sHotlistEventHandler:Lcom/android/server/wifi/WifiNative$HotlistEventHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 2051
    return-void

    .line 2052
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public resetLogHandler()Z
    .locals 4

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 2526
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2527
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2528
    sget v0, Lcom/android/server/wifi/WifiNative;->sLogCmdId:I

    if-ne v0, v2, :cond_0

    .line 2529
    const-string/jumbo v0, "WifiNative-HAL"

    const-string/jumbo v2, "Can not reset handler Before set any handler"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 2530
    return v3

    .line 2532
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    sput-object v0, Lcom/android/server/wifi/WifiNative;->sWifiLoggerEventHandler:Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;

    .line 2533
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    sget v2, Lcom/android/server/wifi/WifiNative;->sLogCmdId:I

    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiNative;->resetLogHandlerNative(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2534
    const/4 v0, -0x1

    sput v0, Lcom/android/server/wifi/WifiNative;->sLogCmdId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2535
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    :cond_1
    monitor-exit v1

    .line 2537
    return v3

    :cond_2
    monitor-exit v1

    .line 2540
    return v3

    .line 2526
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public resetPnoList()Z
    .locals 3

    .prologue
    .line 2950
    const-string/jumbo v0, "WifiNative-HAL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetPnoList cmd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/wifi/WifiNative;->sPnoCmdId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2952
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2953
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2954
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getNewCmdIdLocked()I

    move-result v0

    sput v0, Lcom/android/server/wifi/WifiNative;->sPnoCmdId:I

    .line 2955
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wifi/WifiNative;->sPnoEventHandler:Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    .line 2956
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    sget v2, Lcom/android/server/wifi/WifiNative;->sPnoCmdId:I

    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiNative;->resetPnoListNative(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 2957
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    .line 2960
    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    .line 2952
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public responderReportNfcHandover(Ljava/lang/String;)Z
    .locals 2
    .param p1, "requestMessage"    # Ljava/lang/String;

    .prologue
    .line 1530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "NFC_REPORT_HANDOVER RESP P2P "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " 00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public restartScan()V
    .locals 5

    .prologue
    .line 1983
    sget-object v3, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1984
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1985
    sget v2, Lcom/android/server/wifi/WifiNative;->sScanCmdId:I

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/server/wifi/WifiNative;->sScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/wifi/WifiNative;->sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    if-eqz v2, :cond_0

    .line 1986
    const-string/jumbo v2, "WifiNative-HAL"

    const-string/jumbo v4, "Restarting scan"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1987
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    .line 1988
    .local v0, "handler":Lcom/android/server/wifi/WifiNative$ScanEventHandler;
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    .line 1989
    .local v1, "settings":Lcom/android/server/wifi/WifiNative$ScanSettings;
    sget-object v2, Lcom/android/server/wifi/WifiNative;->sScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    sget-object v4, Lcom/android/server/wifi/WifiNative;->sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    invoke-virtual {p0, v2, v4}, Lcom/android/server/wifi/WifiNative;->startScan(Lcom/android/server/wifi/WifiNative$ScanSettings;Lcom/android/server/wifi/WifiNative$ScanEventHandler;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1990
    sget-object v2, Lcom/android/server/wifi/WifiNative;->sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    invoke-interface {v2}, Lcom/android/server/wifi/WifiNative$ScanEventHandler;->onScanRestarted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "handler":Lcom/android/server/wifi/WifiNative$ScanEventHandler;
    .end local v1    # "settings":Lcom/android/server/wifi/WifiNative$ScanSettings;
    :cond_0
    :goto_0
    monitor-exit v3

    .line 1982
    return-void

    .line 1993
    .restart local v0    # "handler":Lcom/android/server/wifi/WifiNative$ScanEventHandler;
    .restart local v1    # "settings":Lcom/android/server/wifi/WifiNative$ScanSettings;
    :cond_1
    :try_start_1
    sput-object v0, Lcom/android/server/wifi/WifiNative;->sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    .line 1994
    sput-object v1, Lcom/android/server/wifi/WifiNative;->sScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1983
    .end local v0    # "handler":Lcom/android/server/wifi/WifiNative$ScanEventHandler;
    .end local v1    # "settings":Lcom/android/server/wifi/WifiNative$ScanSettings;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public saveConfig()Z
    .locals 1

    .prologue
    .line 913
    const-string/jumbo v0, "SAVE_CONFIG"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public scan(Ljava/util/Set;Ljava/util/Set;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 366
    .local p1, "freqs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local p2, "hiddenNetworkIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 367
    .local v0, "freqList":Ljava/lang/String;
    const/4 v1, 0x0

    .line 368
    .local v1, "hiddenNetworkIdList":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 369
    invoke-static {p1}, Lcom/android/server/wifi/WifiNative;->createCSVStringFromIntegerSet(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    .line 371
    .end local v0    # "freqList":Ljava/lang/String;
    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 372
    invoke-static {p2}, Lcom/android/server/wifi/WifiNative;->createCSVStringFromIntegerSet(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    .line 374
    .end local v1    # "hiddenNetworkIdList":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/android/server/wifi/WifiNative;->scanWithParams(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public scanResult(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    .line 774
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "BSS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public selectNetwork(I)Z
    .locals 2
    .param p1, "netId"    # I

    .prologue
    .line 528
    sget-boolean v0, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "selectNetwork nid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->logDbg(Ljava/lang/String;)V

    .line 529
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SELECT_NETWORK "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setBand(I)Z
    .locals 3
    .param p1, "band"    # I

    .prologue
    .line 857
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 858
    const-string/jumbo v0, "5G"

    .line 863
    .local v0, "bandstr":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SET SETBAND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 859
    .end local v0    # "bandstr":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 860
    const-string/jumbo v0, "2G"

    .restart local v0    # "bandstr":Ljava/lang/String;
    goto :goto_0

    .line 862
    .end local v0    # "bandstr":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "AUTO"

    .restart local v0    # "bandstr":Ljava/lang/String;
    goto :goto_0
.end method

.method public setBluetoothCoexistenceMode(I)Z
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 878
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DRIVER BTCOEXMODE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setBluetoothCoexistenceScanMode(Z)Z
    .locals 1
    .param p1, "setCoexScanMode"    # Z

    .prologue
    .line 890
    if-eqz p1, :cond_0

    .line 891
    const-string/jumbo v0, "DRIVER BTCOEXSCAN-START"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 893
    :cond_0
    const-string/jumbo v0, "DRIVER BTCOEXSCAN-STOP"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setBssidBlacklist([Ljava/lang/String;)Z
    .locals 4
    .param p1, "list"    # [Ljava/lang/String;

    .prologue
    .line 2994
    const/4 v0, 0x0

    .line 2995
    .local v0, "size":I
    if-eqz p1, :cond_0

    .line 2996
    array-length v0, p1

    .line 2998
    :cond_0
    const-string/jumbo v1, "WifiNative-HAL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setBssidBlacklist cmd "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/wifi/WifiNative;->sPnoCmdId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3000
    sget-object v2, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3001
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3002
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getNewCmdIdLocked()I

    move-result v1

    sput v1, Lcom/android/server/wifi/WifiNative;->sPnoCmdId:I

    .line 3003
    sget v1, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    sget v3, Lcom/android/server/wifi/WifiNative;->sPnoCmdId:I

    invoke-static {v1, v3, p1}, Lcom/android/server/wifi/WifiNative;->setBssidBlacklistNative(II[Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    .line 3005
    :cond_1
    const/4 v1, 0x0

    monitor-exit v2

    return v1

    .line 3000
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setConcurrencyPriority(Ljava/lang/String;)Z
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "P2P_SET conc_pref "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setConfigMethods(Ljava/lang/String;)Z
    .locals 2
    .param p1, "cfg"    # Ljava/lang/String;

    .prologue
    .line 1100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SET config_methods "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setCountryCode(Ljava/lang/String;)Z
    .locals 2
    .param p1, "countryCode"    # Ljava/lang/String;

    .prologue
    .line 934
    if-eqz p1, :cond_0

    .line 935
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DRIVER COUNTRY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 937
    :cond_0
    const-string/jumbo v0, "DRIVER COUNTRY"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setCountryCodeHal(Ljava/lang/String;)Z
    .locals 2
    .param p1, "CountryCode"    # Ljava/lang/String;

    .prologue
    .line 2378
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2379
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2380
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiNative;->setCountryCodeHalNative(ILjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 2382
    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    .line 2378
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setDeviceName(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1092
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SET device_name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setDeviceType(Ljava/lang/String;)Z
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 1096
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SET device_type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setDfsFlag(Z)Z
    .locals 2
    .param p1, "dfsOn"    # Z

    .prologue
    .line 2323
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2324
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2325
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiNative;->setDfsFlagNative(IZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 2327
    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    .line 2323
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setExternalSim(Z)Z
    .locals 4
    .param p1, "external"    # Z

    .prologue
    .line 1052
    if-eqz p1, :cond_0

    const-string/jumbo v0, "1"

    .line 1053
    .local v0, "value":Ljava/lang/String;
    :goto_0
    const-string/jumbo v1, "WifiNative-HAL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Setting external_sim to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SET external_sim "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 1052
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "0"

    .restart local v0    # "value":Ljava/lang/String;
    goto :goto_0
.end method

.method public setHotlist(Landroid/net/wifi/WifiScanner$HotlistSettings;Lcom/android/server/wifi/WifiNative$HotlistEventHandler;)Z
    .locals 4
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$HotlistSettings;
    .param p2, "eventHandler"    # Lcom/android/server/wifi/WifiNative$HotlistEventHandler;

    .prologue
    const/4 v3, 0x0

    .line 2030
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2031
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2032
    sget v0, Lcom/android/server/wifi/WifiNative;->sHotlistCmdId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 2033
    return v3

    .line 2035
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getNewCmdIdLocked()I

    move-result v0

    sput v0, Lcom/android/server/wifi/WifiNative;->sHotlistCmdId:I

    .line 2038
    sput-object p2, Lcom/android/server/wifi/WifiNative;->sHotlistEventHandler:Lcom/android/server/wifi/WifiNative$HotlistEventHandler;

    .line 2039
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    sget v2, Lcom/android/server/wifi/WifiNative;->sHotlistCmdId:I

    invoke-static {v0, v2, p1}, Lcom/android/server/wifi/WifiNative;->setHotlistNative(IILandroid/net/wifi/WifiScanner$HotlistSettings;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2040
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wifi/WifiNative;->sHotlistEventHandler:Lcom/android/server/wifi/WifiNative$HotlistEventHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 2041
    return v3

    .line 2044
    :cond_1
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    :cond_2
    monitor-exit v1

    .line 2046
    return v3

    .line 2030
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setHs20(Z)V
    .locals 1
    .param p1, "hs20"    # Z

    .prologue
    .line 962
    if-eqz p1, :cond_0

    .line 963
    const-string/jumbo v0, "SET HS20 1"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    .line 961
    :goto_0
    return-void

    .line 965
    :cond_0
    const-string/jumbo v0, "SET HS20 0"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public setInterfaceUp(Z)Z
    .locals 2
    .param p1, "up"    # Z

    .prologue
    .line 2334
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2335
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2336
    invoke-static {p1}, Lcom/android/server/wifi/WifiNative;->setInterfaceUpNative(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 2338
    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    .line 2334
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setLoggingEventHandler(Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;)Z
    .locals 5
    .param p1, "handler"    # Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;

    .prologue
    const/4 v4, 0x0

    .line 2483
    sget-object v2, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2484
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2485
    sget v0, Lcom/android/server/wifi/WifiNative;->sLogCmdId:I

    .line 2486
    .local v0, "oldId":I
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getNewCmdIdLocked()I

    move-result v1

    sput v1, Lcom/android/server/wifi/WifiNative;->sLogCmdId:I

    .line 2487
    sget v1, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    sget v3, Lcom/android/server/wifi/WifiNative;->sLogCmdId:I

    invoke-static {v1, v3}, Lcom/android/server/wifi/WifiNative;->setLoggingEventHandlerNative(II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2488
    sput v0, Lcom/android/server/wifi/WifiNative;->sLogCmdId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 2489
    return v4

    .line 2491
    :cond_0
    :try_start_1
    sput-object p1, Lcom/android/server/wifi/WifiNative;->sWifiLoggerEventHandler:Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2492
    const/4 v1, 0x1

    monitor-exit v2

    return v1

    .end local v0    # "oldId":I
    :cond_1
    monitor-exit v2

    .line 2494
    return v4

    .line 2483
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setManufacturer(Ljava/lang/String;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SET manufacturer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setMiracastMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 1503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DRIVER MIRACAST "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    .line 1501
    return-void
.end method

.method public setModelName(Ljava/lang/String;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SET model_name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setModelNumber(Ljava/lang/String;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SET model_number "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkExtra(ILjava/lang/String;Ljava/util/Map;)Z
    .locals 7
    .param p1, "netId"    # I
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p3, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 414
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 422
    .local v2, "encoded":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    return v3

    .line 418
    .end local v2    # "encoded":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 419
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v3, "WifiNative-HAL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to serialize networkExtra: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    return v6

    .line 415
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 416
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "WifiNative-HAL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to serialize networkExtra: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    return v6
.end method

.method public setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "netId"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 426
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 427
    :cond_1
    const-string/jumbo v0, "psk"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 428
    const-string/jumbo v0, "password"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 427
    if-eqz v0, :cond_3

    .line 429
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SET_NETWORK "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommandWithoutLogging(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 431
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SET_NETWORK "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setP2pDisable()V
    .locals 1

    .prologue
    .line 910
    const-string/jumbo v0, "SET p2p_disabled 1"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    .line 909
    return-void
.end method

.method public setP2pGroupIdle(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "time"    # I

    .prologue
    .line 1124
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1125
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IFNAME="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " SET p2p_group_idle "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommandNative(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 1124
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setP2pPowerSave(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 1138
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1139
    if-eqz p2, :cond_0

    .line 1140
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IFNAME="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " P2P_SET ps 1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommandNative(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 1142
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IFNAME="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " P2P_SET ps 0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommandNative(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 1138
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setP2pSsidPostfix(Ljava/lang/String;)Z
    .locals 2
    .param p1, "postfix"    # Ljava/lang/String;

    .prologue
    .line 1120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SET p2p_ssid_postfix "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setPersistentReconnect(Z)Z
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1087
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 1088
    .local v0, "value":I
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SET persistent_reconnect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 1087
    .end local v0    # "value":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "value":I
    goto :goto_0
.end method

.method public setPnoList(Lcom/android/server/wifi/WifiNative$PnoSettings;Lcom/android/server/wifi/WifiNative$PnoEventHandler;)Z
    .locals 3
    .param p1, "settings"    # Lcom/android/server/wifi/WifiNative$PnoSettings;
    .param p2, "eventHandler"    # Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    .prologue
    .line 2916
    const-string/jumbo v0, "WifiNative-HAL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPnoList cmd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/wifi/WifiNative;->sPnoCmdId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2918
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2919
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2920
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getNewCmdIdLocked()I

    move-result v0

    sput v0, Lcom/android/server/wifi/WifiNative;->sPnoCmdId:I

    .line 2921
    sput-object p2, Lcom/android/server/wifi/WifiNative;->sPnoEventHandler:Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    .line 2922
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    sget v2, Lcom/android/server/wifi/WifiNative;->sPnoCmdId:I

    invoke-static {v0, v2, p1}, Lcom/android/server/wifi/WifiNative;->setPnoListNative(IILcom/android/server/wifi/WifiNative$PnoSettings;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 2923
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    .line 2926
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    sput-object v0, Lcom/android/server/wifi/WifiNative;->sPnoEventHandler:Lcom/android/server/wifi/WifiNative$PnoEventHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2927
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    .line 2918
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setPnoList([Lcom/android/server/wifi/WifiNative$PnoNetwork;Lcom/android/server/wifi/WifiNative$PnoEventHandler;)Z
    .locals 2
    .param p1, "list"    # [Lcom/android/server/wifi/WifiNative$PnoNetwork;
    .param p2, "eventHandler"    # Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    .prologue
    .line 2938
    new-instance v0, Lcom/android/server/wifi/WifiNative$PnoSettings;

    invoke-direct {v0}, Lcom/android/server/wifi/WifiNative$PnoSettings;-><init>()V

    .line 2939
    .local v0, "settings":Lcom/android/server/wifi/WifiNative$PnoSettings;
    iput-object p1, v0, Lcom/android/server/wifi/WifiNative$PnoSettings;->networkList:[Lcom/android/server/wifi/WifiNative$PnoNetwork;

    .line 2940
    invoke-virtual {p0, v0, p2}, Lcom/android/server/wifi/WifiNative;->setPnoList(Lcom/android/server/wifi/WifiNative$PnoSettings;Lcom/android/server/wifi/WifiNative$PnoEventHandler;)Z

    move-result v1

    return v1
.end method

.method public setPnoScan(Z)Z
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 945
    if-eqz p1, :cond_0

    const-string/jumbo v0, "SET pno 1"

    .line 946
    .local v0, "cmd":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 945
    .end local v0    # "cmd":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "SET pno 0"

    goto :goto_0
.end method

.method public setPowerSave(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1130
    if-eqz p1, :cond_0

    .line 1131
    const-string/jumbo v0, "SET ps 1"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    .line 1129
    :goto_0
    return-void

    .line 1133
    :cond_0
    const-string/jumbo v0, "SET ps 0"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public setScanInterval(I)V
    .locals 2
    .param p1, "scanInterval"    # I

    .prologue
    .line 958
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SCAN_INTERVAL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    .line 957
    return-void
.end method

.method public setScanningMacOui([B)Z
    .locals 2
    .param p1, "oui"    # [B

    .prologue
    .line 2288
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2289
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2290
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiNative;->setScanningMacOuiNative(I[B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 2292
    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    .line 2288
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setSerialNumber(Ljava/lang/String;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SET serial_number "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setSupplicantLogLevel(Ljava/lang/String;)V
    .locals 2
    .param p1, "level"    # Ljava/lang/String;

    .prologue
    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "LOG_LEVEL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 334
    return-void
.end method

.method public setSuspendOptimizations(Z)Z
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 926
    if-eqz p1, :cond_0

    .line 927
    const-string/jumbo v0, "DRIVER SETSUSPENDMODE 1"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 929
    :cond_0
    const-string/jumbo v0, "DRIVER SETSUSPENDMODE 0"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setWfdDeviceInfo(Ljava/lang/String;)Z
    .locals 2
    .param p1, "hex"    # Ljava/lang/String;

    .prologue
    .line 1152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "WFD_SUBELEM_SET 0 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setWfdEnable(Z)Z
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 1148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SET wifi_display "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_0

    const-string/jumbo v0, "1"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0
.end method

.method public setWifiLinkLayerStats(Ljava/lang/String;I)V
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "enable"    # I

    .prologue
    .line 2157
    if-nez p1, :cond_0

    return-void

    .line 2158
    :cond_0
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2159
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2160
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    invoke-static {v0, p2}, Lcom/android/server/wifi/WifiNative;->setWifiLinkLayerStatsNative(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 2156
    return-void

    .line 2158
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public signalPoll()Ljava/lang/String;
    .locals 1

    .prologue
    .line 987
    const-string/jumbo v0, "SIGNAL_POLL"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommandWithoutLogging(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public simAuthFailedResponse(I)Z
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 1064
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CTRL-RSP-SIM-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":GSM-FAIL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public simAuthResponse(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "id"    # I
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "response"    # Ljava/lang/String;

    .prologue
    .line 1059
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CTRL-RSP-SIM-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public simIdentityResponse(ILjava/lang/String;)Z
    .locals 2
    .param p1, "id"    # I
    .param p2, "response"    # Ljava/lang/String;

    .prologue
    .line 1073
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CTRL-RSP-IDENTITY-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public startDriver()Z
    .locals 1

    .prologue
    .line 778
    const-string/jumbo v0, "DRIVER START"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public startFilteringMulticastV4Packets()Z
    .locals 1

    .prologue
    .line 811
    const-string/jumbo v0, "DRIVER RXFILTER-STOP"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 812
    const-string/jumbo v0, "DRIVER RXFILTER-REMOVE 2"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    .line 811
    if-eqz v0, :cond_0

    .line 813
    const-string/jumbo v0, "DRIVER RXFILTER-START"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    .line 811
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startFilteringMulticastV6Packets()Z
    .locals 1

    .prologue
    .line 831
    const-string/jumbo v0, "DRIVER RXFILTER-STOP"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 832
    const-string/jumbo v0, "DRIVER RXFILTER-REMOVE 3"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    .line 831
    if-eqz v0, :cond_0

    .line 833
    const-string/jumbo v0, "DRIVER RXFILTER-START"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    .line 831
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startHal()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1579
    const-string/jumbo v0, "startHal stack: "

    .line 1580
    .local v0, "debugLog":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 1581
    .local v1, "elements":[Ljava/lang/StackTraceElement;
    const/4 v2, 0x2

    .local v2, "i":I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_0

    const/4 v4, 0x7

    if-gt v2, v4, :cond_0

    .line 1582
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1581
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1585
    :cond_0
    sget-object v4, Lcom/android/server/wifi/WifiNative;->sLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v4, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1587
    sget-object v5, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1588
    :try_start_0
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->startHalNative()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1589
    iget-object v4, p0, Lcom/android/server/wifi/WifiNative;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiNative;->queryInterfaceIndex(Ljava/lang/String;)I

    move-result v3

    .line 1590
    .local v3, "wlan0Index":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 1591
    sget-boolean v4, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/server/wifi/WifiNative;->sLocalLog:Landroid/util/LocalLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Could not find interface with name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiNative;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v5

    .line 1592
    return v8

    .line 1594
    :cond_2
    :try_start_1
    sput v3, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    .line 1595
    new-instance v4, Lcom/android/server/wifi/WifiNative$MonitorThread;

    const/4 v6, 0x0

    invoke-direct {v4, v6}, Lcom/android/server/wifi/WifiNative$MonitorThread;-><init>(Lcom/android/server/wifi/WifiNative$MonitorThread;)V

    sput-object v4, Lcom/android/server/wifi/WifiNative;->sThread:Lcom/android/server/wifi/WifiNative$MonitorThread;

    .line 1596
    sget-object v4, Lcom/android/server/wifi/WifiNative;->sThread:Lcom/android/server/wifi/WifiNative$MonitorThread;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiNative$MonitorThread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1597
    const/4 v4, 0x1

    monitor-exit v5

    return v4

    .line 1599
    .end local v3    # "wlan0Index":I
    :cond_3
    :try_start_2
    sget-boolean v4, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v4, :cond_4

    sget-object v4, Lcom/android/server/wifi/WifiNative;->sLocalLog:Landroid/util/LocalLog;

    const-string/jumbo v6, "Could not start hal"

    invoke-virtual {v4, v6}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1600
    :cond_4
    const-string/jumbo v4, "WifiNative-HAL"

    const-string/jumbo v6, "Could not start hal"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v5

    .line 1601
    return v8

    .line 1587
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public startLoggingRingBuffer(IIIILjava/lang/String;)Z
    .locals 7
    .param p1, "verboseLevel"    # I
    .param p2, "flags"    # I
    .param p3, "maxInterval"    # I
    .param p4, "minDataSize"    # I
    .param p5, "ringName"    # Ljava/lang/String;

    .prologue
    .line 2503
    sget-object v6, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v6

    .line 2504
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2505
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/wifi/WifiNative;->startLoggingRingBufferNative(IIIIILjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v6

    return v0

    .line 2508
    :cond_0
    const/4 v0, 0x0

    monitor-exit v6

    return v0

    .line 2503
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public startPktFateMonitoring()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2853
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2854
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2855
    sget v2, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    invoke-static {v2}, Lcom/android/server/wifi/WifiNative;->startPktFateMonitoringNative(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    monitor-exit v1

    return v0

    :cond_1
    monitor-exit v1

    .line 2857
    return v0

    .line 2853
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public startRssiMonitoring(BBLcom/android/server/wifi/WifiNative$WifiRssiEventHandler;)I
    .locals 5
    .param p1, "maxRssi"    # B
    .param p2, "minRssi"    # B
    .param p3, "rssiEventHandler"    # Lcom/android/server/wifi/WifiNative$WifiRssiEventHandler;

    .prologue
    .line 3068
    const-string/jumbo v1, "WifiNative-HAL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startRssiMonitoring: maxRssi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " minRssi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3069
    sget-object v2, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3070
    :try_start_0
    sput-object p3, Lcom/android/server/wifi/WifiNative;->sWifiRssiEventHandler:Lcom/android/server/wifi/WifiNative$WifiRssiEventHandler;

    .line 3071
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3072
    sget v1, Lcom/android/server/wifi/WifiNative;->sRssiMonitorCmdId:I

    if-eqz v1, :cond_0

    .line 3073
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->stopRssiMonitoring()I

    .line 3076
    :cond_0
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getNewCmdIdLocked()I

    move-result v1

    sput v1, Lcom/android/server/wifi/WifiNative;->sRssiMonitorCmdId:I

    .line 3077
    const-string/jumbo v1, "WifiNative-HAL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sRssiMonitorCmdId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/server/wifi/WifiNative;->sRssiMonitorCmdId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3078
    sget v1, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    sget v3, Lcom/android/server/wifi/WifiNative;->sRssiMonitorCmdId:I

    invoke-static {v1, v3, p1, p2}, Lcom/android/server/wifi/WifiNative;->startRssiMonitoringNative(IIBB)I

    move-result v0

    .line 3080
    .local v0, "ret":I
    if-eqz v0, :cond_1

    .line 3081
    const/4 v1, 0x0

    sput v1, Lcom/android/server/wifi/WifiNative;->sRssiMonitorCmdId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v2

    .line 3083
    return v0

    .line 3085
    .end local v0    # "ret":I
    :cond_2
    const/4 v1, -0x1

    monitor-exit v2

    return v1

    .line 3069
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public startScan(Lcom/android/server/wifi/WifiNative$ScanSettings;Lcom/android/server/wifi/WifiNative$ScanEventHandler;)Z
    .locals 4
    .param p1, "settings"    # Lcom/android/server/wifi/WifiNative$ScanSettings;
    .param p2, "eventHandler"    # Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    .prologue
    const/4 v3, 0x0

    .line 1928
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1929
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1930
    sget v0, Lcom/android/server/wifi/WifiNative;->sScanCmdId:I

    if-eqz v0, :cond_1

    .line 1931
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->stopScan()V

    .line 1936
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getNewCmdIdLocked()I

    move-result v0

    sput v0, Lcom/android/server/wifi/WifiNative;->sScanCmdId:I

    .line 1938
    sput-object p1, Lcom/android/server/wifi/WifiNative;->sScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    .line 1939
    sput-object p2, Lcom/android/server/wifi/WifiNative;->sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    .line 1941
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    sget v2, Lcom/android/server/wifi/WifiNative;->sScanCmdId:I

    invoke-static {v0, v2, p1}, Lcom/android/server/wifi/WifiNative;->startScanNative(IILcom/android/server/wifi/WifiNative$ScanSettings;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1942
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wifi/WifiNative;->sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    .line 1943
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wifi/WifiNative;->sScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    .line 1944
    const/4 v0, 0x0

    sput v0, Lcom/android/server/wifi/WifiNative;->sScanCmdId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1945
    return v3

    .line 1932
    :cond_1
    :try_start_1
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/wifi/WifiNative;->sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1948
    :cond_2
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    :cond_3
    monitor-exit v1

    .line 1950
    return v3

    .line 1928
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public startSendingOffloadedPacket(ILcom/android/server/connectivity/KeepalivePacketData;I)I
    .locals 10
    .param p1, "slot"    # I
    .param p2, "keepAlivePacket"    # Lcom/android/server/connectivity/KeepalivePacketData;
    .param p3, "period"    # I

    .prologue
    const/4 v4, 0x6

    .line 3015
    const-string/jumbo v0, "WifiNative-HAL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startSendingOffloadedPacket slot="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " period="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3017
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 3018
    .local v8, "macAddrStr":[Ljava/lang/String;
    new-array v2, v4, [B

    .line 3019
    .local v2, "srcMac":[B
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v4, :cond_0

    .line 3020
    aget-object v0, v8, v7

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 3021
    .local v6, "hexVal":Ljava/lang/Integer;
    invoke-virtual {v6}, Ljava/lang/Integer;->byteValue()B

    move-result v0

    aput-byte v0, v2, v7

    .line 3019
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 3023
    .end local v6    # "hexVal":Ljava/lang/Integer;
    :cond_0
    sget-object v9, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v9

    .line 3024
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3025
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    .line 3026
    iget-object v3, p2, Lcom/android/server/connectivity/KeepalivePacketData;->dstMac:[B

    iget-object v4, p2, Lcom/android/server/connectivity/KeepalivePacketData;->data:[B

    move v1, p1

    move v5, p3

    .line 3025
    invoke-static/range {v0 .. v5}, Lcom/android/server/wifi/WifiNative;->startSendingOffloadedPacketNative(II[B[B[BI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v9

    return v0

    .line 3028
    :cond_1
    const/4 v0, -0x1

    monitor-exit v9

    return v0

    .line 3023
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method public startSupplicant(Z)Z
    .locals 2
    .param p1, "p2pSupported"    # Z

    .prologue
    .line 207
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 208
    :try_start_0
    invoke-static {p1}, Lcom/android/server/wifi/WifiNative;->startSupplicantNative(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    .line 207
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public startTdls(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "macAddr"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 970
    if-eqz p2, :cond_0

    .line 971
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 972
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "TDLS_DISCOVER "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    .line 973
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "TDLS_SETUP "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 969
    :goto_0
    return-void

    .line 971
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 976
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "TDLS_TEARDOWN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public startWpsPbc(Ljava/lang/String;)Z
    .locals 2
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    .line 1003
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1004
    const-string/jumbo v0, "WPS_PBC"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1006
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "WPS_PBC "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public startWpsPbc(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;

    .prologue
    .line 1011
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1012
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1013
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IFNAME="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " WPS_PBC"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommandNative(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 1015
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IFNAME="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " WPS_PBC "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommandNative(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 1011
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public startWpsPinDisplay(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    .line 1034
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1035
    const-string/jumbo v0, "WPS_PIN any"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1037
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "WPS_PIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public startWpsPinDisplay(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;

    .prologue
    .line 1042
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1043
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1044
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IFNAME="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " WPS_PIN any"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommandNative(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1046
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IFNAME="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " WPS_PIN "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommandNative(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1042
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public startWpsPinKeypad(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 1021
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1022
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "WPS_PIN any "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public startWpsPinKeypad(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;

    .prologue
    .line 1026
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1027
    :cond_0
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1028
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IFNAME="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " WPS_PIN any "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommandNative(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 1027
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public startWpsRegistrar(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "bssid"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;

    .prologue
    .line 1078
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1079
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "WPS_REG "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public status()Ljava/lang/String;
    .locals 1

    .prologue
    .line 548
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiNative;->status(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public status(Z)Ljava/lang/String;
    .locals 1
    .param p1, "noEvents"    # Z

    .prologue
    .line 552
    if-eqz p1, :cond_0

    .line 553
    const-string/jumbo v0, "STATUS-NO_EVENTS"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 555
    :cond_0
    const-string/jumbo v0, "STATUS"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public stopDriver()Z
    .locals 1

    .prologue
    .line 782
    const-string/jumbo v0, "DRIVER STOP"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public stopFilteringMulticastV4Packets()Z
    .locals 1

    .prologue
    .line 821
    const-string/jumbo v0, "DRIVER RXFILTER-STOP"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 822
    const-string/jumbo v0, "DRIVER RXFILTER-ADD 2"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    .line 821
    if-eqz v0, :cond_0

    .line 823
    const-string/jumbo v0, "DRIVER RXFILTER-START"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    .line 821
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stopFilteringMulticastV6Packets()Z
    .locals 1

    .prologue
    .line 841
    const-string/jumbo v0, "DRIVER RXFILTER-STOP"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 842
    const-string/jumbo v0, "DRIVER RXFILTER-ADD 3"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    .line 841
    if-eqz v0, :cond_0

    .line 843
    const-string/jumbo v0, "DRIVER RXFILTER-START"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    .line 841
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stopHal()V
    .locals 6

    .prologue
    .line 1607
    sget-object v2, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1608
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1609
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->stopHalNative()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1611
    :try_start_1
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sThread:Lcom/android/server/wifi/WifiNative$MonitorThread;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v4, v5}, Lcom/android/server/wifi/WifiNative$MonitorThread;->join(J)V

    .line 1612
    const-string/jumbo v1, "WifiNative-HAL"

    const-string/jumbo v3, "HAL event thread stopped successfully"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1616
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    sput-object v1, Lcom/android/server/wifi/WifiNative;->sThread:Lcom/android/server/wifi/WifiNative$MonitorThread;

    .line 1617
    const-wide/16 v4, 0x0

    sput-wide v4, Lcom/android/server/wifi/WifiNative;->sWifiHalHandle:J

    .line 1618
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/wifi/WifiNative;->sWifiIfaceHandles:[J

    .line 1619
    const/4 v1, -0x1

    sput v1, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    monitor-exit v2

    .line 1606
    return-void

    .line 1613
    :catch_0
    move-exception v0

    .line 1614
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string/jumbo v1, "WifiNative-HAL"

    const-string/jumbo v3, "Could not stop HAL cleanly"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1607
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public stopRssiMonitoring()I
    .locals 4

    .prologue
    .line 3093
    const-string/jumbo v1, "WifiNative-HAL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopRssiMonitoring, cmdId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/wifi/WifiNative;->sRssiMonitorCmdId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3094
    sget-object v2, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3095
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3096
    const/4 v0, 0x0

    .line 3097
    .local v0, "ret":I
    sget v1, Lcom/android/server/wifi/WifiNative;->sRssiMonitorCmdId:I

    if-eqz v1, :cond_0

    .line 3098
    sget v1, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    sget v3, Lcom/android/server/wifi/WifiNative;->sRssiMonitorCmdId:I

    invoke-static {v1, v3}, Lcom/android/server/wifi/WifiNative;->stopRssiMonitoringNative(II)I

    move-result v0

    .line 3100
    :cond_0
    const/4 v1, 0x0

    sput v1, Lcom/android/server/wifi/WifiNative;->sRssiMonitorCmdId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 3101
    return v0

    .line 3103
    .end local v0    # "ret":I
    :cond_1
    const/4 v1, -0x1

    monitor-exit v2

    return v1

    .line 3094
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public stopScan()V
    .locals 3

    .prologue
    .line 1956
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1957
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1958
    sget v0, Lcom/android/server/wifi/WifiNative;->sScanCmdId:I

    if-eqz v0, :cond_0

    .line 1959
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    sget v2, Lcom/android/server/wifi/WifiNative;->sScanCmdId:I

    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiNative;->stopScanNative(II)Z

    .line 1961
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wifi/WifiNative;->sScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    .line 1962
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wifi/WifiNative;->sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    .line 1963
    const/4 v0, 0x0

    sput v0, Lcom/android/server/wifi/WifiNative;->sScanCmdId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 1955
    return-void

    .line 1956
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public stopSendingOffloadedPacket(I)I
    .locals 3
    .param p1, "slot"    # I

    .prologue
    .line 3037
    const-string/jumbo v0, "WifiNative-HAL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopSendingOffloadedPacket "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3038
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3039
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3040
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiNative;->stopSendingOffloadedPacketNative(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 3042
    :cond_0
    const/4 v0, -0x1

    monitor-exit v1

    return v0

    .line 3038
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public stopSupplicant()Z
    .locals 1

    .prologue
    .line 396
    const-string/jumbo v0, "TERMINATE"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public trackSignificantWifiChange(Landroid/net/wifi/WifiScanner$WifiChangeSettings;Lcom/android/server/wifi/WifiNative$SignificantWifiChangeEventHandler;)Z
    .locals 4
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$WifiChangeSettings;
    .param p2, "handler"    # Lcom/android/server/wifi/WifiNative$SignificantWifiChangeEventHandler;

    .prologue
    const/4 v3, 0x0

    .line 2098
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2099
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2100
    sget v0, Lcom/android/server/wifi/WifiNative;->sSignificantWifiChangeCmdId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 2101
    return v3

    .line 2103
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getNewCmdIdLocked()I

    move-result v0

    sput v0, Lcom/android/server/wifi/WifiNative;->sSignificantWifiChangeCmdId:I

    .line 2106
    sput-object p2, Lcom/android/server/wifi/WifiNative;->sSignificantWifiChangeHandler:Lcom/android/server/wifi/WifiNative$SignificantWifiChangeEventHandler;

    .line 2107
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    sget v2, Lcom/android/server/wifi/WifiNative;->sSignificantWifiChangeCmdId:I

    invoke-static {v0, v2, p1}, Lcom/android/server/wifi/WifiNative;->trackSignificantWifiChangeNative(IILandroid/net/wifi/WifiScanner$WifiChangeSettings;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2109
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wifi/WifiNative;->sSignificantWifiChangeHandler:Lcom/android/server/wifi/WifiNative$SignificantWifiChangeEventHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 2110
    return v3

    .line 2113
    :cond_1
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    :cond_2
    monitor-exit v1

    .line 2115
    return v3

    .line 2098
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public umtsAuthFailedResponse(I)Z
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 1069
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CTRL-RSP-SIM-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":UMTS-FAIL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public unloadDriver()Z
    .locals 2

    .prologue
    .line 200
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 201
    :try_start_0
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->unloadDriverNative()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    .line 200
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public untrackSignificantWifiChange()V
    .locals 3

    .prologue
    .line 2122
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2123
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2124
    sget v0, Lcom/android/server/wifi/WifiNative;->sSignificantWifiChangeCmdId:I

    if-eqz v0, :cond_0

    .line 2125
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    sget v2, Lcom/android/server/wifi/WifiNative;->sSignificantWifiChangeCmdId:I

    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiNative;->untrackSignificantWifiChangeNative(II)Z

    .line 2126
    const/4 v0, 0x0

    sput v0, Lcom/android/server/wifi/WifiNative;->sSignificantWifiChangeCmdId:I

    .line 2127
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wifi/WifiNative;->sSignificantWifiChangeHandler:Lcom/android/server/wifi/WifiNative$SignificantWifiChangeEventHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 2121
    return-void

    .line 2122
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public waitForEvent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->waitForEventNative()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
