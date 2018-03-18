.class public Lcom/android/server/wifi/ZeusisWifiDataCutOff;
.super Landroid/os/Handler;
.source "ZeusisWifiDataCutOff.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/ZeusisWifiDataCutOff$1;,
        Lcom/android/server/wifi/ZeusisWifiDataCutOff$TxRxSum;
    }
.end annotation


# static fields
.field public static final DATA_MONITOR_POLL:I = 0x2

.field private static final DATA_STALL_ALARM_DELAY_IN_MS_DEFAULT:I = 0x1388

.field private static final DATA_STALL_RECOVER_INTERVAL_IN_MS_DEFAULT:I = 0x36ee80

.field public static final DATA_STALL_TIMER_EVENT:I = 0x4

.field private static final DBG:Z = true

.field public static final DO_RECOVERY_EVENT:I = 0x3

.field public static final ENABLE_DATA_MONITOR_POLL:I = 0x1

.field private static final NUMBER_SENT_PACKETS_OF_HANG:I = 0x5

.field public static final SET_ROAM_DONE:I = 0x5

.field private static final TAG:Ljava/lang/String; = "ZeusisWifiDataCutOff"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataStallAlarmTag:I

.field private volatile mDataStallDetectionEnabled:Z

.field private mDataStallTxRxSum:Lcom/android/server/wifi/ZeusisWifiDataCutOff$TxRxSum;

.field private mEnableTrafficStatsPoll:Z

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsDhcpActive:Z

.field private mIsRoutingComplete:Z

.field private mIsScreenOn:Z

.field private mIsWifiConnected:Z

.field private mLinkStuckCnt:I

.field private mNeighborMonitor:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mOldWifiDisplayStatus:I

.field private final mPingIsGo:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mRecoverRecently:Z

.field private mRoamProcess:Z

.field private mSentSinceLastRecv:J

.field private final mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/ZeusisWifiDataCutOff;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mIsWifiConnected:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/ZeusisWifiDataCutOff;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mLinkStuckCnt:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/wifi/ZeusisWifiDataCutOff;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mNeighborMonitor:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/wifi/ZeusisWifiDataCutOff;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mOldWifiDisplayStatus:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/wifi/ZeusisWifiDataCutOff;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mPingIsGo:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/wifi/ZeusisWifiDataCutOff;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mRecoverRecently:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/server/wifi/ZeusisWifiDataCutOff;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mRoamProcess:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/server/wifi/ZeusisWifiDataCutOff;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mSentSinceLastRecv:J

    return-wide v0
.end method

.method static synthetic -get8(Lcom/android/server/wifi/ZeusisWifiDataCutOff;)Lcom/android/server/wifi/WifiStateMachine;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/wifi/ZeusisWifiDataCutOff;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mIsRoutingComplete:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/wifi/ZeusisWifiDataCutOff;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mIsScreenOn:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/wifi/ZeusisWifiDataCutOff;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mIsWifiConnected:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/server/wifi/ZeusisWifiDataCutOff;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mLinkStuckCnt:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/server/wifi/ZeusisWifiDataCutOff;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mOldWifiDisplayStatus:I

    return p1
.end method

.method static synthetic -set5(Lcom/android/server/wifi/ZeusisWifiDataCutOff;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mRoamProcess:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/server/wifi/ZeusisWifiDataCutOff;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mSentSinceLastRecv:J

    return-wide p1
.end method

.method static synthetic -wrap0(Lcom/android/server/wifi/ZeusisWifiDataCutOff;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->isAllowRecover()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/wifi/ZeusisWifiDataCutOff;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->pingGateway()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/wifi/ZeusisWifiDataCutOff;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->updateDataStallInfo()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wifiStateMachine"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 189
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mPingIsGo:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 46
    new-instance v0, Lcom/android/server/wifi/ZeusisWifiDataCutOff$TxRxSum;

    move-object v1, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/ZeusisWifiDataCutOff$TxRxSum;-><init>(Lcom/android/server/wifi/ZeusisWifiDataCutOff;JJ)V

    iput-object v0, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mDataStallTxRxSum:Lcom/android/server/wifi/ZeusisWifiDataCutOff$TxRxSum;

    .line 48
    iput-boolean v7, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mEnableTrafficStatsPoll:Z

    .line 50
    iput v7, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mDataStallAlarmTag:I

    .line 54
    iput-boolean v8, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mDataStallDetectionEnabled:Z

    .line 56
    iput-boolean v7, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mIsWifiConnected:Z

    .line 58
    iput-boolean v7, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mIsDhcpActive:Z

    .line 60
    iput-boolean v8, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mIsScreenOn:Z

    .line 62
    iput-boolean v7, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mRecoverRecently:Z

    .line 64
    iput-boolean v7, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mIsRoutingComplete:Z

    .line 66
    iput-boolean v7, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mRoamProcess:Z

    .line 68
    iput v7, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mLinkStuckCnt:I

    .line 70
    iput v7, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mOldWifiDisplayStatus:I

    .line 73
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mNeighborMonitor:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 81
    new-instance v0, Lcom/android/server/wifi/ZeusisWifiDataCutOff$1;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/ZeusisWifiDataCutOff$1;-><init>(Lcom/android/server/wifi/ZeusisWifiDataCutOff;)V

    iput-object v0, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 190
    iput-object p1, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mContext:Landroid/content/Context;

    .line 191
    iput-object p2, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 193
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 194
    .local v6, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 195
    const-string/jumbo v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 196
    const-string/jumbo v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 198
    const-string/jumbo v0, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 199
    const-string/jumbo v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 200
    const-string/jumbo v0, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 188
    return-void
.end method

.method private checkIpv4AddressFormat(Ljava/lang/String;)Z
    .locals 3
    .param p1, "ipString"    # Ljava/lang/String;

    .prologue
    .line 455
    const-string/jumbo v2, "(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)"

    .line 454
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 458
    .local v0, "ipv4FormatPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 459
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    return v2
.end method

.method private doRecovery()V
    .locals 7

    .prologue
    const v6, 0x2400c

    const/4 v5, 0x1

    .line 262
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 263
    invoke-direct {p0}, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->isAllowRecover()Z

    move-result v2

    .line 262
    if-eqz v2, :cond_0

    .line 264
    iget-object v2, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_on"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 267
    new-instance v0, Landroid/util/BugManager;

    const-string/jumbo v2, "WIFI-FWK"

    const-string/jumbo v3, "ZeusisWifiDataCutOff"

    invoke-direct {v0, v2, v3}, Landroid/util/BugManager;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    .local v0, "bugManager":Landroid/util/BugManager;
    const-string/jumbo v2, "datacutoff detect and ping gateway fail!"

    const v3, 0xd04802

    invoke-virtual {v0, v3, v2}, Landroid/util/BugManager;->report(ILjava/lang/String;)V

    .line 270
    const-string/jumbo v2, "ZeusisWifiDataCutOff"

    const-string/jumbo v3, "datacutoff detect and ping gateway fail, recover now!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mRecoverRecently:Z

    .line 272
    iget-object v2, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const v3, 0x2400c

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 273
    invoke-virtual {p0}, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->startIntervalTimer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    return-void

    .line 276
    .end local v0    # "bugManager":Landroid/util/BugManager;
    :catch_0
    move-exception v1

    .line 277
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "ZeusisWifiDataCutOff"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Get Settings.Global.WIFI_ON Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const-string/jumbo v2, "ZeusisWifiDataCutOff"

    const-string/jumbo v3, "datacutoff detect and ping gateway fail, recover now!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iput-boolean v5, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mRecoverRecently:Z

    .line 280
    iget-object v2, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2, v6}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 281
    invoke-virtual {p0}, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->startIntervalTimer()V

    .line 282
    return-void

    .line 260
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private isAllowRecover()Z
    .locals 4

    .prologue
    .line 436
    iget-boolean v1, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mIsWifiConnected:Z

    if-eqz v1, :cond_0

    .line 437
    iget-boolean v1, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mIsDhcpActive:Z

    if-eqz v1, :cond_1

    .line 436
    :cond_0
    const/4 v0, 0x0

    .line 443
    .local v0, "ret":Z
    :goto_0
    const-string/jumbo v1, "ZeusisWifiDataCutOff"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mIsWifiConnected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mIsWifiConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 444
    const-string/jumbo v3, " mIsDhcpActive "

    .line 443
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 444
    iget-boolean v3, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mIsDhcpActive:Z

    .line 443
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 445
    const-string/jumbo v3, " supplicantState "

    .line 443
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 445
    iget-object v3, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v3

    .line 443
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 446
    const-string/jumbo v3, " mOldWifiDisplayStatus "

    .line 443
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 446
    iget v3, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mOldWifiDisplayStatus:I

    .line 443
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 447
    const-string/jumbo v3, " mIsRoutingComplete "

    .line 443
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 447
    iget-boolean v3, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mIsRoutingComplete:Z

    .line 443
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 448
    const-string/jumbo v3, " mRoamProcess "

    .line 443
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 448
    iget-boolean v3, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mRoamProcess:Z

    .line 443
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    return v0

    .line 438
    .end local v0    # "ret":Z
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v1, v2, :cond_0

    .line 439
    iget v1, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mOldWifiDisplayStatus:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 440
    iget-boolean v1, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mIsRoutingComplete:Z

    .line 436
    if-eqz v1, :cond_0

    .line 441
    iget-boolean v1, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mRoamProcess:Z

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    .restart local v0    # "ret":Z
    goto :goto_0

    .end local v0    # "ret":Z
    :cond_2
    const/4 v0, 0x1

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method private onDataStallAlarm()V
    .locals 2

    .prologue
    .line 316
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/wifi/ZeusisWifiDataCutOff$2;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/ZeusisWifiDataCutOff$2;-><init>(Lcom/android/server/wifi/ZeusisWifiDataCutOff;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 315
    return-void
.end method

.method private ping(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 9
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "timeout"    # I

    .prologue
    const/4 v8, 0x0

    .line 485
    const/4 v3, 0x0

    .line 486
    .local v3, "pingresult":Z
    iget-object v5, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mPingIsGo:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 489
    :try_start_0
    const-string/jumbo v5, "ZeusisWifiDataCutOff"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " IP: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ping -c 2 -W "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 491
    .local v2, "p":Ljava/lang/Process;
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    move-result v4

    .line 492
    .local v4, "status":I
    if-nez v4, :cond_0

    .line 493
    const-string/jumbo v5, "ZeusisWifiDataCutOff"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ping "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " pass, don\'t do recover"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mSentSinceLastRecv:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    const/4 v3, 0x1

    .line 505
    .end local v2    # "p":Ljava/lang/Process;
    .end local v4    # "status":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mPingIsGo:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 508
    return v3

    .line 497
    .restart local v2    # "p":Ljava/lang/Process;
    .restart local v4    # "status":I
    :cond_0
    :try_start_1
    const-string/jumbo v5, "ZeusisWifiDataCutOff"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ping "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 498
    const/4 v3, 0x0

    goto :goto_0

    .line 502
    .end local v2    # "p":Ljava/lang/Process;
    .end local v4    # "status":I
    :catch_0
    move-exception v1

    .line 503
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v5, "ZeusisWifiDataCutOff"

    const-string/jumbo v6, "Fail: InterruptedException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 500
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 501
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v5, "ZeusisWifiDataCutOff"

    const-string/jumbo v6, "Fail: IOException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private pingGateway()Z
    .locals 5

    .prologue
    .line 407
    const/4 v2, 0x0

    .line 409
    .local v2, "pingresult":Z
    invoke-direct {p0}, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->isAllowRecover()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 411
    iget-object v3, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mPingIsGo:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 412
    const-string/jumbo v3, "dhcp.wlan0.gateway"

    const-string/jumbo v4, "192.168.1.1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 413
    .local v1, "gatewayIP":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->checkIpv4AddressFormat(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 414
    const-string/jumbo v3, "ZeusisWifiDataCutOff"

    const-string/jumbo v4, "Incorrect IPv4 formation, use default IP 192.168.1.1"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const-string/jumbo v1, "192.168.1.1"

    .line 418
    :cond_0
    const-string/jumbo v3, "gateway"

    const/4 v4, 0x5

    invoke-direct {p0, v1, v3, v4}, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->ping(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    .line 419
    .local v2, "pingresult":Z
    if-nez v2, :cond_1

    .line 420
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->getDnsAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 421
    .local v0, "dnsIP":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 422
    const-string/jumbo v3, "dns"

    const/4 v4, 0x3

    invoke-direct {p0, v0, v3, v4}, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->ping(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    .line 425
    .end local v0    # "dnsIP":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mPingIsGo:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 431
    .end local v1    # "gatewayIP":Ljava/lang/String;
    .end local v2    # "pingresult":Z
    :goto_0
    return v2

    .line 428
    .local v2, "pingresult":Z
    :cond_2
    const-string/jumbo v3, "ZeusisWifiDataCutOff"

    const-string/jumbo v4, "pingGateway: not allow to run recover"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateDataStallInfo()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    .line 289
    new-instance v0, Lcom/android/server/wifi/ZeusisWifiDataCutOff$TxRxSum;

    iget-object v1, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mDataStallTxRxSum:Lcom/android/server/wifi/ZeusisWifiDataCutOff$TxRxSum;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/ZeusisWifiDataCutOff$TxRxSum;-><init>(Lcom/android/server/wifi/ZeusisWifiDataCutOff;Lcom/android/server/wifi/ZeusisWifiDataCutOff$TxRxSum;)V

    .line 290
    .local v0, "preTxRxSum":Lcom/android/server/wifi/ZeusisWifiDataCutOff$TxRxSum;
    iget-object v1, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mDataStallTxRxSum:Lcom/android/server/wifi/ZeusisWifiDataCutOff$TxRxSum;

    invoke-virtual {v1}, Lcom/android/server/wifi/ZeusisWifiDataCutOff$TxRxSum;->updateTxRxSum()V

    .line 292
    const-string/jumbo v1, "ZeusisWifiDataCutOff"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateDataStallInfo: mDataStallTxRxSum="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mDataStallTxRxSum:Lcom/android/server/wifi/ZeusisWifiDataCutOff$TxRxSum;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 293
    const-string/jumbo v7, " preTxRxSum="

    .line 292
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v1, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mDataStallTxRxSum:Lcom/android/server/wifi/ZeusisWifiDataCutOff$TxRxSum;

    iget-wide v6, v1, Lcom/android/server/wifi/ZeusisWifiDataCutOff$TxRxSum;->txPkts:J

    iget-wide v8, v0, Lcom/android/server/wifi/ZeusisWifiDataCutOff$TxRxSum;->txPkts:J

    sub-long v4, v6, v8

    .line 296
    .local v4, "sent":J
    iget-object v1, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mDataStallTxRxSum:Lcom/android/server/wifi/ZeusisWifiDataCutOff$TxRxSum;

    iget-wide v6, v1, Lcom/android/server/wifi/ZeusisWifiDataCutOff$TxRxSum;->rxPkts:J

    iget-wide v8, v0, Lcom/android/server/wifi/ZeusisWifiDataCutOff$TxRxSum;->rxPkts:J

    sub-long v2, v6, v8

    .line 298
    .local v2, "received":J
    cmp-long v1, v4, v10

    if-lez v1, :cond_0

    cmp-long v1, v2, v10

    if-lez v1, :cond_0

    .line 299
    const-string/jumbo v1, "ZeusisWifiDataCutOff"

    const-string/jumbo v6, "updateDataStallInfo: IN and OUT"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iput-wide v10, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mSentSinceLastRecv:J

    .line 286
    :goto_0
    return-void

    .line 301
    :cond_0
    cmp-long v1, v4, v10

    if-lez v1, :cond_1

    cmp-long v1, v2, v10

    if-nez v1, :cond_1

    .line 302
    iget-wide v6, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mSentSinceLastRecv:J

    add-long/2addr v6, v4

    iput-wide v6, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mSentSinceLastRecv:J

    .line 304
    const-string/jumbo v1, "ZeusisWifiDataCutOff"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateDataStallInfo: OUT sent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 305
    const-string/jumbo v7, " mSentSinceLastRecv="

    .line 304
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 305
    iget-wide v8, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mSentSinceLastRecv:J

    .line 304
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 307
    :cond_1
    cmp-long v1, v4, v10

    if-nez v1, :cond_2

    cmp-long v1, v2, v10

    if-lez v1, :cond_2

    .line 308
    const-string/jumbo v1, "ZeusisWifiDataCutOff"

    const-string/jumbo v6, "updateDataStallInfo: IN"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iput-wide v10, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mSentSinceLastRecv:J

    goto :goto_0

    .line 311
    :cond_2
    const-string/jumbo v1, "ZeusisWifiDataCutOff"

    const-string/jumbo v6, "updateDataStallInfo: No Data"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getDnsAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "gatewayIP"    # Ljava/lang/String;

    .prologue
    .line 463
    const/4 v1, 0x0

    .line 464
    .local v1, "dnsIP":Ljava/lang/String;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    const/4 v4, 0x4

    if-gt v2, v4, :cond_0

    .line 465
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dhcp.wlan0.dns"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 466
    .local v3, "propertyName":Ljava/lang/String;
    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 468
    .local v0, "address":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 476
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "dnsIP":Ljava/lang/String;
    .end local v3    # "propertyName":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v1

    .line 470
    .restart local v0    # "address":Ljava/lang/String;
    .restart local v1    # "dnsIP":Ljava/lang/String;
    .restart local v3    # "propertyName":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-direct {p0, v0}, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->checkIpv4AddressFormat(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 471
    move-object v1, v0

    .line 472
    .local v1, "dnsIP":Ljava/lang/String;
    goto :goto_1

    .line 464
    .local v1, "dnsIP":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getLinkStuck()I
    .locals 1

    .prologue
    .line 513
    iget v0, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mLinkStuckCnt:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v6, 0x1388

    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 206
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 255
    const-string/jumbo v0, "ZeusisWifiDataCutOff"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown event msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 209
    :pswitch_0
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v0, :cond_1

    :goto_1
    iput-boolean v0, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mEnableTrafficStatsPoll:Z

    .line 210
    const-string/jumbo v0, "ZeusisWifiDataCutOff"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ENABLE_DATA_MONITOR_POLL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 211
    iget-boolean v3, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mEnableTrafficStatsPoll:Z

    .line 210
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 211
    const-string/jumbo v3, " Token "

    .line 210
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 212
    iget v3, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mDataStallAlarmTag:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 210
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget v0, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mDataStallAlarmTag:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mDataStallAlarmTag:I

    .line 215
    iget-boolean v0, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mEnableTrafficStatsPoll:Z

    if-eqz v0, :cond_0

    .line 216
    iget-boolean v0, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mIsScreenOn:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mIsWifiConnected:Z

    if-eqz v0, :cond_2

    .line 220
    iput v1, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mLinkStuckCnt:I

    .line 221
    invoke-direct {p0}, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->onDataStallAlarm()V

    .line 223
    iget v0, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mDataStallAlarmTag:I

    .line 222
    invoke-static {p0, v4, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v6, v7}, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_1
    move v0, v1

    .line 209
    goto :goto_1

    .line 217
    :cond_2
    const-string/jumbo v0, "ZeusisWifiDataCutOff"

    const-string/jumbo v1, "ENABLE_DATA_MONITOR_POLL: Do NOT run data monitor "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    return-void

    .line 227
    :pswitch_1
    const-string/jumbo v0, "ZeusisWifiDataCutOff"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DATA_MONITOR_POLL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 228
    iget-boolean v3, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mEnableTrafficStatsPoll:Z

    .line 227
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 228
    const-string/jumbo v3, " Token "

    .line 227
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 229
    iget v3, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mDataStallAlarmTag:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 227
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v2, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mDataStallAlarmTag:I

    if-ne v0, v2, :cond_0

    .line 232
    iget-boolean v0, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mIsScreenOn:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mIsWifiConnected:Z

    if-eqz v0, :cond_3

    .line 236
    invoke-direct {p0}, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->onDataStallAlarm()V

    .line 238
    iget v0, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mDataStallAlarmTag:I

    .line 237
    invoke-static {p0, v4, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v6, v7}, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 233
    :cond_3
    const-string/jumbo v0, "ZeusisWifiDataCutOff"

    const-string/jumbo v1, "DATA_MONITOR_POLL: Do NOT run data monitor "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    return-void

    .line 242
    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->doRecovery()V

    goto/16 :goto_0

    .line 246
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->stopDataStallTimer()V

    goto/16 :goto_0

    .line 250
    :pswitch_4
    iput-boolean v1, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mRoamProcess:Z

    .line 251
    const-string/jumbo v0, "ZeusisWifiDataCutOff"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "receive message SET_ROAM_DONE, set mRoamProcess = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mRoamProcess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 206
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public probeNeighbor()V
    .locals 2

    .prologue
    .line 480
    const-string/jumbo v0, "ZeusisWifiDataCutOff"

    const-string/jumbo v1, "set neighbor monitor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v0, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mNeighborMonitor:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 479
    return-void
.end method

.method public setDhcpActive(Z)V
    .locals 3
    .param p1, "isActive"    # Z

    .prologue
    .line 402
    const-string/jumbo v0, "ZeusisWifiDataCutOff"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDhcpActive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iput-boolean p1, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mIsDhcpActive:Z

    .line 401
    return-void
.end method

.method public startDataStallAlarm()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 380
    iget v0, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mOldWifiDisplayStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 381
    const-string/jumbo v0, "ZeusisWifiDataCutOff"

    const-string/jumbo v1, "WifiDisplay connected, not startDataStallAlarm"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    return-void

    .line 385
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mDataStallDetectionEnabled:Z

    if-eqz v0, :cond_1

    .line 387
    iget-object v0, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mDataStallTxRxSum:Lcom/android/server/wifi/ZeusisWifiDataCutOff$TxRxSum;

    invoke-virtual {v0}, Lcom/android/server/wifi/ZeusisWifiDataCutOff$TxRxSum;->updateTxRxSum()V

    .line 389
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v2, v0}, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->sendMessage(Landroid/os/Message;)Z

    .line 378
    :goto_0
    return-void

    .line 392
    :cond_1
    const-string/jumbo v0, "ZeusisWifiDataCutOff"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startDataStallAlarm: NOT started, no connection tag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mDataStallAlarmTag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startIntervalTimer()V
    .locals 4

    .prologue
    .line 366
    const-string/jumbo v0, "ZeusisWifiDataCutOff"

    const-string/jumbo v1, "startDataStallTimer "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/32 v2, 0x36ee80

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 364
    return-void
.end method

.method public stopDataStallAlarm()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 397
    const-string/jumbo v0, "ZeusisWifiDataCutOff"

    const-string/jumbo v1, "stopDataStallAlarm "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2, v2}, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->sendMessage(Landroid/os/Message;)Z

    .line 396
    return-void
.end method

.method public stopDataStallTimer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 372
    const-string/jumbo v0, "ZeusisWifiDataCutOff"

    const-string/jumbo v1, "stopDataStallTimer "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iput-boolean v2, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mRecoverRecently:Z

    .line 375
    iget-object v0, p0, Lcom/android/server/wifi/ZeusisWifiDataCutOff;->mNeighborMonitor:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 371
    return-void
.end method
