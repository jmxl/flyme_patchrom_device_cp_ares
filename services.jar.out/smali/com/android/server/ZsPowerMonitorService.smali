.class public final Lcom/android/server/ZsPowerMonitorService;
.super Lcom/android/server/SystemService;
.source "ZsPowerMonitorService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ZsPowerMonitorService$BatteryLevelMonitor;,
        Lcom/android/server/ZsPowerMonitorService$BatteryStatsMonitor;,
        Lcom/android/server/ZsPowerMonitorService$DischargingMonitor;,
        Lcom/android/server/ZsPowerMonitorService$GpsMonitor;,
        Lcom/android/server/ZsPowerMonitorService$LocalService;,
        Lcom/android/server/ZsPowerMonitorService$Monitor;,
        Lcom/android/server/ZsPowerMonitorService$PowerBroadcastReceiver;,
        Lcom/android/server/ZsPowerMonitorService$PowerLog;,
        Lcom/android/server/ZsPowerMonitorService$ScreenOffBatteryMonitor;,
        Lcom/android/server/ZsPowerMonitorService$ScreenOnBatteryMonitor;,
        Lcom/android/server/ZsPowerMonitorService$SleepMonitor;,
        Lcom/android/server/ZsPowerMonitorService$WakeupMonitor;,
        Lcom/android/server/ZsPowerMonitorService$ZsBinderService;,
        Lcom/android/server/ZsPowerMonitorService$ZsPowerMonitorHandler;
    }
.end annotation


# static fields
.field public static final BEAT_CONFIG_FILE:Ljava/lang/String; = "/system/etc/power-monitor-beta.xml"

.field public static final CONFIG_FILE:Ljava/lang/String; = "/system/etc/power-monitor.xml"

.field public static final DEBUG:Z

.field private static final MSG_BATTERY_LEVEL_CHANGED:I = 0x4

.field private static final MSG_INIT:I = 0x0

.field private static final MSG_MONITOR:I = 0x2710

.field private static final MSG_REINIT:I = 0x1

.field private static final MSG_SCREEN_STATE_CHANGE:I = 0x2

.field private static final MSG_TIME_KEY:Ljava/lang/String; = "time"

.field private static final MSG_USB_STATE_CHANGE:I = 0x3

.field public static final SCREEN_OFF_ARG:I = 0x1

.field public static final SCREEN_ON_ARG:I = 0x0

.field public static final TAG:Ljava/lang/String; = "ZsPowerMonitor"

.field public static final USB_CONNECTED:I = 0x0

.field public static final USB_DISCONNECTED:I = 0x1


# instance fields
.field public mAlarmManagerInternal:Lcom/android/server/AlarmManagerService$LocalService;

.field public mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

.field private mBeta:Z

.field private mBootCompleted:Z

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/server/ZsPowerMonitorService$ZsPowerMonitorHandler;

.field private final mHandlerThread:Lcom/android/server/ServiceThread;

.field private final mLock:Ljava/lang/Object;

.field private mMonitorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/ZsPowerMonitorService$Monitor;",
            ">;"
        }
    .end annotation
.end field

.field public mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private mReportIssue:Z

.field private mUsbConnected:Z

.field public mZsPowerMonitorInternal:Landroid/os/ZsPowerMonitorInternal;


# direct methods
.method static synthetic -get0(Lcom/android/server/ZsPowerMonitorService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/ZsPowerMonitorService;->mBeta:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/ZsPowerMonitorService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/ZsPowerMonitorService;->mBootCompleted:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/ZsPowerMonitorService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/ZsPowerMonitorService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/ZsPowerMonitorService;)Lcom/android/server/ZsPowerMonitorService$ZsPowerMonitorHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/ZsPowerMonitorService;->mHandler:Lcom/android/server/ZsPowerMonitorService$ZsPowerMonitorHandler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/ZsPowerMonitorService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/ZsPowerMonitorService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/ZsPowerMonitorService;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/ZsPowerMonitorService;->mMonitorMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/ZsPowerMonitorService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/ZsPowerMonitorService;->mReportIssue:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/server/ZsPowerMonitorService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/ZsPowerMonitorService;->mUsbConnected:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/ZsPowerMonitorService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/ZsPowerMonitorService;->mReportIssue:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/ZsPowerMonitorService;Ljava/lang/String;)Lcom/android/server/ZsPowerMonitorService$Monitor;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ZsPowerMonitorService;->getMonitorChecked(Ljava/lang/String;)Lcom/android/server/ZsPowerMonitorService$Monitor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/ZsPowerMonitorService;Ljava/lang/String;)Lcom/android/server/ZsPowerMonitorService$Monitor;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ZsPowerMonitorService;->getMonitor(Ljava/lang/String;)Lcom/android/server/ZsPowerMonitorService$Monitor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/server/ZsPowerMonitorService;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/ZsPowerMonitorService;->onTriggerNow(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/ZsPowerMonitorService;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ZsPowerMonitorService;->removeMonitor(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/ZsPowerMonitorService;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ZsPowerMonitorService;->triggerMonitor(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/ZsPowerMonitorService;I)V
    .locals 0
    .param p1, "connected"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ZsPowerMonitorService;->updateUsbState(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 64
    const-string/jumbo v0, "persist.sys.zs.pm.debug"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ZsPowerMonitorService;->DEBUG:Z

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 104
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 66
    iput-boolean v3, p0, Lcom/android/server/ZsPowerMonitorService;->mBeta:Z

    .line 89
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/ZsPowerMonitorService;->mLock:Ljava/lang/Object;

    .line 91
    iput-boolean v3, p0, Lcom/android/server/ZsPowerMonitorService;->mBootCompleted:Z

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ZsPowerMonitorService;->mReportIssue:Z

    .line 93
    iput-boolean v3, p0, Lcom/android/server/ZsPowerMonitorService;->mUsbConnected:Z

    .line 96
    iput-object v1, p0, Lcom/android/server/ZsPowerMonitorService;->mMonitorMap:Ljava/util/HashMap;

    .line 98
    iput-object v1, p0, Lcom/android/server/ZsPowerMonitorService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 99
    iput-object v1, p0, Lcom/android/server/ZsPowerMonitorService;->mAlarmManagerInternal:Lcom/android/server/AlarmManagerService$LocalService;

    .line 100
    iput-object v1, p0, Lcom/android/server/ZsPowerMonitorService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 101
    iput-object v1, p0, Lcom/android/server/ZsPowerMonitorService;->mZsPowerMonitorInternal:Landroid/os/ZsPowerMonitorInternal;

    .line 105
    iput-object p1, p0, Lcom/android/server/ZsPowerMonitorService;->mContext:Landroid/content/Context;

    .line 106
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string/jumbo v1, "ZsPowerMonitor"

    .line 107
    const/4 v2, -0x4

    .line 106
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/ZsPowerMonitorService;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 108
    iget-object v0, p0, Lcom/android/server/ZsPowerMonitorService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 109
    new-instance v0, Lcom/android/server/ZsPowerMonitorService$ZsPowerMonitorHandler;

    iget-object v1, p0, Lcom/android/server/ZsPowerMonitorService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/ZsPowerMonitorService$ZsPowerMonitorHandler;-><init>(Lcom/android/server/ZsPowerMonitorService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/ZsPowerMonitorService;->mHandler:Lcom/android/server/ZsPowerMonitorService$ZsPowerMonitorHandler;

    .line 103
    return-void
.end method

.method private getMonitor(Ljava/lang/String;)Lcom/android/server/ZsPowerMonitorService$Monitor;
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 285
    iget-object v1, p0, Lcom/android/server/ZsPowerMonitorService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 286
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/ZsPowerMonitorService;->mBootCompleted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ZsPowerMonitorService;->mMonitorMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/android/server/ZsPowerMonitorService;->mMonitorMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ZsPowerMonitorService$Monitor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    monitor-exit v1

    .line 290
    return-object v2

    .line 285
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getMonitorChecked(Ljava/lang/String;)Lcom/android/server/ZsPowerMonitorService$Monitor;
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 294
    iget-object v1, p0, Lcom/android/server/ZsPowerMonitorService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 295
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/ZsPowerMonitorService;->mBootCompleted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ZsPowerMonitorService;->mMonitorMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/ZsPowerMonitorService;->mReportIssue:Z

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/android/server/ZsPowerMonitorService;->mMonitorMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ZsPowerMonitorService$Monitor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    monitor-exit v1

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Monitor not ready type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ZsPowerMonitorService$PowerLog;->d(Ljava/lang/String;)V

    .line 300
    return-object v2

    .line 294
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private onTriggerNow(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 325
    invoke-direct {p0, p1}, Lcom/android/server/ZsPowerMonitorService;->getMonitorChecked(Ljava/lang/String;)Lcom/android/server/ZsPowerMonitorService$Monitor;

    move-result-object v0

    .line 326
    .local v0, "monitor":Lcom/android/server/ZsPowerMonitorService$Monitor;
    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {v0, p2}, Lcom/android/server/ZsPowerMonitorService$Monitor;->onTriggerNow(Landroid/os/Message;)V

    .line 324
    :cond_0
    return-void
.end method

.method private removeMonitor(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 318
    invoke-direct {p0, p1}, Lcom/android/server/ZsPowerMonitorService;->getMonitor(Ljava/lang/String;)Lcom/android/server/ZsPowerMonitorService$Monitor;

    move-result-object v0

    .line 319
    .local v0, "monitor":Lcom/android/server/ZsPowerMonitorService$Monitor;
    if-eqz v0, :cond_0

    .line 320
    invoke-virtual {v0}, Lcom/android/server/ZsPowerMonitorService$Monitor;->remove()V

    .line 317
    :cond_0
    return-void
.end method

.method private triggerMonitor(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 304
    invoke-direct {p0, p1}, Lcom/android/server/ZsPowerMonitorService;->getMonitorChecked(Ljava/lang/String;)Lcom/android/server/ZsPowerMonitorService$Monitor;

    move-result-object v0

    .line 305
    .local v0, "monitor":Lcom/android/server/ZsPowerMonitorService$Monitor;
    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {v0}, Lcom/android/server/ZsPowerMonitorService$Monitor;->trigger()V

    .line 303
    :cond_0
    return-void
.end method

.method private triggerMonitor(Ljava/lang/String;I)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "arg"    # I

    .prologue
    .line 311
    invoke-direct {p0, p1}, Lcom/android/server/ZsPowerMonitorService;->getMonitorChecked(Ljava/lang/String;)Lcom/android/server/ZsPowerMonitorService$Monitor;

    move-result-object v0

    .line 312
    .local v0, "monitor":Lcom/android/server/ZsPowerMonitorService$Monitor;
    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {v0, p2}, Lcom/android/server/ZsPowerMonitorService$Monitor;->trigger(I)V

    .line 310
    :cond_0
    return-void
.end method

.method private updateUsbState(I)V
    .locals 3
    .param p1, "connected"    # I

    .prologue
    const/4 v0, 0x1

    .line 332
    iget-object v1, p0, Lcom/android/server/ZsPowerMonitorService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 333
    if-nez p1, :cond_1

    .line 334
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/ZsPowerMonitorService;->mUsbConnected:Z

    .line 338
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "usb connect state:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/ZsPowerMonitorService;->mUsbConnected:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ZsPowerMonitorService$PowerLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 331
    return-void

    .line 335
    :cond_1
    if-ne p1, v0, :cond_0

    .line 336
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/ZsPowerMonitorService;->mUsbConnected:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 332
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method init()V
    .locals 25

    .prologue
    .line 137
    const/4 v14, 0x0

    .line 138
    .local v14, "filename":Ljava/lang/String;
    const-string/jumbo v4, "persist.sys.phone.beta.state"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    .line 140
    .local v17, "newBeta":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/ZsPowerMonitorService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 141
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/ZsPowerMonitorService;->mBootCompleted:Z

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/ZsPowerMonitorService;->mBeta:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v0, v17

    if-ne v0, v4, :cond_0

    monitor-exit v5

    .line 142
    return-void

    :cond_0
    monitor-exit v5

    .line 146
    const-string/jumbo v4, "POWER0007"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/ZsPowerMonitorService;->removeMonitor(Ljava/lang/String;)V

    .line 148
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/ZsPowerMonitorService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 149
    :try_start_1
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/ZsPowerMonitorService;->mBeta:Z

    .line 150
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/ZsPowerMonitorService;->mBootCompleted:Z

    .line 151
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/ZsPowerMonitorService;->mMonitorMap:Ljava/util/HashMap;

    .line 152
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/ZsPowerMonitorService;->mBeta:Z

    if-eqz v4, :cond_2

    const-string/jumbo v14, "/system/etc/power-monitor-beta.xml"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .local v14, "filename":Ljava/lang/String;
    :goto_0
    monitor-exit v5

    .line 155
    const/16 v21, 0x0

    .line 156
    .local v21, "xmlFile":Ljava/io/FileInputStream;
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 159
    .local v19, "tmpMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/ZsPowerMonitorService$Monitor;>;"
    :try_start_2
    new-instance v22, Ljava/io/FileInputStream;

    move-object/from16 v0, v22

    invoke-direct {v0, v14}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 160
    .end local v21    # "xmlFile":Ljava/io/FileInputStream;
    .local v22, "xmlFile":Ljava/io/FileInputStream;
    :try_start_3
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v18

    .line 161
    .local v18, "pullParser":Lorg/xmlpull/v1/XmlPullParser;
    const-string/jumbo v4, "UTF-8"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 162
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v13

    .line 164
    .local v13, "event":I
    :goto_1
    const/4 v4, 0x1

    if-eq v13, v4, :cond_a

    .line 165
    packed-switch v13, :pswitch_data_0

    .line 199
    :cond_1
    :goto_2
    :pswitch_0
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-result v13

    goto :goto_1

    .line 140
    .end local v13    # "event":I
    .end local v18    # "pullParser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v19    # "tmpMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/ZsPowerMonitorService$Monitor;>;"
    .end local v22    # "xmlFile":Ljava/io/FileInputStream;
    .local v14, "filename":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 152
    :cond_2
    :try_start_4
    const-string/jumbo v14, "/system/etc/power-monitor.xml"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .local v14, "filename":Ljava/lang/String;
    goto :goto_0

    .line 148
    .local v14, "filename":Ljava/lang/String;
    :catchall_1
    move-exception v4

    monitor-exit v5

    throw v4

    .line 169
    .restart local v13    # "event":I
    .local v14, "filename":Ljava/lang/String;
    .restart local v18    # "pullParser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v19    # "tmpMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/ZsPowerMonitorService$Monitor;>;"
    .restart local v22    # "xmlFile":Ljava/io/FileInputStream;
    :pswitch_1
    :try_start_5
    const-string/jumbo v4, "monitor"

    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 170
    const-string/jumbo v2, "POWER"

    .line 171
    .local v2, "type":Ljava/lang/String;
    const/4 v3, 0x0

    .line 172
    .local v3, "enable":Z
    const-wide/16 v6, 0x0

    .local v6, "delay":J
    const-wide/16 v8, 0x0

    .local v8, "param1":J
    const-wide/16 v10, 0x0

    .line 173
    .local v10, "param2":J
    const/4 v15, 0x0

    .end local v3    # "enable":Z
    .local v15, "idx":I
    :goto_3
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v4

    if-ge v15, v4, :cond_8

    .line 174
    move-object/from16 v0, v18

    invoke-interface {v0, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v20

    .line 175
    .local v20, "value":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-interface {v0, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "type"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 177
    move-object/from16 v2, v20

    .line 173
    :cond_3
    :goto_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 175
    :cond_4
    const-string/jumbo v5, "enable"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 180
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .local v3, "enable":Z
    goto :goto_4

    .line 175
    .end local v3    # "enable":Z
    :cond_5
    const-string/jumbo v5, "delay"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 183
    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_4

    .line 175
    :cond_6
    const-string/jumbo v5, "param1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 186
    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    goto :goto_4

    .line 175
    :cond_7
    const-string/jumbo v5, "param2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 189
    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    goto :goto_4

    .line 193
    .end local v20    # "value":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/ZsPowerMonitorService;->mHandler:Lcom/android/server/ZsPowerMonitorService$ZsPowerMonitorHandler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/ZsPowerMonitorService;->mContext:Landroid/content/Context;

    invoke-static/range {v2 .. v11}, Lcom/android/server/ZsPowerMonitorService$Monitor;->getMonitor(Ljava/lang/String;ZLandroid/os/Handler;Landroid/content/Context;JJJ)Lcom/android/server/ZsPowerMonitorService$Monitor;

    move-result-object v16

    .line 194
    .local v16, "monitor":Lcom/android/server/ZsPowerMonitorService$Monitor;
    if-eqz v16, :cond_1

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto/16 :goto_2

    .line 201
    .end local v2    # "type":Ljava/lang/String;
    .end local v6    # "delay":J
    .end local v8    # "param1":J
    .end local v10    # "param2":J
    .end local v13    # "event":I
    .end local v15    # "idx":I
    .end local v16    # "monitor":Lcom/android/server/ZsPowerMonitorService$Monitor;
    .end local v18    # "pullParser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v12

    .local v12, "e":Ljava/lang/Exception;
    move-object/from16 v21, v22

    .line 202
    .end local v22    # "xmlFile":Ljava/io/FileInputStream;
    :goto_5
    :try_start_6
    const-string/jumbo v4, "ZsPowerMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "ZsPowerMonitorService init throw "

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 203
    const/16 v19, 0x0

    .line 206
    .local v19, "tmpMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/ZsPowerMonitorService$Monitor;>;"
    if-eqz v21, :cond_9

    .line 207
    :try_start_7
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 214
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v19    # "tmpMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/ZsPowerMonitorService$Monitor;>;"
    :cond_9
    :goto_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/ZsPowerMonitorService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 215
    const/4 v4, 0x1

    :try_start_8
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/ZsPowerMonitorService;->mBootCompleted:Z

    .line 216
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ZsPowerMonitorService;->mMonitorMap:Ljava/util/HashMap;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    monitor-exit v5

    .line 219
    const-string/jumbo v4, "POWER0007"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/ZsPowerMonitorService;->triggerMonitor(Ljava/lang/String;)V

    .line 136
    return-void

    .line 206
    .restart local v13    # "event":I
    .restart local v18    # "pullParser":Lorg/xmlpull/v1/XmlPullParser;
    .local v19, "tmpMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/ZsPowerMonitorService$Monitor;>;"
    .restart local v22    # "xmlFile":Ljava/io/FileInputStream;
    :cond_a
    if-eqz v22, :cond_b

    .line 207
    :try_start_9
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    :cond_b
    :goto_7
    move-object/from16 v21, v22

    .end local v22    # "xmlFile":Ljava/io/FileInputStream;
    .local v21, "xmlFile":Ljava/io/FileInputStream;
    goto :goto_6

    .line 209
    .end local v21    # "xmlFile":Ljava/io/FileInputStream;
    .restart local v22    # "xmlFile":Ljava/io/FileInputStream;
    :catch_1
    move-exception v12

    .line 210
    .restart local v12    # "e":Ljava/lang/Exception;
    const-string/jumbo v4, "ZsPowerMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "close file throw "

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 209
    .end local v13    # "event":I
    .end local v18    # "pullParser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v22    # "xmlFile":Ljava/io/FileInputStream;
    .local v19, "tmpMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/ZsPowerMonitorService$Monitor;>;"
    :catch_2
    move-exception v12

    .line 210
    const-string/jumbo v4, "ZsPowerMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "close file throw "

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 204
    .end local v12    # "e":Ljava/lang/Exception;
    .local v19, "tmpMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/ZsPowerMonitorService$Monitor;>;"
    :catchall_2
    move-exception v4

    .line 206
    :goto_8
    if-eqz v21, :cond_c

    .line 207
    :try_start_a
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    .line 204
    :cond_c
    :goto_9
    throw v4

    .line 209
    :catch_3
    move-exception v12

    .line 210
    .restart local v12    # "e":Ljava/lang/Exception;
    const-string/jumbo v5, "ZsPowerMonitor"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "close file throw "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 214
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v19    # "tmpMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/ZsPowerMonitorService$Monitor;>;"
    :catchall_3
    move-exception v4

    monitor-exit v5

    throw v4

    .line 204
    .restart local v19    # "tmpMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/ZsPowerMonitorService$Monitor;>;"
    .restart local v22    # "xmlFile":Ljava/io/FileInputStream;
    :catchall_4
    move-exception v4

    move-object/from16 v21, v22

    .end local v22    # "xmlFile":Ljava/io/FileInputStream;
    .restart local v21    # "xmlFile":Ljava/io/FileInputStream;
    goto :goto_8

    .line 201
    .local v21, "xmlFile":Ljava/io/FileInputStream;
    :catch_4
    move-exception v12

    .restart local v12    # "e":Ljava/lang/Exception;
    goto/16 :goto_5

    .line 165
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public monitor()V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/server/ZsPowerMonitorService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    monitor-exit v0

    .line 223
    return-void
.end method

.method public onBootPhase(I)V
    .locals 3
    .param p1, "phase"    # I

    .prologue
    .line 129
    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/android/server/ZsPowerMonitorService;->mHandler:Lcom/android/server/ZsPowerMonitorService$ZsPowerMonitorHandler;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 132
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/ZsPowerMonitorService;->mHandler:Lcom/android/server/ZsPowerMonitorService$ZsPowerMonitorHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/ZsPowerMonitorService$ZsPowerMonitorHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 128
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 114
    const-class v0, Landroid/os/BatteryManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/ZsPowerMonitorService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManagerInternal;

    iput-object v0, p0, Lcom/android/server/ZsPowerMonitorService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 115
    const-class v0, Lcom/android/server/AlarmManagerService$LocalService;

    invoke-virtual {p0, v0}, Lcom/android/server/ZsPowerMonitorService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$LocalService;

    iput-object v0, p0, Lcom/android/server/ZsPowerMonitorService;->mAlarmManagerInternal:Lcom/android/server/AlarmManagerService$LocalService;

    .line 116
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/ZsPowerMonitorService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, p0, Lcom/android/server/ZsPowerMonitorService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 117
    new-instance v0, Lcom/android/server/ZsPowerMonitorService$LocalService;

    invoke-direct {v0, p0}, Lcom/android/server/ZsPowerMonitorService$LocalService;-><init>(Lcom/android/server/ZsPowerMonitorService;)V

    iput-object v0, p0, Lcom/android/server/ZsPowerMonitorService;->mZsPowerMonitorInternal:Landroid/os/ZsPowerMonitorInternal;

    .line 120
    const-string/jumbo v0, "zs_power"

    new-instance v1, Lcom/android/server/ZsPowerMonitorService$ZsBinderService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/ZsPowerMonitorService$ZsBinderService;-><init>(Lcom/android/server/ZsPowerMonitorService;Lcom/android/server/ZsPowerMonitorService$ZsBinderService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ZsPowerMonitorService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 121
    const-class v0, Landroid/os/ZsPowerMonitorInternal;

    iget-object v1, p0, Lcom/android/server/ZsPowerMonitorService;->mZsPowerMonitorInternal:Landroid/os/ZsPowerMonitorInternal;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ZsPowerMonitorService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 123
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 124
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ZsPowerMonitorService;->mHandler:Lcom/android/server/ZsPowerMonitorService$ZsPowerMonitorHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;)V

    .line 113
    return-void
.end method

.method preInit()V
    .locals 4

    .prologue
    .line 230
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 231
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 232
    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 233
    const-string/jumbo v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 234
    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 235
    const-string/jumbo v1, "com.yulong.intent.action.BETA_KEY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 236
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 237
    iget-object v1, p0, Lcom/android/server/ZsPowerMonitorService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/ZsPowerMonitorService$PowerBroadcastReceiver;

    invoke-direct {v2, p0}, Lcom/android/server/ZsPowerMonitorService$PowerBroadcastReceiver;-><init>(Lcom/android/server/ZsPowerMonitorService;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 239
    iget-object v2, p0, Lcom/android/server/ZsPowerMonitorService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 240
    :try_start_0
    const-string/jumbo v1, "persist.sys.zs.pm.report"

    const/4 v3, 0x1

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/ZsPowerMonitorService;->mReportIssue:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 229
    return-void

    .line 239
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
