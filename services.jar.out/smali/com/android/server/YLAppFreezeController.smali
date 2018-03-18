.class public Lcom/android/server/YLAppFreezeController;
.super Lcom/android/server/SystemService;
.source "YLAppFreezeController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/YLAppFreezeController$1;,
        Lcom/android/server/YLAppFreezeController$2;,
        Lcom/android/server/YLAppFreezeController$3;,
        Lcom/android/server/YLAppFreezeController$AppFreezeHandler;,
        Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil;,
        Lcom/android/server/YLAppFreezeController$Binderservice;,
        Lcom/android/server/YLAppFreezeController$LocalService;,
        Lcom/android/server/YLAppFreezeController$Shell;
    }
.end annotation


# static fields
.field public static final ACTION_WIDGET_UPDATE:Ljava/lang/String; = "android.intent.action.remoteviewbuttonclick"

.field private static final DEBUG:Z = true

.field private static final MSG_FREEZE_APP:I = 0x2

.field private static final MSG_PROCESS_STATE_CHANGE:I = 0x3

.field private static final MSG_UNFREEZE_APP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "YLAppFreezeController"

.field private static mAppScene:J

.field static final mRemoteViewtoUnfreezeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final UID_NOT_FOUND:I

.field private am:Landroid/app/ActivityManager;

.field private final factors:J

.field private locationManager:Landroid/location/LocationManager;

.field private mAppStatuslistener:Landroid/app/usage/UsageStatsManagerInternal$AppStatusChangeInternalListener;

.field private mBinderservice:Lcom/android/server/YLAppFreezeController$Binderservice;

.field private final mBootReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mDealingPendingIntentReceiver:Landroid/content/BroadcastReceiver;

.field final mFrozenRecordUtil:Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil;

.field private mHandler:Lcom/android/server/YLAppFreezeController$AppFreezeHandler;

.field private mLocalAlarmManager:Lcom/android/server/AlarmManagerService$LocalService;

.field private mLocalPowerManager:Landroid/os/PowerManagerInternal;

.field final mLock:Ljava/lang/Object;

.field final mLockforRemoteViewClick:Ljava/lang/Object;

.field private mNetworkPolicyManager:Landroid/net/INetworkPolicyManager;

.field private final mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private mPowerManager:Landroid/os/IPowerManager;

.field private mUsageStatsInternal:Landroid/app/usage/UsageStatsManagerInternal;

.field private pm:Landroid/content/pm/PackageManager;


# direct methods
.method static synthetic -get0(Lcom/android/server/YLAppFreezeController;)Landroid/app/ActivityManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/YLAppFreezeController;->am:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/YLAppFreezeController;)Lcom/android/server/YLAppFreezeController$AppFreezeHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/YLAppFreezeController;->mHandler:Lcom/android/server/YLAppFreezeController$AppFreezeHandler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/YLAppFreezeController;)Landroid/os/PowerManagerInternal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/YLAppFreezeController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    return-object v0
.end method

.method static synthetic -set0(J)J
    .locals 0

    sput-wide p0, Lcom/android/server/YLAppFreezeController;->mAppScene:J

    return-wide p0
.end method

.method static synthetic -wrap0(Lcom/android/server/YLAppFreezeController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/YLAppFreezeController;->isLcdOnSceneInternal()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/YLAppFreezeController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/YLAppFreezeController;->isVideoAppSceneInternal()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/YLAppFreezeController;I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/YLAppFreezeController;->openAppWifiUsageForAppfreeze(I)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/YLAppFreezeController;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/YLAppFreezeController;->remoteViewButtonClicktoUnfreezeApp(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/YLAppFreezeController;Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/YLAppFreezeController;->restoreAppLocation(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/YLAppFreezeController;ILjava/lang/String;)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/YLAppFreezeController;->unfreezeAppFullyInternal(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/YLAppFreezeController;ILjava/lang/String;)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/YLAppFreezeController;->unfreezeAppInternal(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/YLAppFreezeController;I)Z
    .locals 1
    .param p1, "uid"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/YLAppFreezeController;->updateFlagsAsProcessUnfrozenLocked(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/YLAppFreezeController;ILjava/lang/String;)I
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/YLAppFreezeController;->getFlagsOfRestrictionLocked(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/YLAppFreezeController;Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/YLAppFreezeController;->changeAlarmTypeForAppfreeze(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/YLAppFreezeController;ILjava/lang/String;)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/YLAppFreezeController;->closeAppMobileUsageForAppfreeze(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/YLAppFreezeController;ILjava/lang/String;)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/YLAppFreezeController;->closeAppWifiUsageForAppfreeze(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/YLAppFreezeController;Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/YLAppFreezeController;->forceCloseAppLocation(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/YLAppFreezeController;ILjava/lang/String;I)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "option"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/YLAppFreezeController;->freezeAppInternal(ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/YLAppFreezeController;I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/YLAppFreezeController;->openAppMobileUsageForAppfreeze(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/YLAppFreezeController;->mRemoteViewtoUnfreezeList:Ljava/util/ArrayList;

    .line 161
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/YLAppFreezeController;->mAppScene:J

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 163
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 135
    iput-object v1, p0, Lcom/android/server/YLAppFreezeController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 138
    iput-object v1, p0, Lcom/android/server/YLAppFreezeController;->locationManager:Landroid/location/LocationManager;

    .line 145
    iput-object v1, p0, Lcom/android/server/YLAppFreezeController;->mUsageStatsInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 146
    iput-object v1, p0, Lcom/android/server/YLAppFreezeController;->mAppStatuslistener:Landroid/app/usage/UsageStatsManagerInternal$AppStatusChangeInternalListener;

    .line 147
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/YLAppFreezeController;->UID_NOT_FOUND:I

    .line 148
    iput-object v1, p0, Lcom/android/server/YLAppFreezeController;->pm:Landroid/content/pm/PackageManager;

    .line 150
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/YLAppFreezeController;->mLock:Ljava/lang/Object;

    .line 154
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/YLAppFreezeController;->mLockforRemoteViewClick:Ljava/lang/Object;

    .line 160
    const-wide/32 v0, 0x8200

    iput-wide v0, p0, Lcom/android/server/YLAppFreezeController;->factors:J

    .line 919
    new-instance v0, Lcom/android/server/YLAppFreezeController$1;

    invoke-direct {v0, p0}, Lcom/android/server/YLAppFreezeController$1;-><init>(Lcom/android/server/YLAppFreezeController;)V

    iput-object v0, p0, Lcom/android/server/YLAppFreezeController;->mBootReceiver:Landroid/content/BroadcastReceiver;

    .line 940
    new-instance v0, Lcom/android/server/YLAppFreezeController$2;

    invoke-direct {v0, p0}, Lcom/android/server/YLAppFreezeController$2;-><init>(Lcom/android/server/YLAppFreezeController;)V

    iput-object v0, p0, Lcom/android/server/YLAppFreezeController;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 964
    new-instance v0, Lcom/android/server/YLAppFreezeController$3;

    invoke-direct {v0, p0}, Lcom/android/server/YLAppFreezeController$3;-><init>(Lcom/android/server/YLAppFreezeController;)V

    iput-object v0, p0, Lcom/android/server/YLAppFreezeController;->mDealingPendingIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 164
    const-string/jumbo v0, "YLAppFreezeController"

    const-string/jumbo v1, "YLAppFreezeController"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iput-object p1, p0, Lcom/android/server/YLAppFreezeController;->mContext:Landroid/content/Context;

    .line 166
    iget-object v0, p0, Lcom/android/server/YLAppFreezeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/YLAppFreezeController;->pm:Landroid/content/pm/PackageManager;

    .line 167
    iget-object v0, p0, Lcom/android/server/YLAppFreezeController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/YLAppFreezeController;->am:Landroid/app/ActivityManager;

    .line 168
    new-instance v0, Lcom/android/server/YLAppFreezeController$AppFreezeHandler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/YLAppFreezeController$AppFreezeHandler;-><init>(Lcom/android/server/YLAppFreezeController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/YLAppFreezeController;->mHandler:Lcom/android/server/YLAppFreezeController$AppFreezeHandler;

    .line 169
    new-instance v0, Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil;

    iget-object v1, p0, Lcom/android/server/YLAppFreezeController;->mLock:Ljava/lang/Object;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil;-><init>(Lcom/android/server/YLAppFreezeController;Landroid/content/Context;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/YLAppFreezeController;->mFrozenRecordUtil:Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil;

    .line 162
    return-void
.end method

.method private changeAlarmTypeForAppfreeze(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/server/YLAppFreezeController;->mLocalAlarmManager:Lcom/android/server/AlarmManagerService$LocalService;

    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService$LocalService;->changeAppAlarmTypeForAppFreeze(Ljava/lang/String;)V

    .line 501
    return-void
.end method

.method private closeAppMobileUsageForAppfreeze(ILjava/lang/String;)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 473
    :try_start_0
    iget-object v1, p0, Lcom/android/server/YLAppFreezeController;->mNetworkPolicyManager:Landroid/net/INetworkPolicyManager;

    if-eqz v1, :cond_0

    .line 474
    iget-object v1, p0, Lcom/android/server/YLAppFreezeController;->mNetworkPolicyManager:Landroid/net/INetworkPolicyManager;

    .line 475
    const-string/jumbo v2, "apf_mobile"

    .line 474
    const/16 v3, 0x12

    invoke-interface {v1, p1, v3, v2}, Landroid/net/INetworkPolicyManager;->setUidAppfreezePolicy(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    :cond_0
    return-void

    .line 478
    :catch_0
    move-exception v0

    .line 479
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private closeAppWifiUsageForAppfreeze(ILjava/lang/String;)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 485
    :try_start_0
    iget-object v1, p0, Lcom/android/server/YLAppFreezeController;->mNetworkPolicyManager:Landroid/net/INetworkPolicyManager;

    if-eqz v1, :cond_0

    .line 486
    iget-object v1, p0, Lcom/android/server/YLAppFreezeController;->mNetworkPolicyManager:Landroid/net/INetworkPolicyManager;

    .line 487
    const-string/jumbo v2, "apf_wifi"

    .line 486
    const/16 v3, 0x12

    invoke-interface {v1, p1, v3, v2}, Landroid/net/INetworkPolicyManager;->setUidAppfreezePolicy(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    :cond_0
    return-void

    .line 490
    :catch_0
    move-exception v0

    .line 491
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method static dumpHelp(Ljava/io/PrintWriter;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1015
    const-string/jumbo v0, "Appfreeze controller commands:dumpsys appfreeze"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1014
    return-void
.end method

.method private forceCloseAppLocation(Ljava/lang/String;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/server/YLAppFreezeController;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->forceCloseAppLocation(Ljava/lang/String;)V

    .line 495
    return-void
.end method

.method private freezeAppInternal(ILjava/lang/String;I)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "option"    # I

    .prologue
    .line 506
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 507
    iget-object v0, p0, Lcom/android/server/YLAppFreezeController;->mHandler:Lcom/android/server/YLAppFreezeController$AppFreezeHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p3, p1, p2}, Lcom/android/server/YLAppFreezeController$AppFreezeHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 505
    :goto_0
    return-void

    .line 510
    :cond_0
    const-string/jumbo v0, "YLAppFreezeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not user app,give up."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getFlagsOfRestrictionLocked(ILjava/lang/String;)I
    .locals 2
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 534
    iget-object v1, p0, Lcom/android/server/YLAppFreezeController;->mFrozenRecordUtil:Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil;->getAppFreezeInfoByUidAndPkg(ILjava/lang/String;)Landroid/os/freeze/AppFreezeInfo;

    move-result-object v0

    .line 535
    .local v0, "app":Landroid/os/freeze/AppFreezeInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/freeze/AppFreezeInfo;->getFlag()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getUidByPkgName(Ljava/lang/String;)I
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 243
    const/4 v0, 0x0

    .line 245
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/YLAppFreezeController;->pm:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 246
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 247
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 249
    :cond_0
    return v4

    .line 251
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 252
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 253
    return v4
.end method

.method private isLcdOnSceneInternal()Z
    .locals 8

    .prologue
    const-wide v6, 0x2000000000L

    .line 191
    const/4 v0, 0x0

    .line 192
    .local v0, "isLcdOnScene":Z
    sget-wide v2, Lcom/android/server/YLAppFreezeController;->mAppScene:J

    const-wide v4, 0x3c00000000L

    and-long/2addr v2, v4

    and-long/2addr v2, v6

    cmp-long v1, v2, v6

    if-nez v1, :cond_0

    .line 193
    const-string/jumbo v1, "YLAppFreezeController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mAppScene is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v4, Lcom/android/server/YLAppFreezeController;->mAppScene:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const/4 v0, 0x1

    .line 198
    :goto_0
    const-string/jumbo v1, "YLAppFreezeController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isLcdOnScene is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return v0

    .line 196
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVideoAppSceneInternal()Z
    .locals 14

    .prologue
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    const-wide/high16 v10, 0x3c00000000000000L

    const-wide/high16 v8, 0x3800000000000000L    # 5.8774717541114375E-39

    const-wide/high16 v6, 0x3400000000000000L    # 3.1861838222649046E-58

    const-wide/high16 v4, -0x400000000000000L    # -1.9490628022799998E289

    .line 175
    const/4 v0, 0x0

    .line 176
    .local v0, "isAppVideoScene":Z
    sget-wide v2, Lcom/android/server/YLAppFreezeController;->mAppScene:J

    and-long/2addr v2, v4

    and-long/2addr v2, v8

    cmp-long v1, v2, v8

    if-eqz v1, :cond_0

    .line 177
    sget-wide v2, Lcom/android/server/YLAppFreezeController;->mAppScene:J

    and-long/2addr v2, v4

    and-long/2addr v2, v10

    cmp-long v1, v2, v10

    if-nez v1, :cond_1

    .line 181
    :cond_0
    const-string/jumbo v1, "YLAppFreezeController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mAppScene is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v4, Lcom/android/server/YLAppFreezeController;->mAppScene:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const/4 v0, 0x1

    .line 186
    :goto_0
    const-string/jumbo v1, "YLAppFreezeController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isAppVideoScene is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    return v0

    .line 178
    :cond_1
    sget-wide v2, Lcom/android/server/YLAppFreezeController;->mAppScene:J

    and-long/2addr v2, v4

    and-long/2addr v2, v12

    cmp-long v1, v2, v12

    if-eqz v1, :cond_0

    .line 179
    sget-wide v2, Lcom/android/server/YLAppFreezeController;->mAppScene:J

    and-long/2addr v2, v4

    and-long/2addr v2, v6

    cmp-long v1, v2, v6

    if-eqz v1, :cond_0

    .line 180
    sget-wide v2, Lcom/android/server/YLAppFreezeController;->mAppScene:J

    and-long/2addr v2, v4

    const-wide/high16 v4, 0x4c00000000000000L    # 1.2554203470773362E58

    and-long/2addr v2, v4

    const-wide/high16 v4, 0x4c00000000000000L    # 1.2554203470773362E58

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 184
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private openAppMobileUsageForAppfreeze(I)V
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 444
    :try_start_0
    iget-object v1, p0, Lcom/android/server/YLAppFreezeController;->mNetworkPolicyManager:Landroid/net/INetworkPolicyManager;

    if-eqz v1, :cond_0

    .line 445
    iget-object v1, p0, Lcom/android/server/YLAppFreezeController;->mNetworkPolicyManager:Landroid/net/INetworkPolicyManager;

    .line 446
    const-string/jumbo v2, "apf_mobile"

    .line 445
    const/16 v3, 0x11

    invoke-interface {v1, p1, v3, v2}, Landroid/net/INetworkPolicyManager;->setUidAppfreezePolicy(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    :cond_0
    return-void

    .line 448
    :catch_0
    move-exception v0

    .line 449
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private openAppWifiUsageForAppfreeze(I)V
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 455
    :try_start_0
    iget-object v1, p0, Lcom/android/server/YLAppFreezeController;->mNetworkPolicyManager:Landroid/net/INetworkPolicyManager;

    if-eqz v1, :cond_0

    .line 456
    iget-object v1, p0, Lcom/android/server/YLAppFreezeController;->mNetworkPolicyManager:Landroid/net/INetworkPolicyManager;

    .line 457
    const-string/jumbo v2, "apf_wifi"

    .line 456
    const/16 v3, 0x11

    invoke-interface {v1, p1, v3, v2}, Landroid/net/INetworkPolicyManager;->setUidAppfreezePolicy(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    :cond_0
    return-void

    .line 460
    :catch_0
    move-exception v0

    .line 461
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private remoteViewButtonClicktoUnfreezeApp(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 326
    :try_start_0
    const-string/jumbo v6, "pendingIntent"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .line 327
    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    if-eqz v3, :cond_1

    .line 328
    invoke-virtual {v3}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v5

    .line 329
    .local v5, "remoteViewOwnerPackageName":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-interface {v6, v3}, Landroid/app/IActivityManager;->getPendingIntentUserId(Landroid/app/PendingIntent;)I

    move-result v4

    .line 330
    .local v4, "pendingIntentUserId":I
    iget-object v6, p0, Lcom/android/server/YLAppFreezeController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7, v4}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 332
    .local v0, "appInfo_t":Landroid/content/pm/ApplicationInfo;
    const/4 v2, 0x0

    .line 333
    .local v2, "isAppFreezed":Z
    iget-object v7, p0, Lcom/android/server/YLAppFreezeController;->mLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    :try_start_1
    iget v6, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v6, v8}, Lcom/android/server/YLAppFreezeController;->getFlagsOfRestrictionLocked(ILjava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-lez v6, :cond_0

    const/4 v2, 0x1

    :goto_0
    :try_start_2
    monitor-exit v7

    .line 337
    if-nez v2, :cond_2

    .line 338
    const-string/jumbo v6, "YLAppFreezeController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "app:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " not freezed, return"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    return-void

    .line 334
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 333
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 346
    .end local v0    # "appInfo_t":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "isAppFreezed":Z
    .end local v3    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v4    # "pendingIntentUserId":I
    .end local v5    # "remoteViewOwnerPackageName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 348
    .local v1, "e":Landroid/util/AndroidException;
    invoke-virtual {v1}, Landroid/util/AndroidException;->printStackTrace()V

    .line 324
    .end local v1    # "e":Landroid/util/AndroidException;
    :cond_1
    :goto_1
    return-void

    .line 342
    .restart local v0    # "appInfo_t":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "isAppFreezed":Z
    .restart local v3    # "pendingIntent":Landroid/app/PendingIntent;
    .restart local v4    # "pendingIntentUserId":I
    .restart local v5    # "remoteViewOwnerPackageName":Ljava/lang/String;
    :cond_2
    :try_start_3
    iget v6, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v6}, Lcom/android/server/YLAppFreezeController;->addUidtoRemoteViewUnfreezeListInternal(I)V

    .line 343
    iget v6, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v6, v7}, Lcom/android/server/YLAppFreezeController;->unfreezeAppInternal(ILjava/lang/String;)V

    .line 344
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v6, v7, v4}, Landroid/app/IActivityManager;->forceUnfreezePackage(Ljava/lang/String;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method

.method private restoreAppLocation(Ljava/lang/String;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/server/YLAppFreezeController;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->restoreAppLocation(Ljava/lang/String;)V

    .line 465
    return-void
.end method

.method private unfreezeAppFullyInternal(ILjava/lang/String;)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 525
    iget-object v1, p0, Lcom/android/server/YLAppFreezeController;->am:Landroid/app/ActivityManager;

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 526
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 527
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/YLAppFreezeController;->am:Landroid/app/ActivityManager;

    invoke-virtual {v1, p2, v0}, Landroid/app/ActivityManager;->forceUnfreezePackageAsUser(Ljava/lang/String;I)V

    .line 530
    .end local v0    # "userId":I
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/YLAppFreezeController;->unfreezeAppInternal(ILjava/lang/String;)V

    .line 523
    return-void
.end method

.method private unfreezeAppInternal(ILjava/lang/String;)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 515
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 516
    iget-object v0, p0, Lcom/android/server/YLAppFreezeController;->mHandler:Lcom/android/server/YLAppFreezeController$AppFreezeHandler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/server/YLAppFreezeController$AppFreezeHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 514
    :goto_0
    return-void

    .line 519
    :cond_0
    const-string/jumbo v0, "YLAppFreezeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not user app,give up."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateFlagsAsProcessUnfrozenLocked(I)Z
    .locals 14
    .param p1, "uid"    # I

    .prologue
    .line 539
    const/4 v10, 0x0

    .line 540
    .local v10, "successed":Z
    iget-object v11, p0, Lcom/android/server/YLAppFreezeController;->mFrozenRecordUtil:Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil;

    invoke-virtual {v11, p1}, Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil;->getAppFreezeInfoByUid(I)Ljava/util/List;

    move-result-object v8

    .line 541
    .local v8, "oldApps":Ljava/util/List;, "Ljava/util/List<Landroid/os/freeze/AppFreezeInfo;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 542
    .local v7, "newApps":Ljava/util/List;, "Ljava/util/List<Landroid/os/freeze/AppFreezeInfo;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 543
    .local v5, "needToRemovie":Ljava/util/List;, "Ljava/util/List<Landroid/os/freeze/AppFreezeInfo;>;"
    if-eqz v8, :cond_4

    .line 544
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-ge v1, v11, :cond_1

    .line 545
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/freeze/AppFreezeInfo;

    invoke-virtual {v11}, Landroid/os/freeze/AppFreezeInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 546
    .local v9, "pkg":Ljava/lang/String;
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/freeze/AppFreezeInfo;

    invoke-virtual {v11}, Landroid/os/freeze/AppFreezeInfo;->getFlag()I

    move-result v0

    .line 547
    .local v0, "flag":I
    and-int/lit8 v11, v0, 0x10

    if-eqz v11, :cond_0

    .line 549
    and-int/lit8 v0, v0, -0x11

    .line 551
    new-instance v11, Landroid/os/freeze/AppFreezeInfo;

    invoke-direct {v11, p1, v9, v0}, Landroid/os/freeze/AppFreezeInfo;-><init>(ILjava/lang/String;I)V

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 553
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/freeze/AppFreezeInfo;

    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 544
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 560
    .end local v0    # "flag":I
    .end local v9    # "pkg":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    if-ge v3, v11, :cond_2

    .line 561
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/freeze/AppFreezeInfo;

    .line 562
    .local v4, "needRemove":Landroid/os/freeze/AppFreezeInfo;
    const-string/jumbo v11, "YLAppFreezeController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Proc needRemove:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Landroid/os/freeze/AppFreezeInfo;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    iget-object v11, p0, Lcom/android/server/YLAppFreezeController;->mFrozenRecordUtil:Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil;

    invoke-virtual {v11, v4}, Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil;->remove(Landroid/os/freeze/AppFreezeInfo;)Z

    .line 560
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 566
    .end local v4    # "needRemove":Landroid/os/freeze/AppFreezeInfo;
    :cond_2
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-ge v2, v11, :cond_3

    .line 567
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/freeze/AppFreezeInfo;

    .line 568
    .local v6, "newApp":Landroid/os/freeze/AppFreezeInfo;
    const-string/jumbo v11, "YLAppFreezeController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Proc new app:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Landroid/os/freeze/AppFreezeInfo;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    iget-object v11, p0, Lcom/android/server/YLAppFreezeController;->mFrozenRecordUtil:Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil;

    invoke-virtual {v11, v6}, Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil;->add(Landroid/os/freeze/AppFreezeInfo;)Z

    .line 566
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 571
    .end local v6    # "newApp":Landroid/os/freeze/AppFreezeInfo;
    :cond_3
    const/4 v10, 0x1

    .line 576
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v3    # "k":I
    :goto_3
    return v10

    .line 573
    :cond_4
    const/4 v10, 0x0

    goto :goto_3
.end method


# virtual methods
.method public addUidtoRemoteViewUnfreezeListInternal(I)V
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 298
    iget-object v2, p0, Lcom/android/server/YLAppFreezeController;->mLockforRemoteViewClick:Ljava/lang/Object;

    monitor-enter v2

    .line 299
    :try_start_0
    sget-object v1, Lcom/android/server/YLAppFreezeController;->mRemoteViewtoUnfreezeList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 300
    .local v0, "isContain":Z
    if-nez v0, :cond_0

    .line 301
    sget-object v1, Lcom/android/server/YLAppFreezeController;->mRemoteViewtoUnfreezeList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 297
    return-void

    .line 298
    .end local v0    # "isContain":Z
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1019
    invoke-virtual {p0}, Lcom/android/server/YLAppFreezeController;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v3, "android.permission.DUMP"

    invoke-virtual {v1, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1021
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Permission Denial: can\'t dump DeviceIdleController from from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1022
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 1021
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1022
    const-string/jumbo v2, ", uid="

    .line 1021
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1022
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1021
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1023
    const-string/jumbo v2, " without permission "

    .line 1021
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1023
    const-string/jumbo v2, "android.permission.DUMP"

    .line 1021
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1024
    return-void

    .line 1027
    :cond_0
    if-eqz p3, :cond_5

    .line 1028
    const/4 v9, 0x0

    .line 1029
    .local v9, "userId":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v1, p3

    if-ge v8, v1, :cond_5

    .line 1030
    aget-object v7, p3, v8

    .line 1031
    .local v7, "arg":Ljava/lang/String;
    const-string/jumbo v1, "-h"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1032
    invoke-static {p2}, Lcom/android/server/YLAppFreezeController;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 1033
    return-void

    .line 1034
    :cond_1
    const-string/jumbo v1, "-u"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1035
    add-int/lit8 v8, v8, 0x1

    .line 1036
    array-length v1, p3

    if-ge v8, v1, :cond_2

    .line 1037
    aget-object v7, p3, v8

    .line 1038
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 1029
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1040
    :cond_3
    const-string/jumbo v1, "-a"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1042
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x2d

    if-ne v1, v3, :cond_4

    .line 1043
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1044
    return-void

    .line 1046
    :cond_4
    new-instance v0, Lcom/android/server/YLAppFreezeController$Shell;

    invoke-direct {v0, p0}, Lcom/android/server/YLAppFreezeController$Shell;-><init>(Lcom/android/server/YLAppFreezeController;)V

    .line 1047
    .local v0, "shell":Lcom/android/server/YLAppFreezeController$Shell;
    iput v9, v0, Lcom/android/server/YLAppFreezeController$Shell;->userId:I

    .line 1048
    array-length v1, p3

    sub-int/2addr v1, v8

    new-array v5, v1, [Ljava/lang/String;

    .line 1049
    .local v5, "newArgs":[Ljava/lang/String;
    array-length v1, p3

    sub-int/2addr v1, v8

    invoke-static {p3, v8, v5, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1050
    iget-object v1, p0, Lcom/android/server/YLAppFreezeController;->mBinderservice:Lcom/android/server/YLAppFreezeController$Binderservice;

    new-instance v6, Landroid/os/ResultReceiver;

    invoke-direct {v6, v2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    move-object v3, p1

    move-object v4, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/YLAppFreezeController$Shell;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ResultReceiver;)I

    .line 1051
    return-void

    .line 1056
    .end local v0    # "shell":Lcom/android/server/YLAppFreezeController$Shell;
    .end local v5    # "newArgs":[Ljava/lang/String;
    .end local v7    # "arg":Ljava/lang/String;
    .end local v8    # "i":I
    .end local v9    # "userId":I
    :cond_5
    monitor-enter p0

    .line 1058
    :try_start_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1059
    const-string/jumbo v1, "AppFreeze frozen list:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1060
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1061
    iget-object v1, p0, Lcom/android/server/YLAppFreezeController;->mFrozenRecordUtil:Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil;

    invoke-virtual {v1, p2}, Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil;->dump(Ljava/io/PrintWriter;)V

    .line 1062
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1018
    return-void

    .line 1056
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isRemoteViewUnfreezeListContainUidInternal(I)Z
    .locals 6
    .param p1, "uid"    # I

    .prologue
    .line 307
    iget-object v4, p0, Lcom/android/server/YLAppFreezeController;->mLockforRemoteViewClick:Ljava/lang/Object;

    monitor-enter v4

    .line 308
    :try_start_0
    sget-object v3, Lcom/android/server/YLAppFreezeController;->mRemoteViewtoUnfreezeList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 309
    .local v1, "isContain":Z
    if-eqz v1, :cond_0

    .line 311
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Lcom/android/server/YLAppFreezeController;->mRemoteViewtoUnfreezeList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 312
    sget-object v3, Lcom/android/server/YLAppFreezeController;->mRemoteViewtoUnfreezeList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 313
    .local v2, "value":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne p1, v3, :cond_1

    .line 314
    sget-object v3, Lcom/android/server/YLAppFreezeController;->mRemoteViewtoUnfreezeList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "i":I
    .end local v2    # "value":Ljava/lang/Integer;
    :cond_0
    monitor-exit v4

    .line 319
    return v1

    .line 311
    .restart local v0    # "i":I
    .restart local v2    # "value":Ljava/lang/Integer;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 307
    .end local v0    # "i":I
    .end local v1    # "isContain":Z
    .end local v2    # "value":Ljava/lang/Integer;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public onBootPhase(I)V
    .locals 6
    .param p1, "phase"    # I

    .prologue
    const/4 v5, 0x0

    .line 260
    const-string/jumbo v2, "YLAppFreezeController"

    const-string/jumbo v3, "onBootPhase"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const/16 v2, 0x1f4

    if-ne p1, v2, :cond_0

    .line 262
    monitor-enter p0

    .line 263
    :try_start_0
    const-string/jumbo v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/YLAppFreezeController;->mPowerManager:Landroid/os/IPowerManager;

    .line 264
    const-class v2, Landroid/os/PowerManagerInternal;

    invoke-virtual {p0, v2}, Lcom/android/server/YLAppFreezeController;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManagerInternal;

    iput-object v2, p0, Lcom/android/server/YLAppFreezeController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 265
    const-class v2, Lcom/android/server/AlarmManagerService$LocalService;

    invoke-virtual {p0, v2}, Lcom/android/server/YLAppFreezeController;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$LocalService;

    iput-object v2, p0, Lcom/android/server/YLAppFreezeController;->mLocalAlarmManager:Lcom/android/server/AlarmManagerService$LocalService;

    .line 267
    const-string/jumbo v2, "netpolicy"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 266
    invoke-static {v2}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/YLAppFreezeController;->mNetworkPolicyManager:Landroid/net/INetworkPolicyManager;

    .line 268
    iget-object v2, p0, Lcom/android/server/YLAppFreezeController;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "location"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    iput-object v2, p0, Lcom/android/server/YLAppFreezeController;->locationManager:Landroid/location/LocationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 271
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 272
    .local v0, "packageFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 273
    const-string/jumbo v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 274
    iget-object v2, p0, Lcom/android/server/YLAppFreezeController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/YLAppFreezeController;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/server/YLAppFreezeController;->mHandler:Lcom/android/server/YLAppFreezeController$AppFreezeHandler;

    invoke-virtual {v2, v3, v0, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 277
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 278
    .local v1, "widgetFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.remoteviewbuttonclick"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 279
    iget-object v2, p0, Lcom/android/server/YLAppFreezeController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/YLAppFreezeController;->mDealingPendingIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/server/YLAppFreezeController;->mHandler:Lcom/android/server/YLAppFreezeController$AppFreezeHandler;

    invoke-virtual {v2, v3, v1, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 259
    .end local v0    # "packageFilter":Landroid/content/IntentFilter;
    .end local v1    # "widgetFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void

    .line 262
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method onShellCommand(Lcom/android/server/YLAppFreezeController$Shell;Ljava/lang/String;)I
    .locals 6
    .param p1, "shell"    # Lcom/android/server/YLAppFreezeController$Shell;
    .param p2, "cmd"    # Ljava/lang/String;

    .prologue
    .line 993
    const-string/jumbo v3, "YLAppFreezeController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onShellCommand:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    invoke-virtual {p1}, Lcom/android/server/YLAppFreezeController$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 995
    .local v2, "writer":Ljava/io/PrintWriter;
    const-string/jumbo v3, "YLAppFreezeController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getcmd:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    const-string/jumbo v3, "list"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 997
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 999
    .local v0, "tonken":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/YLAppFreezeController;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1000
    :try_start_1
    iget-object v3, p0, Lcom/android/server/YLAppFreezeController;->mFrozenRecordUtil:Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil;

    invoke-virtual {v3, v2}, Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil;->dump(Ljava/io/PrintWriter;)V

    .line 1001
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1004
    const/4 v3, 0x0

    .line 1006
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1004
    return v3

    .line 999
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1005
    :catchall_1
    move-exception v3

    .line 1006
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1005
    throw v3

    .line 1009
    .end local v0    # "tonken":J
    :cond_0
    const/4 v3, -0x1

    return v3
.end method

.method public onStart()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 205
    const-string/jumbo v0, "YLAppFreezeController"

    const-string/jumbo v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    new-instance v0, Lcom/android/server/YLAppFreezeController$Binderservice;

    invoke-direct {v0, p0, v2}, Lcom/android/server/YLAppFreezeController$Binderservice;-><init>(Lcom/android/server/YLAppFreezeController;Lcom/android/server/YLAppFreezeController$Binderservice;)V

    iput-object v0, p0, Lcom/android/server/YLAppFreezeController;->mBinderservice:Lcom/android/server/YLAppFreezeController$Binderservice;

    .line 207
    const-string/jumbo v0, "appfreeze"

    iget-object v1, p0, Lcom/android/server/YLAppFreezeController;->mBinderservice:Lcom/android/server/YLAppFreezeController$Binderservice;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/YLAppFreezeController;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 208
    const-class v0, Landroid/os/freeze/YLAppFreezeManagerInternal;

    new-instance v1, Lcom/android/server/YLAppFreezeController$LocalService;

    invoke-direct {v1, p0, v2}, Lcom/android/server/YLAppFreezeController$LocalService;-><init>(Lcom/android/server/YLAppFreezeController;Lcom/android/server/YLAppFreezeController$LocalService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/YLAppFreezeController;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 210
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    iput-object v0, p0, Lcom/android/server/YLAppFreezeController;->mUsageStatsInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 211
    new-instance v0, Lcom/android/server/YLAppFreezeController$4;

    invoke-direct {v0, p0}, Lcom/android/server/YLAppFreezeController$4;-><init>(Lcom/android/server/YLAppFreezeController;)V

    iput-object v0, p0, Lcom/android/server/YLAppFreezeController;->mAppStatuslistener:Landroid/app/usage/UsageStatsManagerInternal$AppStatusChangeInternalListener;

    .line 235
    iget-object v0, p0, Lcom/android/server/YLAppFreezeController;->mUsageStatsInternal:Landroid/app/usage/UsageStatsManagerInternal;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/android/server/YLAppFreezeController;->mUsageStatsInternal:Landroid/app/usage/UsageStatsManagerInternal;

    iget-object v1, p0, Lcom/android/server/YLAppFreezeController;->mAppStatuslistener:Landroid/app/usage/UsageStatsManagerInternal$AppStatusChangeInternalListener;

    invoke-virtual {v0, v1}, Landroid/app/usage/UsageStatsManagerInternal;->addAppStatusChangeInternalListener(Landroid/app/usage/UsageStatsManagerInternal$AppStatusChangeInternalListener;)V

    .line 204
    :cond_0
    return-void
.end method
