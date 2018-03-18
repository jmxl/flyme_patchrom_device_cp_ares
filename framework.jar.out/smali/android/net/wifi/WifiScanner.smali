.class public Landroid/net/wifi/WifiScanner;
.super Ljava/lang/Object;
.source "WifiScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiScanner$ActionListener;,
        Landroid/net/wifi/WifiScanner$BssidInfo;,
        Landroid/net/wifi/WifiScanner$BssidListener;,
        Landroid/net/wifi/WifiScanner$ChannelSpec;,
        Landroid/net/wifi/WifiScanner$HotlistSettings;,
        Landroid/net/wifi/WifiScanner$OperationResult;,
        Landroid/net/wifi/WifiScanner$ParcelableScanData;,
        Landroid/net/wifi/WifiScanner$ParcelableScanResults;,
        Landroid/net/wifi/WifiScanner$PnoScanListener;,
        Landroid/net/wifi/WifiScanner$PnoSettings;,
        Landroid/net/wifi/WifiScanner$ScanData;,
        Landroid/net/wifi/WifiScanner$ScanListener;,
        Landroid/net/wifi/WifiScanner$ScanSettings;,
        Landroid/net/wifi/WifiScanner$ServiceHandler;,
        Landroid/net/wifi/WifiScanner$WifiChangeListener;,
        Landroid/net/wifi/WifiScanner$WifiChangeSettings;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x27000

.field public static final CMD_AP_FOUND:I = 0x27009

.field public static final CMD_AP_LOST:I = 0x2700a

.field public static final CMD_CONFIGURE_WIFI_CHANGE:I = 0x2700d

.field public static final CMD_DEREGISTER_SCAN_LISTENER:I = 0x2701c

.field public static final CMD_FULL_SCAN_RESULT:I = 0x27014

.field public static final CMD_GET_SCAN_RESULTS:I = 0x27004

.field public static final CMD_OP_FAILED:I = 0x27012

.field public static final CMD_OP_SUCCEEDED:I = 0x27011

.field public static final CMD_PERIOD_CHANGED:I = 0x27013

.field public static final CMD_PNO_NETWORK_FOUND:I = 0x2701a

.field public static final CMD_REGISTER_SCAN_LISTENER:I = 0x2701b

.field public static final CMD_RESET_HOTLIST:I = 0x27007

.field public static final CMD_SCAN:I = 0x27000

.field public static final CMD_SCAN_RESULT:I = 0x27005

.field public static final CMD_SET_HOTLIST:I = 0x27006

.field public static final CMD_SINGLE_SCAN_COMPLETED:I = 0x27017

.field public static final CMD_START_BACKGROUND_SCAN:I = 0x27002

.field public static final CMD_START_PNO_SCAN:I = 0x27018

.field public static final CMD_START_SINGLE_SCAN:I = 0x27015

.field public static final CMD_START_TRACKING_CHANGE:I = 0x2700b

.field public static final CMD_STOP_BACKGROUND_SCAN:I = 0x27003

.field public static final CMD_STOP_PNO_SCAN:I = 0x27019

.field public static final CMD_STOP_SINGLE_SCAN:I = 0x27016

.field public static final CMD_STOP_TRACKING_CHANGE:I = 0x2700c

.field public static final CMD_WIFI_CHANGES_STABILIZED:I = 0x27010

.field public static final CMD_WIFI_CHANGE_DETECTED:I = 0x2700f

.field private static final DBG:Z = false

.field public static final GET_AVAILABLE_CHANNELS_EXTRA:Ljava/lang/String; = "Channels"

.field private static final INVALID_KEY:I = 0x0

.field public static final MAX_SCAN_PERIOD_MS:I = 0xfa000

.field public static final MIN_SCAN_PERIOD_MS:I = 0x3e8

.field public static final PNO_PARAMS_PNO_SETTINGS_KEY:Ljava/lang/String; = "PnoSettings"

.field public static final PNO_PARAMS_SCAN_SETTINGS_KEY:Ljava/lang/String; = "ScanSettings"

.field public static final REASON_DUPLICATE_REQEUST:I = -0x5

.field public static final REASON_INVALID_LISTENER:I = -0x2

.field public static final REASON_INVALID_REQUEST:I = -0x3

.field public static final REASON_NOT_AUTHORIZED:I = -0x4

.field public static final REASON_SUCCEEDED:I = 0x0

.field public static final REASON_UNSPECIFIED:I = -0x1

.field public static final REPORT_EVENT_AFTER_BUFFER_FULL:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final REPORT_EVENT_AFTER_EACH_SCAN:I = 0x1

.field public static final REPORT_EVENT_FULL_SCAN_RESULT:I = 0x2

.field public static final REPORT_EVENT_NO_BATCH:I = 0x4

.field public static final SCAN_PARAMS_SCAN_SETTINGS_KEY:Ljava/lang/String; = "ScanSettings"

.field public static final SCAN_PARAMS_WORK_SOURCE_KEY:Ljava/lang/String; = "WorkSource"

.field private static final TAG:Ljava/lang/String; = "WifiScanner"

.field private static final WIFI_AUTO_CONNECT_TYPE_AUTO:I = 0x0

.field public static final WIFI_BAND_24_GHZ:I = 0x1

.field public static final WIFI_BAND_5_GHZ:I = 0x2

.field public static final WIFI_BAND_5_GHZ_DFS_ONLY:I = 0x4

.field public static final WIFI_BAND_5_GHZ_WITH_DFS:I = 0x6

.field public static final WIFI_BAND_BOTH:I = 0x3

.field public static final WIFI_BAND_BOTH_WITH_DFS:I = 0x7

.field public static final WIFI_BAND_UNSPECIFIED:I


# instance fields
.field private mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

.field private mContext:Landroid/content/Context;

.field private final mInternalHandler:Landroid/os/Handler;

.field private mListenerKey:I

.field private final mListenerMap:Landroid/util/SparseArray;

.field private final mListenerMapLock:Ljava/lang/Object;

.field private mService:Landroid/net/wifi/IWifiScanner;


# direct methods
.method static synthetic -set0(Landroid/net/wifi/WifiScanner;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method static synthetic -wrap0(Landroid/net/wifi/WifiScanner;I)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiScanner;->getListener(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/net/wifi/WifiScanner;I)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiScanner;->removeListener(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/IWifiScanner;Landroid/os/Looper;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/net/wifi/IWifiScanner;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1199
    const/4 v2, 0x1

    iput v2, p0, Landroid/net/wifi/WifiScanner;->mListenerKey:I

    .line 1201
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Landroid/net/wifi/WifiScanner;->mListenerMap:Landroid/util/SparseArray;

    .line 1202
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/net/wifi/WifiScanner;->mListenerMapLock:Ljava/lang/Object;

    .line 1218
    iput-object p1, p0, Landroid/net/wifi/WifiScanner;->mContext:Landroid/content/Context;

    .line 1219
    iput-object p2, p0, Landroid/net/wifi/WifiScanner;->mService:Landroid/net/wifi/IWifiScanner;

    .line 1221
    const/4 v1, 0x0

    .line 1223
    .local v1, "messenger":Landroid/os/Messenger;
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiScanner;->mService:Landroid/net/wifi/IWifiScanner;

    invoke-interface {v2}, Landroid/net/wifi/IWifiScanner;->getMessenger()Landroid/os/Messenger;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1228
    .local v1, "messenger":Landroid/os/Messenger;
    if-nez v1, :cond_0

    .line 1229
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "getMessenger() returned null!  This is invalid."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1224
    .local v1, "messenger":Landroid/os/Messenger;
    :catch_0
    move-exception v0

    .line 1225
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1232
    .end local v0    # "e":Landroid/os/RemoteException;
    .local v1, "messenger":Landroid/os/Messenger;
    :cond_0
    new-instance v2, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v2}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v2, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 1234
    new-instance v2, Landroid/net/wifi/WifiScanner$ServiceHandler;

    invoke-direct {v2, p0, p3}, Landroid/net/wifi/WifiScanner$ServiceHandler;-><init>(Landroid/net/wifi/WifiScanner;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/net/wifi/WifiScanner;->mInternalHandler:Landroid/os/Handler;

    .line 1235
    iget-object v2, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v3, p0, Landroid/net/wifi/WifiScanner;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/net/wifi/WifiScanner;->mInternalHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/internal/util/AsyncChannel;->connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)I

    .line 1238
    iget-object v2, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v3, 0x11001

    invoke-virtual {v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 1217
    return-void
.end method

.method private addListener(Landroid/net/wifi/WifiScanner$ActionListener;)I
    .locals 9
    .param p1, "listener"    # Landroid/net/wifi/WifiScanner$ActionListener;

    .prologue
    const/4 v8, 0x0

    .line 1250
    iget-object v5, p0, Landroid/net/wifi/WifiScanner;->mListenerMapLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1251
    :try_start_0
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiScanner;->getListenerKey(Ljava/lang/Object;)I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    .line 1255
    .local v1, "keyExists":Z
    :goto_0
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiScanner;->putListener(Ljava/lang/Object;)I

    move-result v0

    .line 1256
    .local v0, "key":I
    if-eqz v1, :cond_1

    .line 1258
    new-instance v3, Landroid/net/wifi/WifiScanner$OperationResult;

    .line 1259
    const-string/jumbo v4, "Outstanding request with same key not stopped yet"

    .line 1258
    const/4 v6, -0x5

    invoke-direct {v3, v6, v4}, Landroid/net/wifi/WifiScanner$OperationResult;-><init>(ILjava/lang/String;)V

    .line 1260
    .local v3, "operationResult":Landroid/net/wifi/WifiScanner$OperationResult;
    iget-object v4, p0, Landroid/net/wifi/WifiScanner;->mInternalHandler:Landroid/os/Handler;

    const v6, 0x27012

    const/4 v7, 0x0

    invoke-static {v4, v6, v7, v0, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1262
    .local v2, "message":Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 1263
    return v8

    .line 1251
    .end local v0    # "key":I
    .end local v1    # "keyExists":Z
    .end local v2    # "message":Landroid/os/Message;
    .end local v3    # "operationResult":Landroid/net/wifi/WifiScanner$OperationResult;
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "keyExists":Z
    goto :goto_0

    .restart local v0    # "key":I
    :cond_1
    monitor-exit v5

    .line 1265
    return v0

    .line 1250
    .end local v0    # "key":I
    .end local v1    # "keyExists":Z
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private getListener(I)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # I

    .prologue
    .line 1283
    if-nez p1, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 1284
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/WifiScanner;->mListenerMapLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1285
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiScanner;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .local v0, "listener":Ljava/lang/Object;
    monitor-exit v2

    .line 1286
    return-object v0

    .line 1284
    .end local v0    # "listener":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private getListenerKey(Ljava/lang/Object;)I
    .locals 4
    .param p1, "listener"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 1291
    if-nez p1, :cond_0

    return v3

    .line 1292
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/WifiScanner;->mListenerMapLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1293
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiScanner;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1294
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    monitor-exit v2

    .line 1295
    return v3

    .line 1297
    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/net/wifi/WifiScanner;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    .line 1292
    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private putListener(Ljava/lang/Object;)I
    .locals 3
    .param p1, "listener"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 1271
    if-nez p1, :cond_0

    return v1

    .line 1273
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/WifiScanner;->mListenerMapLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1275
    :cond_1
    :try_start_0
    iget v0, p0, Landroid/net/wifi/WifiScanner;->mListenerKey:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/wifi/WifiScanner;->mListenerKey:I

    .line 1276
    .local v0, "key":I
    if-eqz v0, :cond_1

    .line 1277
    iget-object v1, p0, Landroid/net/wifi/WifiScanner;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 1279
    return v0

    .line 1273
    .end local v0    # "key":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private removeListener(Ljava/lang/Object;)I
    .locals 3
    .param p1, "listener"    # Ljava/lang/Object;

    .prologue
    .line 1312
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiScanner;->getListenerKey(Ljava/lang/Object;)I

    move-result v0

    .line 1313
    .local v0, "key":I
    if-nez v0, :cond_0

    .line 1314
    const-string/jumbo v1, "WifiScanner"

    const-string/jumbo v2, "listener cannot be found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    return v0

    .line 1317
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/WifiScanner;->mListenerMapLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1318
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiScanner;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 1319
    return v0

    .line 1317
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private removeListener(I)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # I

    .prologue
    .line 1303
    if-nez p1, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 1304
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/WifiScanner;->mListenerMapLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1305
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiScanner;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 1306
    .local v0, "listener":Ljava/lang/Object;
    iget-object v1, p0, Landroid/net/wifi/WifiScanner;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 1307
    return-object v0

    .line 1304
    .end local v0    # "listener":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private startPnoScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;I)V
    .locals 4
    .param p1, "scanSettings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .param p2, "pnoSettings"    # Landroid/net/wifi/WifiScanner$PnoSettings;
    .param p3, "key"    # I

    .prologue
    .line 811
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 813
    .local v0, "pnoParams":Landroid/os/Bundle;
    const/4 v1, 0x1

    iput-boolean v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->isPnoScan:Z

    .line 814
    const-string/jumbo v1, "ScanSettings"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 815
    const-string/jumbo v1, "PnoSettings"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 816
    iget-object v1, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x27018

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p3, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 809
    return-void
.end method

.method private validateChannel()V
    .locals 2

    .prologue
    .line 1242
    iget-object v0, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1243
    const-string/jumbo v1, "No permission to access and change wifi or a bad initialization"

    .line 1242
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1241
    :cond_0
    return-void
.end method


# virtual methods
.method public configureWifiChange(IIIII[Landroid/net/wifi/WifiScanner$BssidInfo;)V
    .locals 1
    .param p1, "rssiSampleSize"    # I
    .param p2, "lostApSampleSize"    # I
    .param p3, "unchangedSampleSize"    # I
    .param p4, "minApsBreachingThreshold"    # I
    .param p5, "periodInMs"    # I
    .param p6, "bssidInfos"    # [Landroid/net/wifi/WifiScanner$BssidInfo;

    .prologue
    .line 977
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    .line 979
    new-instance v0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;

    invoke-direct {v0}, Landroid/net/wifi/WifiScanner$WifiChangeSettings;-><init>()V

    .line 980
    .local v0, "settings":Landroid/net/wifi/WifiScanner$WifiChangeSettings;
    iput p1, v0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->rssiSampleSize:I

    .line 981
    iput p2, v0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->lostApSampleSize:I

    .line 982
    iput p3, v0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->unchangedSampleSize:I

    .line 983
    iput p4, v0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->minApsBreachingThreshold:I

    .line 984
    iput p5, v0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->periodInMs:I

    .line 985
    iput-object p6, v0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    .line 987
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiScanner;->configureWifiChange(Landroid/net/wifi/WifiScanner$WifiChangeSettings;)V

    .line 975
    return-void
.end method

.method public configureWifiChange(Landroid/net/wifi/WifiScanner$WifiChangeSettings;)V
    .locals 3
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$WifiChangeSettings;

    .prologue
    const/4 v2, 0x0

    .line 1032
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    .line 1033
    iget-object v0, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x2700d

    invoke-virtual {v0, v1, v2, v2, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 1031
    return-void
.end method

.method public deregisterScanListener(Landroid/net/wifi/WifiScanner$ScanListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/net/wifi/WifiScanner$ScanListener;

    .prologue
    const/4 v3, 0x0

    .line 704
    const-string/jumbo v1, "listener cannot be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiScanner;->removeListener(Ljava/lang/Object;)I

    move-result v0

    .line 706
    .local v0, "key":I
    if-nez v0, :cond_0

    return-void

    .line 707
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    .line 708
    iget-object v1, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x2701c

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 703
    return-void
.end method

.method public getAvailableChannels(I)Ljava/util/List;
    .locals 3
    .param p1, "band"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiScanner;->mService:Landroid/net/wifi/IWifiScanner;

    invoke-interface {v2, p1}, Landroid/net/wifi/IWifiScanner;->getAvailableChannels(I)Landroid/os/Bundle;

    move-result-object v0

    .line 107
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "Channels"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 108
    .end local v0    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 109
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    return-object v2
.end method

.method public getScanResults()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 759
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    .line 760
    iget-object v2, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v3, 0x27004

    invoke-virtual {v2, v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(II)Landroid/os/Message;

    move-result-object v0

    .line 761
    .local v0, "reply":Landroid/os/Message;
    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x27011

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public registerScanListener(Landroid/net/wifi/WifiScanner$ScanListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/net/wifi/WifiScanner$ScanListener;

    .prologue
    const/4 v3, 0x0

    .line 690
    const-string/jumbo v1, "listener cannot be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiScanner;->addListener(Landroid/net/wifi/WifiScanner$ActionListener;)I

    move-result v0

    .line 692
    .local v0, "key":I
    if-nez v0, :cond_0

    return-void

    .line 693
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    .line 694
    iget-object v1, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x2701b

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 689
    return-void
.end method

.method public startBackgroundScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanListener;)V
    .locals 1
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .param p2, "listener"    # Landroid/net/wifi/WifiScanner$ScanListener;

    .prologue
    .line 719
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/net/wifi/WifiScanner;->startBackgroundScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanListener;Landroid/os/WorkSource;)V

    .line 718
    return-void
.end method

.method public startBackgroundScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanListener;Landroid/os/WorkSource;)V
    .locals 5
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .param p2, "listener"    # Landroid/net/wifi/WifiScanner$ScanListener;
    .param p3, "workSource"    # Landroid/os/WorkSource;

    .prologue
    const/4 v4, 0x0

    .line 732
    const-string/jumbo v2, "listener cannot be null"

    invoke-static {p2, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    invoke-direct {p0, p2}, Landroid/net/wifi/WifiScanner;->addListener(Landroid/net/wifi/WifiScanner$ActionListener;)I

    move-result v0

    .line 734
    .local v0, "key":I
    if-nez v0, :cond_0

    return-void

    .line 735
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    .line 736
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 737
    .local v1, "scanParams":Landroid/os/Bundle;
    const-string/jumbo v2, "ScanSettings"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 738
    const-string/jumbo v2, "WorkSource"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 739
    iget-object v2, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v3, 0x27002

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 731
    return-void
.end method

.method public startConnectedPnoScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;Landroid/net/wifi/WifiScanner$PnoScanListener;)V
    .locals 2
    .param p1, "scanSettings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .param p2, "pnoSettings"    # Landroid/net/wifi/WifiScanner$PnoSettings;
    .param p3, "listener"    # Landroid/net/wifi/WifiScanner$PnoScanListener;

    .prologue
    .line 831
    const-string/jumbo v1, "listener cannot be null"

    invoke-static {p3, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    const-string/jumbo v1, "pnoSettings cannot be null"

    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    invoke-direct {p0, p3}, Landroid/net/wifi/WifiScanner;->addListener(Landroid/net/wifi/WifiScanner$ActionListener;)I

    move-result v0

    .line 834
    .local v0, "key":I
    if-nez v0, :cond_0

    return-void

    .line 835
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    .line 836
    const/4 v1, 0x1

    iput-boolean v1, p2, Landroid/net/wifi/WifiScanner$PnoSettings;->isConnected:Z

    .line 837
    invoke-direct {p0, p1, p2, v0}, Landroid/net/wifi/WifiScanner;->startPnoScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;I)V

    .line 830
    return-void
.end method

.method public startDisconnectedPnoScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;Landroid/net/wifi/WifiScanner$PnoScanListener;)V
    .locals 5
    .param p1, "scanSettings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .param p2, "pnoSettings"    # Landroid/net/wifi/WifiScanner$PnoSettings;
    .param p3, "listener"    # Landroid/net/wifi/WifiScanner$PnoScanListener;

    .prologue
    const/4 v2, 0x0

    .line 852
    iget-object v3, p0, Landroid/net/wifi/WifiScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 853
    const-string/jumbo v4, "wifi_auto_connect_type"

    .line 852
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x1

    .line 854
    .local v0, "autoConnect":Z
    :goto_0
    if-nez v0, :cond_1

    .line 855
    const-string/jumbo v2, "WifiScanner"

    const-string/jumbo v3, "Shouldn\'t auto connect, so do not exec pno scan"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    return-void

    .end local v0    # "autoConnect":Z
    :cond_0
    move v0, v2

    .line 852
    goto :goto_0

    .line 858
    .restart local v0    # "autoConnect":Z
    :cond_1
    const-string/jumbo v3, "listener cannot be null"

    invoke-static {p3, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 859
    const-string/jumbo v3, "pnoSettings cannot be null"

    invoke-static {p2, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 860
    invoke-direct {p0, p3}, Landroid/net/wifi/WifiScanner;->addListener(Landroid/net/wifi/WifiScanner$ActionListener;)I

    move-result v1

    .line 861
    .local v1, "key":I
    if-nez v1, :cond_2

    return-void

    .line 862
    :cond_2
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    .line 863
    iput-boolean v2, p2, Landroid/net/wifi/WifiScanner$PnoSettings;->isConnected:Z

    .line 864
    invoke-direct {p0, p1, p2, v1}, Landroid/net/wifi/WifiScanner;->startPnoScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;I)V

    .line 851
    return-void
.end method

.method public startScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanListener;)V
    .locals 1
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .param p2, "listener"    # Landroid/net/wifi/WifiScanner$ScanListener;

    .prologue
    .line 773
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/net/wifi/WifiScanner;->startScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanListener;Landroid/os/WorkSource;)V

    .line 772
    return-void
.end method

.method public startScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanListener;Landroid/os/WorkSource;)V
    .locals 5
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .param p2, "listener"    # Landroid/net/wifi/WifiScanner$ScanListener;
    .param p3, "workSource"    # Landroid/os/WorkSource;

    .prologue
    const/4 v4, 0x0

    .line 786
    const-string/jumbo v2, "listener cannot be null"

    invoke-static {p2, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    invoke-direct {p0, p2}, Landroid/net/wifi/WifiScanner;->addListener(Landroid/net/wifi/WifiScanner$ActionListener;)I

    move-result v0

    .line 788
    .local v0, "key":I
    if-nez v0, :cond_0

    return-void

    .line 789
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    .line 790
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 791
    .local v1, "scanParams":Landroid/os/Bundle;
    const-string/jumbo v2, "ScanSettings"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 792
    const-string/jumbo v2, "WorkSource"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 793
    iget-object v2, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v3, 0x27015

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 785
    return-void
.end method

.method public startTrackingBssids([Landroid/net/wifi/WifiScanner$BssidInfo;ILandroid/net/wifi/WifiScanner$BssidListener;)V
    .locals 5
    .param p1, "bssidInfos"    # [Landroid/net/wifi/WifiScanner$BssidInfo;
    .param p2, "apLostThreshold"    # I
    .param p3, "listener"    # Landroid/net/wifi/WifiScanner$BssidListener;

    .prologue
    const/4 v4, 0x0

    .line 1111
    const-string/jumbo v2, "listener cannot be null"

    invoke-static {p3, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1112
    invoke-direct {p0, p3}, Landroid/net/wifi/WifiScanner;->addListener(Landroid/net/wifi/WifiScanner$ActionListener;)I

    move-result v0

    .line 1113
    .local v0, "key":I
    if-nez v0, :cond_0

    return-void

    .line 1114
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    .line 1115
    new-instance v1, Landroid/net/wifi/WifiScanner$HotlistSettings;

    invoke-direct {v1}, Landroid/net/wifi/WifiScanner$HotlistSettings;-><init>()V

    .line 1116
    .local v1, "settings":Landroid/net/wifi/WifiScanner$HotlistSettings;
    iput-object p1, v1, Landroid/net/wifi/WifiScanner$HotlistSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    .line 1117
    iput p2, v1, Landroid/net/wifi/WifiScanner$HotlistSettings;->apLostThreshold:I

    .line 1118
    iget-object v2, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v3, 0x27006

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 1110
    return-void
.end method

.method public startTrackingWifiChange(Landroid/net/wifi/WifiScanner$WifiChangeListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/net/wifi/WifiScanner$WifiChangeListener;

    .prologue
    const/4 v3, 0x0

    .line 1010
    const-string/jumbo v1, "listener cannot be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1011
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiScanner;->addListener(Landroid/net/wifi/WifiScanner$ActionListener;)I

    move-result v0

    .line 1012
    .local v0, "key":I
    if-nez v0, :cond_0

    return-void

    .line 1013
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    .line 1014
    iget-object v1, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x2700b

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1009
    return-void
.end method

.method public stopBackgroundScan(Landroid/net/wifi/WifiScanner$ScanListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/net/wifi/WifiScanner$ScanListener;

    .prologue
    const/4 v3, 0x0

    .line 748
    const-string/jumbo v1, "listener cannot be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiScanner;->removeListener(Ljava/lang/Object;)I

    move-result v0

    .line 750
    .local v0, "key":I
    if-nez v0, :cond_0

    return-void

    .line 751
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    .line 752
    iget-object v1, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x27003

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 747
    return-void
.end method

.method public stopPnoScan(Landroid/net/wifi/WifiScanner$ScanListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/net/wifi/WifiScanner$ScanListener;

    .prologue
    const/4 v3, 0x0

    .line 874
    const-string/jumbo v1, "listener cannot be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiScanner;->removeListener(Ljava/lang/Object;)I

    move-result v0

    .line 876
    .local v0, "key":I
    if-nez v0, :cond_0

    return-void

    .line 877
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    .line 878
    iget-object v1, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x27019

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 873
    return-void
.end method

.method public stopScan(Landroid/net/wifi/WifiScanner$ScanListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/net/wifi/WifiScanner$ScanListener;

    .prologue
    const/4 v3, 0x0

    .line 802
    const-string/jumbo v1, "listener cannot be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiScanner;->removeListener(Ljava/lang/Object;)I

    move-result v0

    .line 804
    .local v0, "key":I
    if-nez v0, :cond_0

    return-void

    .line 805
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    .line 806
    iget-object v1, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x27016

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 801
    return-void
.end method

.method public stopTrackingBssids(Landroid/net/wifi/WifiScanner$BssidListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/net/wifi/WifiScanner$BssidListener;

    .prologue
    const/4 v3, 0x0

    .line 1126
    const-string/jumbo v1, "listener cannot be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1127
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiScanner;->removeListener(Ljava/lang/Object;)I

    move-result v0

    .line 1128
    .local v0, "key":I
    if-nez v0, :cond_0

    return-void

    .line 1129
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    .line 1130
    iget-object v1, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x27007

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1125
    return-void
.end method

.method public stopTrackingWifiChange(Landroid/net/wifi/WifiScanner$WifiChangeListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/net/wifi/WifiScanner$WifiChangeListener;

    .prologue
    const/4 v3, 0x0

    .line 1023
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiScanner;->removeListener(Ljava/lang/Object;)I

    move-result v0

    .line 1024
    .local v0, "key":I
    if-nez v0, :cond_0

    return-void

    .line 1025
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    .line 1026
    iget-object v1, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x2700c

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1022
    return-void
.end method
