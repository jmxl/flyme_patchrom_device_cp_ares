.class public Lcom/android/server/usage/UsageStatsService;
.super Lcom/android/server/SystemService;
.source "UsageStatsService.java"

# interfaces
.implements Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/UsageStatsService$1;,
        Lcom/android/server/usage/UsageStatsService$BinderService;,
        Lcom/android/server/usage/UsageStatsService$DeviceStateReceiver;,
        Lcom/android/server/usage/UsageStatsService$H;,
        Lcom/android/server/usage/UsageStatsService$LocalService;,
        Lcom/android/server/usage/UsageStatsService$PackageReceiver;,
        Lcom/android/server/usage/UsageStatsService$Receiver;,
        Lcom/android/server/usage/UsageStatsService$SettingsObserver;,
        Lcom/android/server/usage/UsageStatsService$UserActionsReceiver;
    }
.end annotation


# static fields
.field static final COMPRESS_TIME:Z = false

.field static final DEBUG:Z = false

.field private static final DEFAULT_LAST_PACKAGE:Ljava/lang/String; = "com.android.launcher3"

.field private static final FLUSH_INTERVAL:J = 0x124f80L

.field private static final INFORM_APP_STATUS_LISTENERS_DELAY:I = 0xea60

.field static final MSG_CHECK_IDLE_STATES:I = 0x5

.field static final MSG_CHECK_PAROLE_TIMEOUT:I = 0x6

.field static final MSG_FLUSH_TO_DISK:I = 0x1

.field static final MSG_FORCE_IDLE_STATE:I = 0x4

.field static final MSG_INFORM_LISTENERS:I = 0x3

.field static final MSG_ONE_TIME_CHECK_IDLE_STATES:I = 0xa

.field static final MSG_PAROLE_END_TIMEOUT:I = 0x7

.field static final MSG_PAROLE_STATE_CHANGED:I = 0x9

.field static final MSG_REMOVE_USER:I = 0x2

.field static final MSG_REPORT_CONTENT_PROVIDER_USAGE:I = 0x8

.field static final MSG_REPORT_EVENT:I = 0x0

.field private static final ONE_MINUTE:J = 0xea60L

.field static final TAG:Ljava/lang/String; = "UsageStatsService"

.field private static final TEN_SECONDS:J = 0x2710L

.field private static final TIME_CHANGE_THRESHOLD_MILLIS:J = 0x7d0L

.field private static final TWENTY_MINUTES:J = 0x124f80L


# instance fields
.field private foregroundAppChangeListener:Landroid/app/usage/IForegroundAppChangeCallback;

.field private volatile isScreenOff:Z

.field mAppIdleEnabled:Z

.field private mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field mAppIdleParoleDurationMillis:J

.field mAppIdleParoleIntervalMillis:J

.field mAppIdleScreenThresholdMillis:J

.field mAppIdleTempParoled:Z

.field mAppIdleWallclockThresholdMillis:J

.field mAppOps:Landroid/app/AppOpsManager;

.field private mAppStatusInternalListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/usage/UsageStatsManagerInternal$AppStatusChangeInternalListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mAppStatusListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/android/server/usage/UsageStatsService$Receiver;",
            ">;"
        }
    .end annotation
.end field

.field mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mCarrierPrivilegedApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mCharging:Z

.field mCheckIdleIntervalMillis:J

.field mDeviceIdleController:Landroid/os/IDeviceIdleController;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field mHandler:Landroid/os/Handler;

.field private mHaveCarrierPrivilegedApps:Z

.field private mLastAppIdleParoledTime:J

.field private volatile mLastBackgroundPackage:Ljava/lang/String;

.field private volatile mLastForgroundPackage:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private volatile mNotifyBackgroundPackage:Ljava/lang/String;

.field private volatile mNotifyForgroundPackage:Ljava/lang/String;

.field private mPackageAccessListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field mPackageManager:Landroid/content/pm/PackageManager;

.field private volatile mPendingOneTimeCheckIdleStates:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field mRealTimeSnapshot:J

.field private volatile mReportBackgroundPackage:Ljava/lang/String;

.field private volatile mReportForgroundPackage:Ljava/lang/String;

.field private mSystemServicesReady:Z

.field mSystemTimeSnapshot:J

.field private mUsageStatsDir:Ljava/io/File;

.field mUserManager:Landroid/os/UserManager;

.field private final mUserState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/usage/UserUsageStatsService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/usage/UsageStatsService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/usage/UsageStatsService;->isScreenOff:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/usage/UsageStatsService;)Lcom/android/server/usage/AppIdleHistory;
    .locals 1

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/usage/UsageStatsService;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStatusListeners:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/usage/UsageStatsService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/usage/UsageStatsService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mNotifyBackgroundPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/usage/UsageStatsService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mReportBackgroundPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/usage/UsageStatsService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mReportForgroundPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/usage/UsageStatsService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/usage/UsageStatsService;->isScreenOff:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/usage/UsageStatsService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mNotifyBackgroundPackage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/usage/UsageStatsService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mNotifyForgroundPackage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/usage/UsageStatsService;Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService;->isAppForground(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/usage/UsageStatsService;Ljava/lang/String;IIJ)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appId"    # I
    .param p3, "userId"    # I
    .param p4, "elapsedRealtime"    # J

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/server/usage/UsageStatsService;->isAppIdleFiltered(Ljava/lang/String;IIJ)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/usage/UsageStatsService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->isDisplayOn()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/usage/UsageStatsService;IJ)Lcom/android/server/usage/UserUsageStatsService;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "currentTimeMillis"    # J

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/usage/UsageStatsService;->getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Lcom/android/server/usage/UsageStatsService;)J
    .locals 2

    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap5(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$Receiver;)V
    .locals 0
    .param p1, "receiver"    # Lcom/android/server/usage/UsageStatsService$Receiver;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService;->removeYulongAppUsageListener(Lcom/android/server/usage/UsageStatsService$Receiver;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 180
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 134
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    .line 145
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    .line 156
    iput-boolean v1, p0, Lcom/android/server/usage/UsageStatsService;->mSystemServicesReady:Z

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mPackageAccessListeners:Ljava/util/ArrayList;

    .line 167
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStatusListeners:Ljava/util/HashMap;

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStatusInternalListeners:Ljava/util/ArrayList;

    .line 170
    const-string/jumbo v0, "com.android.launcher3"

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLastBackgroundPackage:Ljava/lang/String;

    .line 171
    const-string/jumbo v0, "com.android.launcher3"

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLastForgroundPackage:Ljava/lang/String;

    .line 172
    const-string/jumbo v0, "com.android.launcher3"

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mNotifyForgroundPackage:Ljava/lang/String;

    .line 173
    const-string/jumbo v0, "com.android.launcher3"

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mNotifyBackgroundPackage:Ljava/lang/String;

    .line 174
    iput-boolean v1, p0, Lcom/android/server/usage/UsageStatsService;->isScreenOff:Z

    .line 176
    const-string/jumbo v0, "com.android.launcher3"

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mReportBackgroundPackage:Ljava/lang/String;

    .line 177
    const-string/jumbo v0, "com.android.launcher3"

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mReportForgroundPackage:Ljava/lang/String;

    .line 391
    new-instance v0, Lcom/android/server/usage/UsageStatsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/usage/UsageStatsService$1;-><init>(Lcom/android/server/usage/UsageStatsService;)V

    .line 390
    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 179
    return-void
.end method

.method private checkAndGetTimeLocked()J
    .locals 18

    .prologue
    .line 685
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 686
    .local v4, "actualSystemTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 687
    .local v2, "actualRealtime":J
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/usage/UsageStatsService;->mRealTimeSnapshot:J

    sub-long v14, v2, v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/usage/UsageStatsService;->mSystemTimeSnapshot:J

    move-wide/from16 v16, v0

    add-long v8, v14, v16

    .line 688
    .local v8, "expectedSystemTime":J
    sub-long v6, v4, v8

    .line 689
    .local v6, "diffSystemTime":J
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    const-wide/16 v16, 0x7d0

    cmp-long v13, v14, v16

    if-lez v13, :cond_1

    .line 691
    const-string/jumbo v13, "UsageStatsService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Time changed in UsageStats by "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-wide/16 v16, 0x3e8

    div-long v16, v6, v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " seconds"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v12

    .line 693
    .local v12, "userCount":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v12, :cond_0

    .line 694
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v13, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/usage/UserUsageStatsService;

    .line 695
    .local v11, "service":Lcom/android/server/usage/UserUsageStatsService;
    invoke-virtual {v11, v8, v9, v4, v5}, Lcom/android/server/usage/UserUsageStatsService;->onTimeChanged(JJ)V

    .line 693
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 697
    .end local v11    # "service":Lcom/android/server/usage/UserUsageStatsService;
    :cond_0
    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/usage/UsageStatsService;->mRealTimeSnapshot:J

    .line 698
    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/usage/UsageStatsService;->mSystemTimeSnapshot:J

    .line 700
    .end local v10    # "i":I
    .end local v12    # "userCount":I
    :cond_1
    return-wide v4
.end method

.method private cleanUpRemovedUsersLocked()V
    .locals 10

    .prologue
    .line 447
    iget-object v7, p0, Lcom/android/server/usage/UsageStatsService;->mUserManager:Landroid/os/UserManager;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v6

    .line 448
    .local v6, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 449
    :cond_0
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string/jumbo v8, "There can\'t be no users"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 452
    :cond_1
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 453
    .local v3, "toDelete":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 454
    .local v1, "fileNames":[Ljava/lang/String;
    if-nez v1, :cond_2

    .line 456
    return-void

    .line 459
    :cond_2
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 461
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .line 462
    .local v4, "userCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_3

    .line 463
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 464
    .local v5, "userInfo":Landroid/content/pm/UserInfo;
    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 462
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 467
    .end local v5    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_3
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 468
    .local v0, "deleteCount":I
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_4

    .line 469
    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsDir:Ljava/io/File;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v8, v9, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v8}, Lcom/android/server/usage/UsageStatsService;->deleteRecursively(Ljava/io/File;)V

    .line 468
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 446
    :cond_4
    return-void
.end method

.method private convertToSystemTimeLocked(Landroid/app/usage/UsageEvents$Event;)V
    .locals 6
    .param p1, "event"    # Landroid/app/usage/UsageEvents$Event;

    .prologue
    .line 708
    const-wide/16 v0, 0x0

    iget-wide v2, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iget-wide v4, p0, Lcom/android/server/usage/UsageStatsService;->mRealTimeSnapshot:J

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/usage/UsageStatsService;->mSystemTimeSnapshot:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 707
    return-void
.end method

.method private static deleteRecursively(Ljava/io/File;)V
    .locals 5
    .param p0, "f"    # Ljava/io/File;

    .prologue
    .line 657
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 658
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_0

    .line 659
    const/4 v2, 0x0

    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 660
    .local v1, "subFile":Ljava/io/File;
    invoke-static {v1}, Lcom/android/server/usage/UsageStatsService;->deleteRecursively(Ljava/io/File;)V

    .line 659
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 664
    .end local v1    # "subFile":Ljava/io/File;
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_1

    .line 665
    const-string/jumbo v2, "UsageStatsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to delete "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :cond_1
    return-void
.end method

.method private fetchCarrierPrivilegedAppsLocked()V
    .locals 3

    .prologue
    .line 1216
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1217
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPackagesWithCarrierPrivileges()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mCarrierPrivilegedApps:Ljava/util/List;

    .line 1218
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/usage/UsageStatsService;->mHaveCarrierPrivilegedApps:Z

    .line 1214
    return-void
.end method

.method private flushToDiskLocked()V
    .locals 5

    .prologue
    .line 1275
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1276
    .local v2, "userCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1277
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/UserUsageStatsService;

    .line 1278
    .local v1, "service":Lcom/android/server/usage/UserUsageStatsService;
    invoke-virtual {v1}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    .line 1279
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/usage/AppIdleHistory;->writeAppIdleTimesLocked(I)V

    .line 1276
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1283
    .end local v1    # "service":Lcom/android/server/usage/UserUsageStatsService;
    :cond_0
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v3}, Lcom/android/server/usage/AppIdleHistory;->writeAppIdleDurationsLocked()V

    .line 1284
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1274
    return-void
.end method

.method private getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;
    .locals 6
    .param p1, "userId"    # I
    .param p2, "currentTimeMillis"    # J

    .prologue
    .line 671
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/UserUsageStatsService;

    .line 672
    .local v0, "service":Lcom/android/server/usage/UserUsageStatsService;
    if-nez v0, :cond_0

    .line 673
    new-instance v0, Lcom/android/server/usage/UserUsageStatsService;

    .end local v0    # "service":Lcom/android/server/usage/UserUsageStatsService;
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 674
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsDir:Ljava/io/File;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 673
    invoke-direct {v0, v1, p1, v2, p0}, Lcom/android/server/usage/UserUsageStatsService;-><init>(Landroid/content/Context;ILjava/io/File;Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;)V

    .line 675
    .restart local v0    # "service":Lcom/android/server/usage/UserUsageStatsService;
    invoke-virtual {v0, p2, p3}, Lcom/android/server/usage/UserUsageStatsService;->init(J)V

    .line 676
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 678
    :cond_0
    return-object v0
.end method

.method private initializeDefaultsForSystemApps(I)V
    .locals 10
    .param p1, "userId"    # I

    .prologue
    .line 425
    const-string/jumbo v7, "UsageStatsService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Initializing defaults for system apps on user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 427
    .local v0, "elapsedRealtime":J
    iget-object v7, p0, Lcom/android/server/usage/UsageStatsService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 428
    const/16 v8, 0x200

    .line 427
    invoke-virtual {v7, v8, p1}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v5

    .line 430
    .local v5, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    .line 431
    .local v3, "packageCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 432
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;

    .line 433
    .local v6, "pi":Landroid/content/pm/PackageInfo;
    iget-object v4, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 434
    .local v4, "packageName":Ljava/lang/String;
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v7, :cond_0

    iget-object v7, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 435
    iget-object v7, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v7, v4, p1, v0, v1}, Lcom/android/server/usage/AppIdleHistory;->reportUsageLocked(Ljava/lang/String;IJ)V

    .line 431
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 424
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v6    # "pi":Landroid/content/pm/PackageInfo;
    :cond_1
    return-void
.end method

.method private isActiveDeviceAdmin(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1177
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 1178
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 1179
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;I)Z

    move-result v1

    return v1
.end method

.method private isActiveNetworkScorer(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1225
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1226
    const-string/jumbo v2, "network_score"

    .line 1225
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkScoreManager;

    .line 1227
    .local v0, "nsm":Landroid/net/NetworkScoreManager;
    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkScoreManager;->getActiveScorerPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isAppForground(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 321
    if-eqz p1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    :cond_0
    return v1

    .line 324
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/usage/UsageStatsService;->isScreenOff:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLastForgroundPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 325
    const/4 v0, 0x1

    return v0

    .line 327
    :cond_2
    return v1
.end method

.method private isAppIdleFiltered(Ljava/lang/String;IIJ)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appId"    # I
    .param p3, "userId"    # I
    .param p4, "elapsedRealtime"    # J

    .prologue
    const/4 v2, 0x0

    .line 1048
    if-nez p1, :cond_0

    return v2

    .line 1050
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleEnabled:Z

    if-nez v1, :cond_1

    .line 1051
    return v2

    .line 1053
    :cond_1
    const/16 v1, 0x2710

    if-ge p2, v1, :cond_2

    .line 1055
    return v2

    .line 1057
    :cond_2
    const-string/jumbo v1, "android"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1060
    return v2

    .line 1062
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/usage/UsageStatsService;->mSystemServicesReady:Z

    if-eqz v1, :cond_8

    .line 1067
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    invoke-interface {v1, p1}, Landroid/os/IDeviceIdleController;->isPowerSaveWhitelistExceptIdleApp(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_4

    .line 1068
    return v2

    .line 1070
    :catch_0
    move-exception v0

    .line 1071
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1074
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_4
    invoke-direct {p0, p1, p3}, Lcom/android/server/usage/UsageStatsService;->isActiveDeviceAdmin(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1075
    return v2

    .line 1078
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService;->isActiveNetworkScorer(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1079
    return v2

    .line 1082
    :cond_6
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    if-eqz v1, :cond_7

    .line 1083
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v1, p1, p3}, Landroid/appwidget/AppWidgetManager;->isBoundWidgetPackage(Ljava/lang/String;I)Z

    move-result v1

    .line 1082
    if-eqz v1, :cond_7

    .line 1084
    return v2

    .line 1087
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService;->isDeviceProvisioningPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1088
    return v2

    .line 1092
    :cond_8
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/android/server/usage/UsageStatsService;->isAppIdleUnfiltered(Ljava/lang/String;IJ)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1093
    return v2

    .line 1098
    :cond_9
    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService;->isCarrierApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1099
    return v2

    .line 1102
    :cond_a
    const/4 v1, 0x1

    return v1
.end method

.method private isAppIdleUnfiltered(Ljava/lang/String;IJ)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "elapsedRealtime"    # J

    .prologue
    .line 952
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 953
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->isIdleLocked(Ljava/lang/String;IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 952
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isCarrierApp(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1193
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1194
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/usage/UsageStatsService;->mHaveCarrierPrivilegedApps:Z

    if-nez v0, :cond_0

    .line 1195
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->fetchCarrierPrivilegedAppsLocked()V

    .line 1197
    :cond_0
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mCarrierPrivilegedApps:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1198
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mCarrierPrivilegedApps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 1200
    :cond_1
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    .line 1193
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isDeviceProvisioningPackage(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1187
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1188
    const v2, 0x104007f

    .line 1187
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1189
    .local v0, "deviceProvisioningPackage":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isDisplayOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 332
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getState()I

    move-result v1

    .line 333
    const/4 v2, 0x2

    .line 332
    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isSystemApp(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 302
    const/4 v1, 0x0

    .line 304
    .local v1, "flag":Z
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v4, 0x4000

    invoke-virtual {v3, p1, v4, p2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 305
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v3, :cond_1

    .line 306
    :cond_0
    return v1

    .line 308
    :cond_1
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_3

    .line 310
    const/4 v1, 0x1

    .line 317
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_2
    :goto_0
    return v1

    .line 311
    .restart local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_3
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    .line 313
    const/4 v1, 0x1

    goto :goto_0

    .line 315
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private notifyBatteryStats(Ljava/lang/String;IZ)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "idle"    # Z

    .prologue
    .line 627
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 628
    const/16 v3, 0x2000

    .line 627
    invoke-virtual {v2, p1, v3, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result v1

    .line 629
    .local v1, "uid":I
    if-eqz p3, :cond_0

    .line 630
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const/16 v3, 0xf

    invoke-interface {v2, v3, p1, v1}, Lcom/android/internal/app/IBatteryStats;->noteEvent(ILjava/lang/String;I)V

    .line 625
    .end local v1    # "uid":I
    :goto_0
    return-void

    .line 633
    .restart local v1    # "uid":I
    :cond_0
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const/16 v3, 0x10

    invoke-interface {v2, v3, p1, v1}, Lcom/android/internal/app/IBatteryStats;->noteEvent(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 636
    .end local v1    # "uid":I
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/util/AndroidException;
    goto :goto_0
.end method

.method private postNextParoleTimeout()V
    .locals 7

    .prologue
    const/4 v6, 0x6

    .line 512
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 516
    iget-wide v2, p0, Lcom/android/server/usage/UsageStatsService;->mLastAppIdleParoledTime:J

    iget-wide v4, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleParoleIntervalMillis:J

    add-long/2addr v2, v4

    .line 517
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v4

    .line 516
    sub-long v0, v2, v4

    .line 518
    .local v0, "timeLeft":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 519
    const-wide/16 v0, 0x0

    .line 521
    :cond_0
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 510
    return-void
.end method

.method private postParoleEndTimeout()V
    .locals 4

    .prologue
    const/4 v1, 0x7

    .line 526
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 527
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleParoleDurationMillis:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 524
    return-void
.end method

.method private postParoleStateChanged()V
    .locals 2

    .prologue
    const/16 v1, 0x9

    .line 532
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 533
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 530
    return-void
.end method

.method private removeYulongAppUsageListener(Lcom/android/server/usage/UsageStatsService$Receiver;)V
    .locals 2
    .param p1, "receiver"    # Lcom/android/server/usage/UsageStatsService$Receiver;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStatusListeners:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/server/usage/UsageStatsService$Receiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {p1}, Lcom/android/server/usage/UsageStatsService$Receiver;->getListener()Landroid/app/usage/IYulongAppStatusListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/usage/IYulongAppStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 295
    :cond_0
    return-void
.end method

.method private static validRange(JJJ)Z
    .locals 2
    .param p0, "currentTime"    # J
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J

    .prologue
    const/4 v0, 0x0

    .line 1271
    cmp-long v1, p2, p0

    if-gtz v1, :cond_0

    cmp-long v1, p2, p4

    if-gez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method addAppStatusInternalListener(Landroid/app/usage/UsageStatsManagerInternal$AppStatusChangeInternalListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/app/usage/UsageStatsManagerInternal$AppStatusChangeInternalListener;

    .prologue
    .line 986
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mAppStatusInternalListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 987
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStatusInternalListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 988
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStatusInternalListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 985
    return-void

    .line 986
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method addAppStatusListener(Landroid/app/usage/IYulongAppStatusListener;)V
    .locals 6
    .param p1, "listener"    # Landroid/app/usage/IYulongAppStatusListener;

    .prologue
    .line 967
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService;->mAppStatusListeners:Ljava/util/HashMap;

    monitor-enter v4

    .line 968
    if-nez p1, :cond_0

    monitor-exit v4

    return-void

    .line 969
    :cond_0
    :try_start_0
    invoke-interface {p1}, Landroid/app/usage/IYulongAppStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 970
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mAppStatusListeners:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usage/UsageStatsService$Receiver;

    .line 972
    .local v2, "receiver":Lcom/android/server/usage/UsageStatsService$Receiver;
    if-nez v2, :cond_1

    .line 973
    new-instance v2, Lcom/android/server/usage/UsageStatsService$Receiver;

    .end local v2    # "receiver":Lcom/android/server/usage/UsageStatsService$Receiver;
    invoke-direct {v2, p0, p1}, Lcom/android/server/usage/UsageStatsService$Receiver;-><init>(Lcom/android/server/usage/UsageStatsService;Landroid/app/usage/IYulongAppStatusListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 975
    .restart local v2    # "receiver":Lcom/android/server/usage/UsageStatsService$Receiver;
    :try_start_1
    invoke-virtual {v2}, Lcom/android/server/usage/UsageStatsService$Receiver;->getListener()Landroid/app/usage/IYulongAppStatusListener;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/usage/IYulongAppStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v5, 0x0

    invoke-interface {v3, v2, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 980
    :try_start_2
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mAppStatusListeners:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    monitor-exit v4

    .line 966
    return-void

    .line 976
    :catch_0
    move-exception v1

    .line 977
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v3, "UsageStatsService"

    const-string/jumbo v5, "linkToDeath failed:"

    invoke-static {v3, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v4

    .line 978
    return-void

    .line 967
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "receiver":Lcom/android/server/usage/UsageStatsService$Receiver;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method addListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;

    .prologue
    .line 958
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 959
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mPackageAccessListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 960
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mPackageAccessListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 957
    return-void

    .line 958
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method checkIdleStates(I)Z
    .locals 18
    .param p1, "checkUserId"    # I

    .prologue
    .line 559
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/usage/UsageStatsService;->mAppIdleEnabled:Z

    if-nez v2, :cond_0

    .line 560
    const/4 v2, 0x0

    return v2

    .line 565
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getRunningUserIds()[I

    move-result-object v15

    .line 566
    .local v15, "runningUserIds":[I
    const/4 v2, -0x1

    move/from16 v0, p1

    if-eq v0, v2, :cond_1

    .line 567
    move/from16 v0, p1

    invoke-static {v15, v0}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_3

    .line 574
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 575
    .local v6, "elapsedRealtime":J
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v2, v15

    if-ge v8, v2, :cond_7

    .line 576
    aget v5, v15, v8

    .line 577
    .local v5, "userId":I
    const/4 v2, -0x1

    move/from16 v0, p1

    if-eq v0, v2, :cond_4

    move/from16 v0, p1

    if-eq v0, v5, :cond_4

    .line 575
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 568
    .end local v5    # "userId":I
    .end local v6    # "elapsedRealtime":J
    .end local v8    # "i":I
    :cond_3
    const/4 v2, 0x0

    return v2

    .line 570
    .end local v15    # "runningUserIds":[I
    :catch_0
    move-exception v14

    .line 571
    .local v14, "re":Landroid/os/RemoteException;
    invoke-virtual {v14}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 583
    .end local v14    # "re":Landroid/os/RemoteException;
    .restart local v5    # "userId":I
    .restart local v6    # "elapsedRealtime":J
    .restart local v8    # "i":I
    .restart local v15    # "runningUserIds":[I
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usage/UsageStatsService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 584
    const/16 v4, 0x200

    .line 583
    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v12

    .line 586
    .local v12, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v11

    .line 587
    .local v11, "packageCount":I
    const/4 v10, 0x0

    .local v10, "p":I
    :goto_1
    if-ge v10, v11, :cond_2

    .line 588
    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/PackageInfo;

    .line 589
    .local v13, "pi":Landroid/content/pm/PackageInfo;
    iget-object v3, v13, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 591
    .local v3, "packageName":Ljava/lang/String;
    iget-object v2, v13, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    move-object/from16 v2, p0

    .line 590
    invoke-direct/range {v2 .. v7}, Lcom/android/server/usage/UsageStatsService;->isAppIdleFiltered(Ljava/lang/String;IIJ)Z

    move-result v9

    .line 593
    .local v9, "isIdle":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    .line 594
    if-eqz v9, :cond_6

    const/4 v2, 0x1

    .line 593
    :goto_2
    const/16 v17, 0x3

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 595
    if-eqz v9, :cond_5

    .line 596
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 597
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usage/UsageStatsService;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v2, v3, v5, v6, v7}, Lcom/android/server/usage/AppIdleHistory;->setIdle(Ljava/lang/String;IJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    .line 587
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 594
    :cond_6
    const/4 v2, 0x0

    goto :goto_2

    .line 596
    :catchall_0
    move-exception v2

    monitor-exit v4

    throw v2

    .line 606
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v5    # "userId":I
    .end local v9    # "isIdle":Z
    .end local v10    # "p":I
    .end local v11    # "packageCount":I
    .end local v12    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v13    # "pi":Landroid/content/pm/PackageInfo;
    :cond_7
    const/4 v2, 0x1

    return v2
.end method

.method checkParoleTimeout()V
    .locals 8

    .prologue
    .line 611
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 612
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleTempParoled:Z

    if-nez v2, :cond_0

    .line 613
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/usage/UsageStatsService;->mLastAppIdleParoledTime:J

    sub-long v0, v4, v6

    .line 614
    .local v0, "timeSinceLastParole":J
    iget-wide v4, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleParoleIntervalMillis:J

    cmp-long v2, v0, v4

    if-lez v2, :cond_1

    .line 616
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/usage/UsageStatsService;->setAppIdleParoled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "timeSinceLastParole":J
    :cond_0
    :goto_0
    monitor-exit v3

    .line 610
    return-void

    .line 619
    .restart local v0    # "timeSinceLastParole":J
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->postNextParoleTimeout()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 611
    .end local v0    # "timeSinceLastParole":J
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method clearAppIdleForPackage(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 441
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 442
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/AppIdleHistory;->clearUsageLocked(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 440
    return-void

    .line 441
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method clearAppStatusListeners()V
    .locals 2

    .prologue
    .line 1016
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mAppStatusListeners:Ljava/util/HashMap;

    monitor-enter v1

    .line 1017
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStatusListeners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1015
    return-void

    .line 1016
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method clearCarrierPrivilegedApps()V
    .locals 2

    .prologue
    .line 1208
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1209
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/usage/UsageStatsService;->mHaveCarrierPrivilegedApps:Z

    .line 1210
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mCarrierPrivilegedApps:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1204
    return-void

    .line 1208
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method dump([Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 8
    .param p1, "args"    # [Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1291
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1292
    :try_start_0
    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v4, "  "

    invoke-direct {v2, p2, v4}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1293
    .local v2, "idpw":Lcom/android/internal/util/IndentingPrintWriter;
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1294
    .local v0, "argSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 1296
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 1297
    .local v3, "userCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 1298
    const-string/jumbo v4, "user"

    iget-object v6, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1299
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1300
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1301
    const-string/jumbo v4, "--checkin"

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1302
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/usage/UserUsageStatsService;

    invoke-virtual {v4, v2}, Lcom/android/server/usage/UserUsageStatsService;->checkin(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1315
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    iget-object v6, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v4, v2, v6}, Lcom/android/server/usage/AppIdleHistory;->dump(Lcom/android/internal/util/IndentingPrintWriter;I)V

    .line 1316
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1297
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1304
    :cond_1
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/usage/UserUsageStatsService;

    invoke-virtual {v4, v2}, Lcom/android/server/usage/UserUsageStatsService;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1305
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1306
    array-length v4, p1

    if-lez v4, :cond_0

    .line 1307
    const-string/jumbo v4, "history"

    const/4 v6, 0x0

    aget-object v6, p1, v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1308
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    iget-object v6, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v4, v2, v6}, Lcom/android/server/usage/AppIdleHistory;->dumpHistory(Lcom/android/internal/util/IndentingPrintWriter;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1291
    .end local v0    # "argSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v1    # "i":I
    .end local v2    # "idpw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v3    # "userCount":I
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 1309
    .restart local v0    # "argSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v1    # "i":I
    .restart local v2    # "idpw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v3    # "userCount":I
    :cond_2
    :try_start_1
    const-string/jumbo v4, "flush"

    const/4 v6, 0x0

    aget-object v6, p1, v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1310
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->flushToDiskLocked()V

    .line 1311
    const-string/jumbo v4, "Flushed stats to disk"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 1319
    :cond_3
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1320
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Carrier privileged apps (have="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v6, p0, Lcom/android/server/usage/UsageStatsService;->mHaveCarrierPrivilegedApps:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1321
    const-string/jumbo v6, "): "

    .line 1320
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1321
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsService;->mCarrierPrivilegedApps:Ljava/util/List;

    .line 1320
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1323
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1324
    const-string/jumbo v4, "Settings:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1326
    const-string/jumbo v4, "  mAppIdleDurationMillis="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1327
    iget-wide v6, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleScreenThresholdMillis:J

    invoke-static {v6, v7, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1328
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1330
    const-string/jumbo v4, "  mAppIdleWallclockThresholdMillis="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1331
    iget-wide v6, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleWallclockThresholdMillis:J

    invoke-static {v6, v7, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1332
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1334
    const-string/jumbo v4, "  mCheckIdleIntervalMillis="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1335
    iget-wide v6, p0, Lcom/android/server/usage/UsageStatsService;->mCheckIdleIntervalMillis:J

    invoke-static {v6, v7, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1336
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1338
    const-string/jumbo v4, "  mAppIdleParoleIntervalMillis="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1339
    iget-wide v6, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleParoleIntervalMillis:J

    invoke-static {v6, v7, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1340
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1342
    const-string/jumbo v4, "  mAppIdleParoleDurationMillis="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1343
    iget-wide v6, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleParoleDurationMillis:J

    invoke-static {v6, v7, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1344
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1346
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1347
    const-string/jumbo v4, "mAppIdleEnabled="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleEnabled:Z

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 1348
    const-string/jumbo v4, " mAppIdleTempParoled="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleTempParoled:Z

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 1349
    const-string/jumbo v4, " mCharging="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/server/usage/UsageStatsService;->mCharging:Z

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 1350
    const-string/jumbo v4, " mLastAppIdleParoledTime="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1351
    iget-wide v6, p0, Lcom/android/server/usage/UsageStatsService;->mLastAppIdleParoledTime:J

    invoke-static {v6, v7, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1352
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    .line 1290
    return-void
.end method

.method flushToDisk()V
    .locals 2

    .prologue
    .line 885
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 886
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->flushToDiskLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 884
    return-void

    .line 885
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method forceIdleState(Ljava/lang/String;IZ)V
    .locals 17
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "idle"    # Z

    .prologue
    .line 860
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/usage/UsageStatsService;->getAppId(Ljava/lang/String;)I

    move-result v4

    .line 861
    .local v4, "appId":I
    if-gez v4, :cond_0

    return-void

    .line 862
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 863
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .local v6, "elapsedRealtime":J
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v5, p2

    .line 865
    invoke-direct/range {v2 .. v7}, Lcom/android/server/usage/UsageStatsService;->isAppIdleFiltered(Ljava/lang/String;IIJ)Z

    move-result v14

    .line 867
    .local v14, "previouslyIdle":Z
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/usage/UsageStatsService;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move-wide v12, v6

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/usage/AppIdleHistory;->setIdleLocked(Ljava/lang/String;IZJ)V

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v5, p2

    .line 868
    invoke-direct/range {v2 .. v7}, Lcom/android/server/usage/UsageStatsService;->isAppIdleFiltered(Ljava/lang/String;IIJ)Z

    move-result v15

    .line 871
    .local v15, "stillIdle":Z
    if-eq v14, v15, :cond_1

    .line 872
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    .line 873
    if-eqz v15, :cond_2

    const/4 v2, 0x1

    .line 872
    :goto_0
    const/4 v8, 0x3

    move/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v5, v8, v0, v2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 874
    if-nez v15, :cond_1

    .line 875
    invoke-direct/range {p0 .. p3}, Lcom/android/server/usage/UsageStatsService;->notifyBatteryStats(Ljava/lang/String;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v16

    .line 859
    return-void

    .line 873
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 862
    .end local v6    # "elapsedRealtime":J
    .end local v14    # "previouslyIdle":Z
    .end local v15    # "stillIdle":Z
    :catchall_0
    move-exception v2

    monitor-exit v16

    throw v2
.end method

.method getAppId(Ljava/lang/String;)I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1024
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1025
    const/16 v3, 0x2200

    .line 1024
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1027
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 1028
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 1029
    .local v1, "re":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, -0x1

    return v2
.end method

.method getIdleUidsForUser(I)[I
    .locals 19
    .param p1, "userId"    # I

    .prologue
    .line 1106
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/usage/UsageStatsService;->mAppIdleEnabled:Z

    if-nez v2, :cond_0

    .line 1107
    const/4 v2, 0x0

    new-array v2, v2, [I

    return-object v2

    .line 1110
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1114
    .local v6, "elapsedRealtime":J
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 1115
    const/4 v3, 0x0

    .line 1114
    move/from16 v0, p1

    invoke-interface {v2, v3, v0}, Landroid/content/pm/IPackageManager;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v16

    .line 1116
    .local v16, "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    if-nez v16, :cond_1

    .line 1117
    const/4 v2, 0x0

    new-array v2, v2, [I

    return-object v2

    .line 1119
    :cond_1
    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 1126
    .local v9, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v17, Landroid/util/SparseIntArray;

    invoke-direct/range {v17 .. v17}, Landroid/util/SparseIntArray;-><init>()V

    .line 1130
    .local v17, "uidStates":Landroid/util/SparseIntArray;
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v11, v2, -0x1

    .local v11, "i":I
    :goto_0
    if-ltz v11, :cond_5

    .line 1131
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ApplicationInfo;

    .line 1134
    .local v8, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v3, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v2, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    move-object/from16 v2, p0

    move/from16 v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/usage/UsageStatsService;->isAppIdleFiltered(Ljava/lang/String;IIJ)Z

    move-result v12

    .line 1137
    .local v12, "idle":Z
    iget v2, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v13

    .line 1138
    .local v13, "index":I
    if-gez v13, :cond_3

    .line 1139
    iget v3, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eqz v12, :cond_2

    const/high16 v2, 0x10000

    :goto_1
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1130
    :goto_2
    add-int/lit8 v11, v11, -0x1

    goto :goto_0

    .line 1120
    .end local v8    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v9    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v11    # "i":I
    .end local v12    # "idle":Z
    .end local v13    # "index":I
    .end local v16    # "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    .end local v17    # "uidStates":Landroid/util/SparseIntArray;
    :catch_0
    move-exception v10

    .line 1121
    .local v10, "e":Landroid/os/RemoteException;
    invoke-virtual {v10}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1139
    .end local v10    # "e":Landroid/os/RemoteException;
    .restart local v8    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v9    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v11    # "i":I
    .restart local v12    # "idle":Z
    .restart local v13    # "index":I
    .restart local v16    # "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v17    # "uidStates":Landroid/util/SparseIntArray;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 1141
    :cond_3
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v18

    .line 1142
    .local v18, "value":I
    add-int/lit8 v3, v18, 0x1

    if-eqz v12, :cond_4

    const/high16 v2, 0x10000

    :goto_3
    add-int/2addr v2, v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v13, v2}, Landroid/util/SparseIntArray;->setValueAt(II)V

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    goto :goto_3

    .line 1148
    .end local v8    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v12    # "idle":Z
    .end local v13    # "index":I
    .end local v18    # "value":I
    :cond_5
    const/4 v14, 0x0

    .line 1149
    .local v14, "numIdle":I
    invoke-virtual/range {v17 .. v17}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    add-int/lit8 v11, v2, -0x1

    :goto_4
    if-ltz v11, :cond_7

    .line 1150
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v18

    .line 1151
    .restart local v18    # "value":I
    move/from16 v0, v18

    and-int/lit16 v2, v0, 0x7fff

    shr-int/lit8 v3, v18, 0x10

    if-ne v2, v3, :cond_6

    .line 1152
    add-int/lit8 v14, v14, 0x1

    .line 1149
    :cond_6
    add-int/lit8 v11, v11, -0x1

    goto :goto_4

    .line 1156
    .end local v18    # "value":I
    :cond_7
    new-array v15, v14, [I

    .line 1157
    .local v15, "res":[I
    const/4 v14, 0x0

    .line 1158
    invoke-virtual/range {v17 .. v17}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    add-int/lit8 v11, v2, -0x1

    :goto_5
    if-ltz v11, :cond_9

    .line 1159
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v18

    .line 1160
    .restart local v18    # "value":I
    move/from16 v0, v18

    and-int/lit16 v2, v0, 0x7fff

    shr-int/lit8 v3, v18, 0x10

    if-ne v2, v3, :cond_8

    .line 1161
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    aput v2, v15, v14

    .line 1162
    add-int/lit8 v14, v14, 0x1

    .line 1158
    :cond_8
    add-int/lit8 v11, v11, -0x1

    goto :goto_5

    .line 1166
    .end local v18    # "value":I
    :cond_9
    return-object v15
.end method

.method informAppStatusInternalListeners(Ljava/lang/String;II)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "eventType"    # I
    .param p3, "uid"    # I

    .prologue
    .line 1260
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mAppStatusInternalListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1261
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mAppStatusInternalListeners:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal$AppStatusChangeInternalListener;

    .line 1262
    .local v0, "listener":Landroid/app/usage/UsageStatsManagerInternal$AppStatusChangeInternalListener;
    if-eqz v0, :cond_0

    .line 1263
    invoke-virtual {v0, p1, p2, p3}, Landroid/app/usage/UsageStatsManagerInternal$AppStatusChangeInternalListener;->onAppStatusChange(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1260
    .end local v0    # "listener":Landroid/app/usage/UsageStatsManagerInternal$AppStatusChangeInternalListener;
    .end local v1    # "listener$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v1    # "listener$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v3

    .line 1259
    return-void
.end method

.method informAppStatusListeners(Ljava/lang/String;II)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "eventType"    # I
    .param p3, "uid"    # I

    .prologue
    .line 1245
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService;->mAppStatusListeners:Ljava/util/HashMap;

    monitor-enter v4

    .line 1246
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mAppStatusListeners:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "receiver$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/UsageStatsService$Receiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1248
    .local v1, "receiver":Lcom/android/server/usage/UsageStatsService$Receiver;
    if-eqz v1, :cond_0

    .line 1249
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/usage/UsageStatsService$Receiver;->getListener()Landroid/app/usage/IYulongAppStatusListener;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Landroid/app/usage/IYulongAppStatusListener;->onAppStatusChange(Ljava/lang/String;II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1251
    :catch_0
    move-exception v0

    .line 1253
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v3, "UsageStatsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "informAppStatusListeners "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1245
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "receiver":Lcom/android/server/usage/UsageStatsService$Receiver;
    .end local v2    # "receiver$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v2    # "receiver$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v4

    .line 1244
    return-void
.end method

.method informListeners(Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "isIdle"    # Z

    .prologue
    .line 1231
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mPackageAccessListeners:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;

    .line 1232
    .local v0, "listener":Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;
    invoke-virtual {v0, p1, p2, p3}, Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;->onAppIdleStateChanged(Ljava/lang/String;IZ)V

    goto :goto_0

    .line 1230
    .end local v0    # "listener":Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;
    :cond_0
    return-void
.end method

.method informParoleStateChanged()V
    .locals 4

    .prologue
    .line 1237
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->isParoledOrCharging()Z

    move-result v2

    .line 1238
    .local v2, "paroled":Z
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mPackageAccessListeners:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;

    .line 1239
    .local v0, "listener":Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;
    invoke-virtual {v0, v2}, Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;->onParoleStateChanged(Z)V

    goto :goto_0

    .line 1236
    .end local v0    # "listener":Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;
    :cond_0
    return-void
.end method

.method isAppIdleFilteredOrParoled(Ljava/lang/String;IJ)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "elapsedRealtime"    # J

    .prologue
    .line 1034
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->isParoledOrCharging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1035
    const/4 v0, 0x0

    return v0

    .line 1037
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->getAppId(Ljava/lang/String;)I

    move-result v2

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usage/UsageStatsService;->isAppIdleFiltered(Ljava/lang/String;IIJ)Z

    move-result v0

    return v0
.end method

.method isParoledOrCharging()Z
    .locals 2

    .prologue
    .line 505
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 506
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleTempParoled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/usage/UsageStatsService;->mCharging:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 505
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onBootPhase(I)V
    .locals 6
    .param p1, "phase"    # I

    .prologue
    .line 239
    const/16 v1, 0x1f4

    if-ne p1, v1, :cond_2

    .line 241
    new-instance v0, Lcom/android/server/usage/UsageStatsService$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/usage/UsageStatsService$SettingsObserver;-><init>(Lcom/android/server/usage/UsageStatsService;Landroid/os/Handler;)V

    .line 242
    .local v0, "settingsObserver":Lcom/android/server/usage/UsageStatsService$SettingsObserver;
    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService$SettingsObserver;->registerObserver()V

    .line 243
    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService$SettingsObserver;->updateSettings()V

    .line 245
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/appwidget/AppWidgetManager;

    iput-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 247
    const-string/jumbo v1, "deviceidle"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 246
    invoke-static {v1}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    .line 249
    const-string/jumbo v1, "batterystats"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 248
    invoke-static {v1}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 250
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 251
    const-string/jumbo v2, "display"

    .line 250
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iput-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 252
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/os/PowerManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mPowerManager:Landroid/os/PowerManager;

    .line 254
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 255
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 256
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->isDisplayOn()Z

    move-result v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/server/usage/AppIdleHistory;->updateDisplayLocked(ZJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 259
    iget-boolean v1, p0, Lcom/android/server/usage/UsageStatsService;->mPendingOneTimeCheckIdleStates:Z

    if-eqz v1, :cond_0

    .line 260
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->postOneTimeCheckIdleStates()V

    .line 263
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/usage/UsageStatsService;->mSystemServicesReady:Z

    .line 238
    .end local v0    # "settingsObserver":Lcom/android/server/usage/UsageStatsService$SettingsObserver;
    :cond_1
    :goto_0
    return-void

    .line 255
    .restart local v0    # "settingsObserver":Lcom/android/server/usage/UsageStatsService$SettingsObserver;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 264
    .end local v0    # "settingsObserver":Lcom/android/server/usage/UsageStatsService$SettingsObserver;
    :cond_2
    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_1

    .line 265
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/os/BatteryManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryManager;

    invoke-virtual {v1}, Landroid/os/BatteryManager;->isCharging()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/usage/UsageStatsService;->setChargingState(Z)V

    goto :goto_0
.end method

.method onDeviceIdleModeChanged()V
    .locals 10

    .prologue
    .line 641
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v0

    .line 643
    .local v0, "deviceIdle":Z
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 644
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/usage/UsageStatsService;->mLastAppIdleParoledTime:J

    sub-long v2, v6, v8

    .line 645
    .local v2, "timeSinceLastParole":J
    if-nez v0, :cond_1

    .line 646
    iget-wide v6, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleParoleIntervalMillis:J

    cmp-long v1, v2, v6

    if-ltz v1, :cond_1

    .line 648
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/usage/UsageStatsService;->setAppIdleParoled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v4

    .line 640
    return-void

    .line 649
    :cond_1
    if-eqz v0, :cond_0

    .line 651
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, v1}, Lcom/android/server/usage/UsageStatsService;->setAppIdleParoled(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 643
    .end local v2    # "timeSinceLastParole":J
    :catchall_0
    move-exception v1

    monitor-exit v4

    throw v1
.end method

.method public onNewUpdate(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 421
    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService;->initializeDefaultsForSystemApps(I)V

    .line 420
    return-void
.end method

.method public onStart()V
    .locals 13

    .prologue
    const/4 v4, 0x0

    .line 185
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppOps:Landroid/app/AppOpsManager;

    .line 186
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUserManager:Landroid/os/UserManager;

    .line 187
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 188
    new-instance v0, Lcom/android/server/usage/UsageStatsService$H;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/usage/UsageStatsService$H;-><init>(Lcom/android/server/usage/UsageStatsService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    .line 190
    new-instance v12, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "system"

    invoke-direct {v12, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 191
    .local v12, "systemDataDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "usagestats"

    invoke-direct {v0, v12, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsDir:Ljava/io/File;

    .line 192
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 193
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Usage stats directory does not exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 195
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 194
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_0
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 199
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.USER_STARTED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 201
    const-string/jumbo v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 202
    const-string/jumbo v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/server/usage/UsageStatsService$UserActionsReceiver;

    invoke-direct {v1, p0, v4}, Lcom/android/server/usage/UsageStatsService$UserActionsReceiver;-><init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$UserActionsReceiver;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 205
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    .line 204
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 207
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 208
    .local v8, "packageFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 209
    const-string/jumbo v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 210
    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 211
    const-string/jumbo v0, "package"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Lcom/android/server/usage/UsageStatsService$PackageReceiver;

    invoke-direct {v6, p0, v4}, Lcom/android/server/usage/UsageStatsService$PackageReceiver;-><init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$PackageReceiver;)V

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 214
    iget-object v10, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    move-object v9, v4

    .line 213
    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 216
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 217
    const v1, 0x1120015

    .line 216
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleEnabled:Z

    .line 218
    iget-boolean v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleEnabled:Z

    if-eqz v0, :cond_1

    .line 219
    new-instance v11, Landroid/content/IntentFilter;

    const-string/jumbo v0, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v11, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 220
    .local v11, "deviceStates":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.os.action.DISCHARGING"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 221
    const-string/jumbo v0, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/server/usage/UsageStatsService$DeviceStateReceiver;

    invoke-direct {v1, p0, v4}, Lcom/android/server/usage/UsageStatsService$DeviceStateReceiver;-><init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$DeviceStateReceiver;)V

    invoke-virtual {v0, v1, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 225
    .end local v11    # "deviceStates":Landroid/content/IntentFilter;
    :cond_1
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 226
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->cleanUpRemovedUsersLocked()V

    .line 227
    new-instance v0, Lcom/android/server/usage/AppIdleHistory;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-direct {v0, v6, v7}, Lcom/android/server/usage/AppIdleHistory;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 230
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/usage/UsageStatsService;->mRealTimeSnapshot:J

    .line 231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/usage/UsageStatsService;->mSystemTimeSnapshot:J

    .line 233
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    new-instance v1, Lcom/android/server/usage/UsageStatsService$LocalService;

    invoke-direct {v1, p0, v4}, Lcom/android/server/usage/UsageStatsService$LocalService;-><init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$LocalService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/usage/UsageStatsService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 234
    const-string/jumbo v0, "usagestats"

    new-instance v1, Lcom/android/server/usage/UsageStatsService$BinderService;

    invoke-direct {v1, p0, v4}, Lcom/android/server/usage/UsageStatsService$BinderService;-><init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$BinderService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/usage/UsageStatsService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 184
    return-void

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onStatsReloaded()V
    .locals 0

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->postOneTimeCheckIdleStates()V

    .line 415
    return-void
.end method

.method public onStatsUpdated()V
    .locals 4

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/32 v2, 0x124f80

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 410
    return-void
.end method

.method onUserRemoved(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 894
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 895
    :try_start_0
    const-string/jumbo v0, "UsageStatsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Removing user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " and all data."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 897
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v0, p1}, Lcom/android/server/usage/AppIdleHistory;->onUserRemoved(I)V

    .line 898
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->cleanUpRemovedUsersLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 893
    return-void

    .line 894
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method postCheckIdleStates(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 537
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 536
    return-void
.end method

.method postOneTimeCheckIdleStates()V
    .locals 2

    .prologue
    .line 545
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    if-nez v0, :cond_0

    .line 547
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/usage/UsageStatsService;->mPendingOneTimeCheckIdleStates:Z

    .line 544
    :goto_0
    return-void

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 550
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usage/UsageStatsService;->mPendingOneTimeCheckIdleStates:Z

    goto :goto_0
.end method

.method queryConfigurationStats(IIJJ)Ljava/util/List;
    .locals 9
    .param p1, "userId"    # I
    .param p2, "bucketType"    # I
    .param p3, "beginTime"    # J
    .param p5, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJJ)",
            "Ljava/util/List",
            "<",
            "Landroid/app/usage/ConfigurationStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 923
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 924
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v0

    .local v0, "timeNow":J
    move-wide v2, p3

    move-wide v4, p5

    .line 925
    invoke-static/range {v0 .. v5}, Lcom/android/server/usage/UsageStatsService;->validRange(JJJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 926
    const/4 v3, 0x0

    monitor-exit v8

    return-object v3

    .line 930
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/usage/UsageStatsService;->getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v2

    .local v2, "service":Lcom/android/server/usage/UserUsageStatsService;
    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    .line 931
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/usage/UserUsageStatsService;->queryConfigurationStats(IJJ)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    monitor-exit v8

    return-object v3

    .line 923
    .end local v0    # "timeNow":J
    .end local v2    # "service":Lcom/android/server/usage/UserUsageStatsService;
    :catchall_0
    move-exception v3

    monitor-exit v8

    throw v3
.end method

.method queryEvents(IJJ)Landroid/app/usage/UsageEvents;
    .locals 8
    .param p1, "userId"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J

    .prologue
    .line 939
    iget-object v7, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 940
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v0

    .local v0, "timeNow":J
    move-wide v2, p2

    move-wide v4, p4

    .line 941
    invoke-static/range {v0 .. v5}, Lcom/android/server/usage/UsageStatsService;->validRange(JJJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 942
    const/4 v2, 0x0

    monitor-exit v7

    return-object v2

    .line 946
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/usage/UsageStatsService;->getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v6

    .line 947
    .local v6, "service":Lcom/android/server/usage/UserUsageStatsService;
    invoke-virtual {v6, p2, p3, p4, p5}, Lcom/android/server/usage/UserUsageStatsService;->queryEvents(JJ)Landroid/app/usage/UsageEvents;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    monitor-exit v7

    return-object v2

    .line 939
    .end local v0    # "timeNow":J
    .end local v6    # "service":Lcom/android/server/usage/UserUsageStatsService;
    :catchall_0
    move-exception v2

    monitor-exit v7

    throw v2
.end method

.method queryUsageStats(IIJJ)Ljava/util/List;
    .locals 9
    .param p1, "userId"    # I
    .param p2, "bucketType"    # I
    .param p3, "beginTime"    # J
    .param p5, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJJ)",
            "Ljava/util/List",
            "<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 906
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 907
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v0

    .local v0, "timeNow":J
    move-wide v2, p3

    move-wide v4, p5

    .line 908
    invoke-static/range {v0 .. v5}, Lcom/android/server/usage/UsageStatsService;->validRange(JJJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 909
    const/4 v3, 0x0

    monitor-exit v8

    return-object v3

    .line 913
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/usage/UsageStatsService;->getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v2

    .local v2, "service":Lcom/android/server/usage/UserUsageStatsService;
    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    .line 914
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/usage/UserUsageStatsService;->queryUsageStats(IJJ)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    monitor-exit v8

    return-object v3

    .line 906
    .end local v0    # "timeNow":J
    .end local v2    # "service":Lcom/android/server/usage/UserUsageStatsService;
    :catchall_0
    move-exception v3

    monitor-exit v8

    throw v3
.end method

.method removeAppStatusInternalListener(Landroid/app/usage/UsageStatsManagerInternal$AppStatusChangeInternalListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/app/usage/UsageStatsManagerInternal$AppStatusChangeInternalListener;

    .prologue
    .line 1010
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mAppStatusInternalListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1011
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStatusInternalListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1009
    return-void

    .line 1010
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method removeAppStatusListener(Landroid/app/usage/IYulongAppStatusListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/app/usage/IYulongAppStatusListener;

    .prologue
    .line 1002
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mAppStatusListeners:Ljava/util/HashMap;

    monitor-enter v2

    .line 1003
    if-nez p1, :cond_0

    monitor-exit v2

    return-void

    .line 1004
    :cond_0
    :try_start_0
    invoke-interface {p1}, Landroid/app/usage/IYulongAppStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1005
    .local v0, "key":Ljava/lang/Object;
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mAppStatusListeners:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 1001
    return-void

    .line 1002
    .end local v0    # "key":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method removeListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;

    .prologue
    .line 995
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 996
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mPackageAccessListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 994
    return-void

    .line 995
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method reportContentProviderUsage(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "providerPkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    const/4 v4, 0x0

    .line 834
    invoke-static {p1, p3}, Landroid/content/ContentResolver;->getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 836
    .local v2, "packages":[Ljava/lang/String;
    array-length v5, v2

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v1, v2, v4

    .line 840
    .local v1, "packageName":Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 841
    const/high16 v7, 0x100000

    .line 840
    invoke-virtual {v6, v1, v7, p3}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 842
    .local v3, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_0

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v6, :cond_1

    .line 836
    .end local v3    # "pi":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 845
    .restart local v3    # "pi":Landroid/content/pm/PackageInfo;
    :cond_1
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 846
    const/4 v6, 0x0

    invoke-virtual {p0, v1, p3, v6}, Lcom/android/server/usage/UsageStatsService;->forceIdleState(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 848
    .end local v3    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1

    .line 832
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method reportEvent(Landroid/app/usage/UsageEvents$Event;I)V
    .locals 17
    .param p1, "event"    # Landroid/app/usage/UsageEvents$Event;
    .param p2, "userId"    # I

    .prologue
    .line 725
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 726
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v8

    .line 727
    .local v8, "timeNow":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 728
    .local v4, "elapsedRealtime":J
    invoke-direct/range {p0 .. p1}, Lcom/android/server/usage/UsageStatsService;->convertToSystemTimeLocked(Landroid/app/usage/UsageEvents$Event;)V

    .line 731
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v8, v9}, Lcom/android/server/usage/UsageStatsService;->getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v7

    .line 734
    .local v7, "service":Lcom/android/server/usage/UserUsageStatsService;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/usage/UsageStatsService;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 735
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 734
    move/from16 v0, p2

    invoke-virtual {v11, v13, v0, v4, v5}, Lcom/android/server/usage/AppIdleHistory;->isIdleLocked(Ljava/lang/String;IJ)Z

    move-result v6

    .line 736
    .local v6, "previouslyIdle":Z
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Lcom/android/server/usage/UserUsageStatsService;->reportEvent(Landroid/app/usage/UsageEvents$Event;)V

    .line 737
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/usage/UsageStatsService;->foregroundAppChangeListener:Landroid/app/usage/IForegroundAppChangeCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v11, :cond_0

    .line 739
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/usage/UsageStatsService;->foregroundAppChangeListener:Landroid/app/usage/IForegroundAppChangeCallback;

    invoke-interface {v11}, Landroid/app/usage/IForegroundAppChangeCallback;->foregroundAppChange()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 744
    :cond_0
    :goto_0
    :try_start_2
    move-object/from16 v0, p1

    iget v11, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v13, 0x1

    if-eq v11, v13, :cond_1

    .line 745
    move-object/from16 v0, p1

    iget v11, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v13, 0x2

    if-ne v11, v13, :cond_5

    .line 748
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/usage/UsageStatsService;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    move/from16 v0, p2

    invoke-virtual {v11, v13, v0, v4, v5}, Lcom/android/server/usage/AppIdleHistory;->reportUsageLocked(Ljava/lang/String;IJ)V

    .line 749
    if-eqz v6, :cond_2

    .line 750
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    .line 751
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 750
    const/4 v15, 0x3

    .line 751
    const/16 v16, 0x0

    .line 750
    move/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v13, v15, v0, v1, v14}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 752
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v11, v1, v13}, Lcom/android/server/usage/UsageStatsService;->notifyBatteryStats(Ljava/lang/String;IZ)V

    .line 756
    :cond_2
    move-object/from16 v0, p1

    iget v11, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v13, 0x1

    if-ne v11, v13, :cond_a

    .line 757
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/usage/UsageStatsService;->mReportForgroundPackage:Ljava/lang/String;

    .line 758
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/usage/UsageStatsService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v11}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 759
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/server/usage/UsageStatsService;->isScreenOff:Z

    .line 761
    :cond_3
    const/4 v10, -0x1

    .line 762
    .local v10, "uid":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/usage/UsageStatsService;->mLastBackgroundPackage:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/usage/UsageStatsService;->mReportBackgroundPackage:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/usage/UsageStatsService;->mReportForgroundPackage:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 783
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/usage/UsageStatsService;->isScreenOff:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v11, :cond_a

    .line 785
    :try_start_3
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/usage/UsageStatsService;->mLastForgroundPackage:Ljava/lang/String;

    .line 786
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/usage/UsageStatsService;->mNotifyForgroundPackage:Ljava/lang/String;

    .line 787
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/usage/UsageStatsService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    const/16 v14, 0x2000

    move/from16 v0, p2

    invoke-virtual {v11, v13, v14, v0}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result v10

    .line 788
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v11, v1}, Lcom/android/server/usage/UsageStatsService;->isSystemApp(Ljava/lang/String;I)Z
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v11

    if-eqz v11, :cond_c

    monitor-exit v12

    .line 789
    return-void

    .line 746
    .end local v10    # "uid":I
    :cond_5
    :try_start_4
    move-object/from16 v0, p1

    iget v11, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v13, 0x6

    if-eq v11, v13, :cond_1

    .line 747
    move-object/from16 v0, p1

    iget v11, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v13, 0x7

    if-eq v11, v13, :cond_1

    :cond_6
    :goto_1
    monitor-exit v12

    .line 724
    return-void

    .line 764
    .restart local v10    # "uid":I
    :cond_7
    :try_start_5
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/usage/UsageStatsService;->mLastForgroundPackage:Ljava/lang/String;

    .line 765
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/usage/UsageStatsService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    const/16 v14, 0x2000

    move/from16 v0, p2

    invoke-virtual {v11, v13, v14, v0}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result v10

    .line 766
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v11, v1}, Lcom/android/server/usage/UsageStatsService;->isSystemApp(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 767
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/usage/UsageStatsService;->mNotifyForgroundPackage:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 768
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/usage/UsageStatsService;->mNotifyForgroundPackage:Ljava/lang/String;
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_8
    monitor-exit v12

    .line 770
    return-void

    .line 772
    :cond_9
    :try_start_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v11, v10}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 776
    :goto_2
    :try_start_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/usage/UsageStatsService;->mNotifyForgroundPackage:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    .line 777
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/usage/UsageStatsService;->mNotifyForgroundPackage:Ljava/lang/String;

    .line 778
    const-string/jumbo v11, "com.android.launcher3"

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/usage/UsageStatsService;->mNotifyBackgroundPackage:Ljava/lang/String;

    .line 779
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v13, v10}, Lcom/android/server/usage/UsageStatsService;->informAppStatusListeners(Ljava/lang/String;II)V

    .line 780
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v13, v10}, Lcom/android/server/usage/UsageStatsService;->informAppStatusInternalListeners(Ljava/lang/String;II)V

    .line 804
    .end local v10    # "uid":I
    :cond_a
    :goto_3
    move-object/from16 v0, p1

    iget v11, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v13, 0x2

    if-ne v11, v13, :cond_6

    .line 805
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/usage/UsageStatsService;->mReportBackgroundPackage:Ljava/lang/String;

    .line 806
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/usage/UsageStatsService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v11}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v11

    if-nez v11, :cond_b

    .line 807
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/server/usage/UsageStatsService;->isScreenOff:Z

    .line 809
    :cond_b
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/usage/UsageStatsService;->mLastForgroundPackage:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v11

    if-eqz v11, :cond_6

    .line 812
    :try_start_8
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/usage/UsageStatsService;->mLastBackgroundPackage:Ljava/lang/String;

    .line 813
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/usage/UsageStatsService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    const/16 v14, 0x2000

    move/from16 v0, p2

    invoke-virtual {v11, v13, v14, v0}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result v10

    .line 814
    .restart local v10    # "uid":I
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v11, v1}, Lcom/android/server/usage/UsageStatsService;->isSystemApp(Ljava/lang/String;I)Z
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v11

    if-eqz v11, :cond_d

    monitor-exit v12

    .line 815
    return-void

    .line 791
    :cond_c
    :try_start_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v11, v10}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 795
    :goto_4
    :try_start_a
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/usage/UsageStatsService;->mNotifyForgroundPackage:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 796
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/usage/UsageStatsService;->mNotifyForgroundPackage:Ljava/lang/String;

    .line 797
    const-string/jumbo v11, "com.android.launcher3"

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/usage/UsageStatsService;->mNotifyBackgroundPackage:Ljava/lang/String;

    .line 798
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v13, v10}, Lcom/android/server/usage/UsageStatsService;->informAppStatusListeners(Ljava/lang/String;II)V

    .line 799
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v13, v10}, Lcom/android/server/usage/UsageStatsService;->informAppStatusInternalListeners(Ljava/lang/String;II)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_3

    .line 725
    .end local v4    # "elapsedRealtime":J
    .end local v6    # "previouslyIdle":Z
    .end local v7    # "service":Lcom/android/server/usage/UserUsageStatsService;
    .end local v8    # "timeNow":J
    .end local v10    # "uid":I
    :catchall_0
    move-exception v11

    monitor-exit v12

    throw v11

    .line 817
    .restart local v4    # "elapsedRealtime":J
    .restart local v6    # "previouslyIdle":Z
    .restart local v7    # "service":Lcom/android/server/usage/UserUsageStatsService;
    .restart local v8    # "timeNow":J
    .restart local v10    # "uid":I
    :cond_d
    :try_start_b
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v11, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 818
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    .line 819
    move-object/from16 v0, p1

    iget v14, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 818
    move/from16 v0, p2

    invoke-virtual {v13, v10, v0, v14, v15}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    .line 820
    const-wide/32 v14, 0xea60

    .line 818
    invoke-virtual {v11, v13, v14, v15}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_1

    .line 821
    .end local v10    # "uid":I
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto/16 :goto_1

    .line 792
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v10    # "uid":I
    :catch_1
    move-exception v2

    .restart local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_4

    .line 773
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_2
    move-exception v2

    .restart local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto/16 :goto_2

    .line 740
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v10    # "uid":I
    :catch_3
    move-exception v3

    .local v3, "e":Landroid/os/RemoteException;
    goto/16 :goto_0
.end method

.method setAppIdle(Ljava/lang/String;ZI)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "idle"    # Z
    .param p3, "userId"    # I

    .prologue
    .line 1170
    if-nez p1, :cond_0

    return-void

    .line 1172
    :cond_0
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x4

    invoke-virtual {v1, v2, p3, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1169
    return-void

    .line 1172
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setAppIdleParoled(Z)V
    .locals 4
    .param p1, "paroled"    # Z

    .prologue
    .line 489
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 490
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleTempParoled:Z

    if-eq v0, p1, :cond_0

    .line 491
    iput-boolean p1, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleTempParoled:Z

    .line 493
    if-eqz p1, :cond_1

    .line 494
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->postParoleEndTimeout()V

    .line 499
    :goto_0
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->postParoleStateChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 488
    return-void

    .line 496
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/usage/UsageStatsService;->mLastAppIdleParoledTime:J

    .line 497
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->postNextParoleTimeout()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 489
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method setChargingState(Z)V
    .locals 2
    .param p1, "charging"    # Z

    .prologue
    .line 474
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 475
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/usage/UsageStatsService;->mCharging:Z

    if-eq v0, p1, :cond_0

    .line 476
    iput-boolean p1, p0, Lcom/android/server/usage/UsageStatsService;->mCharging:Z

    .line 477
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->postParoleStateChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 473
    return-void

    .line 474
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setForegroundAppChangeListener(Landroid/app/usage/IForegroundAppChangeCallback;)V
    .locals 0
    .param p1, "listener"    # Landroid/app/usage/IForegroundAppChangeCallback;

    .prologue
    .line 483
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->foregroundAppChangeListener:Landroid/app/usage/IForegroundAppChangeCallback;

    .line 482
    return-void
.end method

.method shutdown()V
    .locals 3

    .prologue
    .line 715
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 716
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 717
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->flushToDiskLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 714
    return-void

    .line 715
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
