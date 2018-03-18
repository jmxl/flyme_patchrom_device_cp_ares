.class public Lcom/android/server/AppOpsService;
.super Lcom/android/internal/app/IAppOpsService$Stub;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AppOpsService$1;,
        Lcom/android/server/AppOpsService$AskRunnable;,
        Lcom/android/server/AppOpsService$Callback;,
        Lcom/android/server/AppOpsService$ChangeRec;,
        Lcom/android/server/AppOpsService$ClientRestrictionState;,
        Lcom/android/server/AppOpsService$ClientState;,
        Lcom/android/server/AppOpsService$Op;,
        Lcom/android/server/AppOpsService$Ops;,
        Lcom/android/server/AppOpsService$Restriction;,
        Lcom/android/server/AppOpsService$Shell;,
        Lcom/android/server/AppOpsService$UidState;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field static final TAG:Ljava/lang/String; = "AppOps"

.field static final WRITE_DELAY:J

.field static isAboard:Z

.field static isCTA:Z

.field private static final isPermissionPolicy:Z

.field private static lastPopTime:J

.field private static lastcode:I

.field private static lastpackageName:Ljava/lang/String;

.field private static lastuid:I

.field private static mPackagesUsed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAms:Lcom/android/server/am/ActivityManagerService;

.field final mAudioRestrictions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/AppOpsService$Restriction;",
            ">;>;"
        }
    .end annotation
.end field

.field final mClients:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/AppOpsService$ClientState;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field mFastWriteScheduled:Z

.field final mFile:Landroid/util/AtomicFile;

.field final mHandler:Landroid/os/Handler;

.field final mLooper:Landroid/os/Looper;

.field final mModeWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/AppOpsService$Callback;",
            ">;"
        }
    .end annotation
.end field

.field final mOpModeWatchers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppOpsService$Callback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mOpUserRestrictions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/AppOpsService$ClientRestrictionState;",
            ">;"
        }
    .end annotation
.end field

.field final mPackageModeWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppOpsService$Callback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSkipPackageNames:[Ljava/lang/String;

.field final mStrictEnable:Z

.field private final mUidStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/AppOpsService$UidState;",
            ">;"
        }
    .end annotation
.end field

.field final mWriteRunner:Ljava/lang/Runnable;

.field mWriteScheduled:Z

.field ownHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Lcom/android/server/AppOpsService;)Landroid/util/ArrayMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/AppOpsService;I)V
    .locals 0
    .param p1, "code"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->notifyWatchersOfChange(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 98
    const-string/jumbo v0, "persist.zeusis.sys.target"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/AppOpsService;->DEBUG:Z

    .line 101
    sget-boolean v0, Lcom/android/server/AppOpsService;->DEBUG:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x3e8

    :goto_0
    int-to-long v0, v0

    sput-wide v0, Lcom/android/server/AppOpsService;->WRITE_DELAY:J

    .line 106
    sput-boolean v2, Lcom/android/server/AppOpsService;->isAboard:Z

    .line 107
    sput-boolean v2, Lcom/android/server/AppOpsService;->isCTA:Z

    .line 108
    const-string/jumbo v0, "ro.zeusis.permissionpolicy"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/AppOpsService;->isPermissionPolicy:Z

    .line 2682
    sput v3, Lcom/android/server/AppOpsService;->lastcode:I

    .line 2683
    sput v3, Lcom/android/server/AppOpsService;->lastuid:I

    .line 2684
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/AppOpsService;->lastpackageName:Ljava/lang/String;

    .line 2685
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/AppOpsService;->lastPopTime:J

    .line 96
    return-void

    .line 101
    :cond_0
    const v0, 0x1b7740

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/File;Landroid/os/Handler;)V
    .locals 5
    .param p1, "storagePath"    # Ljava/io/File;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v4, 0x1

    .line 288
    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsService$Stub;-><init>()V

    .line 116
    new-instance v1, Lcom/android/server/AppOpsService$1;

    invoke-direct {v1, p0}, Lcom/android/server/AppOpsService$1;-><init>(Lcom/android/server/AppOpsService;)V

    iput-object v1, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    .line 132
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    .line 137
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    .line 140
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/AppOpsService;->mAms:Lcom/android/server/am/ActivityManagerService;

    .line 206
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 205
    iput-object v1, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    .line 208
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 207
    iput-object v1, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    .line 210
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 209
    iput-object v1, p0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    .line 212
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 211
    iput-object v1, p0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    .line 235
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    .line 957
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    .line 959
    const-string/jumbo v2, "com.cttl.testService"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 960
    const-string/jumbo v2, "com.cttl.usbtest"

    aput-object v2, v1, v4

    .line 961
    const-string/jumbo v2, "com.cttl.wlanswitchm"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 963
    const-string/jumbo v2, "android.accounts.cts.unaffiliated"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 964
    const-string/jumbo v2, "android.externalservice.service"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 957
    iput-object v1, p0, Lcom/android/server/AppOpsService;->mSkipPackageNames:[Ljava/lang/String;

    .line 289
    const-string/jumbo v1, "persist.zeusis.sys.target"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "01"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/AppOpsService;->isCTA:Z

    .line 290
    new-instance v1, Landroid/util/AtomicFile;

    invoke-direct {v1, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    .line 291
    invoke-static {}, Landroid/app/ZsAppOpsUtils;->getPackageList()Ljava/util/ArrayList;

    move-result-object v1

    sput-object v1, Lcom/android/server/AppOpsService;->mPackagesUsed:Ljava/util/ArrayList;

    .line 292
    iput-object p2, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    .line 293
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/AppOpsService;->mLooper:Landroid/os/Looper;

    .line 294
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "AppOps"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 295
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 296
    new-instance v1, Lcom/android/server/AppOpsService$2;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/AppOpsService$2;-><init>(Lcom/android/server/AppOpsService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/AppOpsService;->ownHandler:Landroid/os/Handler;

    .line 306
    iput-boolean v4, p0, Lcom/android/server/AppOpsService;->mStrictEnable:Z

    .line 288
    return-void
.end method

.method private static addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Ljava/util/ArrayList;)Ljava/util/HashMap;
    .locals 8
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/AppOpsService$Callback;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppOpsService$ChangeRec;",
            ">;>;II",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppOpsService$Callback;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/AppOpsService$Callback;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppOpsService$ChangeRec;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 735
    .local p0, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    .local p4, "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-nez p4, :cond_0

    .line 736
    return-object p0

    .line 738
    :cond_0
    if-nez p0, :cond_1

    .line 739
    new-instance p0, Ljava/util/HashMap;

    .end local p0    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 741
    .restart local p0    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    :cond_1
    const/4 v1, 0x0

    .line 742
    .local v1, "duplicate":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_6

    .line 743
    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Callback;

    .line 744
    .local v0, "cb":Lcom/android/server/AppOpsService$Callback;
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 745
    .local v6, "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;"
    if-nez v6, :cond_4

    .line 746
    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 747
    .restart local v6    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;"
    invoke-virtual {p0, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 758
    :cond_2
    :goto_1
    if-nez v1, :cond_3

    .line 759
    new-instance v7, Lcom/android/server/AppOpsService$ChangeRec;

    invoke-direct {v7, p1, p2, p3}, Lcom/android/server/AppOpsService$ChangeRec;-><init>(IILjava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 742
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 749
    :cond_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 750
    .local v5, "reportCount":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-ge v3, v5, :cond_2

    .line 751
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppOpsService$ChangeRec;

    .line 752
    .local v4, "report":Lcom/android/server/AppOpsService$ChangeRec;
    iget v7, v4, Lcom/android/server/AppOpsService$ChangeRec;->op:I

    if-ne v7, p1, :cond_5

    iget-object v7, v4, Lcom/android/server/AppOpsService$ChangeRec;->pkg:Ljava/lang/String;

    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 753
    const/4 v1, 0x1

    .line 754
    goto :goto_1

    .line 750
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 762
    .end local v0    # "cb":Lcom/android/server/AppOpsService$Callback;
    .end local v3    # "j":I
    .end local v4    # "report":Lcom/android/server/AppOpsService$ChangeRec;
    .end local v5    # "reportCount":I
    .end local v6    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;"
    :cond_6
    return-object p0
.end method

.method private askOperationLocked(IILjava/lang/String;Lcom/android/server/AppOpsService$Op;)I
    .locals 8
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "op"    # Lcom/android/server/AppOpsService$Op;

    .prologue
    .line 2738
    const-string/jumbo v0, "AppOps"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "askOperationLocked:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2739
    sget-boolean v0, Lcom/android/server/AppOpsService;->isCTA:Z

    if-nez v0, :cond_0

    .line 2740
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mAms:Lcom/android/server/am/ActivityManagerService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/AppOpsService;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p3}, Lcom/android/server/am/ActivityManagerService;->isTopPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2744
    :cond_0
    new-instance v6, Lcom/android/server/ZsPermissionDialogReqQueue$ZsPermissionDialogReq;

    invoke-direct {v6}, Lcom/android/server/ZsPermissionDialogReqQueue$ZsPermissionDialogReq;-><init>()V

    .line 2746
    .local v6, "request":Lcom/android/server/ZsPermissionDialogReqQueue$ZsPermissionDialogReq;
    iget-object v7, p0, Lcom/android/server/AppOpsService;->ownHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/AppOpsService$AskRunnable;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/AppOpsService$AskRunnable;-><init>(Lcom/android/server/AppOpsService;IILjava/lang/String;Lcom/android/server/AppOpsService$Op;Lcom/android/server/ZsPermissionDialogReqQueue$ZsPermissionDialogReq;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2748
    invoke-virtual {v6}, Lcom/android/server/ZsPermissionDialogReqQueue$ZsPermissionDialogReq;->get()I

    move-result v0

    return v0

    .line 2741
    .end local v6    # "request":Lcom/android/server/ZsPermissionDialogReqQueue$ZsPermissionDialogReq;
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private checkRestrictionLocked(IIILjava/lang/String;)I
    .locals 3
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1060
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 1061
    .local v1, "usageRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    if-eqz v1, :cond_0

    .line 1062
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Restriction;

    .line 1063
    .local v0, "r":Lcom/android/server/AppOpsService$Restriction;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {v2, p4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1067
    .end local v0    # "r":Lcom/android/server/AppOpsService$Restriction;
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 1064
    .restart local v0    # "r":Lcom/android/server/AppOpsService$Restriction;
    :cond_1
    iget v2, v0, Lcom/android/server/AppOpsService$Restriction;->mode:I

    return v2
.end method

.method private checkSystemUid(Ljava/lang/String;)V
    .locals 4
    .param p1, "function"    # Ljava/lang/String;

    .prologue
    .line 2576
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2577
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 2578
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " must by called by the system"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2575
    :cond_0
    return-void
.end method

.method private collectOps(Lcom/android/server/AppOpsService$Ops;[I)Ljava/util/ArrayList;
    .locals 13
    .param p1, "pkgOps"    # Lcom/android/server/AppOpsService$Ops;
    .param p2, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/AppOpsService$Ops;",
            "[I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 441
    const/4 v12, 0x0

    .line 442
    .local v12, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    if-nez p1, :cond_0

    .line 443
    return-object v1

    .line 445
    :cond_0
    if-nez p2, :cond_2

    .line 446
    new-instance v12, Ljava/util/ArrayList;

    .end local v12    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 447
    .local v12, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v1

    if-ge v11, v1, :cond_5

    .line 448
    invoke-virtual {p1, v11}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Op;

    .line 449
    .local v0, "curOp":Lcom/android/server/AppOpsService$Op;
    if-eqz v0, :cond_1

    .line 450
    new-instance v1, Landroid/app/AppOpsManager$OpEntry;

    iget v2, v0, Lcom/android/server/AppOpsService$Op;->op:I

    iget v3, v0, Lcom/android/server/AppOpsService$Op;->mode:I

    iget-wide v4, v0, Lcom/android/server/AppOpsService$Op;->time:J

    .line 451
    iget-wide v6, v0, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    iget v8, v0, Lcom/android/server/AppOpsService$Op;->duration:I

    iget v9, v0, Lcom/android/server/AppOpsService$Op;->proxyUid:I

    .line 452
    iget-object v10, v0, Lcom/android/server/AppOpsService$Op;->proxyPackageName:Ljava/lang/String;

    .line 450
    invoke-direct/range {v1 .. v10}, Landroid/app/AppOpsManager$OpEntry;-><init>(IIJJIILjava/lang/String;)V

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 456
    .end local v0    # "curOp":Lcom/android/server/AppOpsService$Op;
    .end local v11    # "j":I
    .local v12, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    :cond_2
    const/4 v11, 0x0

    .end local v12    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    .restart local v11    # "j":I
    :goto_1
    array-length v1, p2

    if-ge v11, v1, :cond_5

    .line 457
    aget v1, p2, v11

    invoke-virtual {p1, v1}, Lcom/android/server/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Op;

    .line 458
    .restart local v0    # "curOp":Lcom/android/server/AppOpsService$Op;
    if-eqz v0, :cond_4

    .line 459
    if-nez v12, :cond_3

    .line 460
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 462
    :cond_3
    new-instance v1, Landroid/app/AppOpsManager$OpEntry;

    iget v2, v0, Lcom/android/server/AppOpsService$Op;->op:I

    iget v3, v0, Lcom/android/server/AppOpsService$Op;->mode:I

    iget-wide v4, v0, Lcom/android/server/AppOpsService$Op;->time:J

    .line 463
    iget-wide v6, v0, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    iget v8, v0, Lcom/android/server/AppOpsService$Op;->duration:I

    iget v9, v0, Lcom/android/server/AppOpsService$Op;->proxyUid:I

    .line 464
    iget-object v10, v0, Lcom/android/server/AppOpsService$Op;->proxyPackageName:Ljava/lang/String;

    .line 462
    invoke-direct/range {v1 .. v10}, Landroid/app/AppOpsManager$OpEntry;-><init>(IIJJIILjava/lang/String;)V

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 468
    .end local v0    # "curOp":Lcom/android/server/AppOpsService$Op;
    :cond_5
    return-object v12
.end method

.method static dumpCommandHelp(Ljava/io/PrintWriter;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 2087
    const-string/jumbo v0, "AppOps service (appops) commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2088
    const-string/jumbo v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2089
    const-string/jumbo v0, "    Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2090
    const-string/jumbo v0, "  set [--user <USER_ID>] <PACKAGE> <OP> <MODE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2091
    const-string/jumbo v0, "    Set the mode for a particular application and operation."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2092
    const-string/jumbo v0, "  get [--user <USER_ID>] <PACKAGE> [<OP>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2093
    const-string/jumbo v0, "    Return the mode for a particular application and optional operation."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2094
    const-string/jumbo v0, "  query-op [--user <USER_ID>] <OP> [<MODE>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2095
    const-string/jumbo v0, "    Print all packages that currently have the given op in the given mode."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2096
    const-string/jumbo v0, "  reset [--user <USER_ID>] [<PACKAGE>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2097
    const-string/jumbo v0, "    Reset the given application or all applications to default modes."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2098
    const-string/jumbo v0, "  write-settings"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2099
    const-string/jumbo v0, "    Immediately write pending changes to storage."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2100
    const-string/jumbo v0, "  read-settings"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2101
    const-string/jumbo v0, "    Read the last written settings, replacing current state in RAM."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2102
    const-string/jumbo v0, "  options:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2103
    const-string/jumbo v0, "    <PACKAGE> an Android package name."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2104
    const-string/jumbo v0, "    <OP>      an AppOps operation."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2105
    const-string/jumbo v0, "    <MODE>    one of allow, ignore, deny, or default"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2106
    const-string/jumbo v0, "    <USER_ID> the user id under which the package is installed. If --user is not"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2107
    const-string/jumbo v0, "              specified, the current user is assumed."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2086
    return-void
.end method

.method private dumpHelp(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 2299
    const-string/jumbo v0, "AppOps service (appops) dump options:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2300
    const-string/jumbo v0, "  none"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2298
    return-void
.end method

.method private static getDefaultMode(I)I
    .locals 3
    .param p0, "code"    # I

    .prologue
    const/4 v2, 0x1

    .line 2595
    sget-boolean v1, Lcom/android/server/AppOpsService;->isPermissionPolicy:Z

    if-eqz v1, :cond_0

    .line 2596
    invoke-static {p0, v2, v2}, Landroid/app/AppOpsManager;->opToDefaultMode(IZZ)I

    move-result v0

    .line 2600
    .local v0, "mode":I
    :goto_0
    return v0

    .line 2598
    .end local v0    # "mode":I
    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, v2, v1}, Landroid/app/AppOpsManager;->opToDefaultMode(IZZ)I

    move-result v0

    .restart local v0    # "mode":I
    goto :goto_0
.end method

.method private getDefaultMode(IILjava/lang/String;)I
    .locals 10
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 2626
    invoke-static {p2, p3}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2628
    .local v6, "resolvedPackageName":Ljava/lang/String;
    if-nez v6, :cond_0

    .line 2629
    const/4 v7, 0x1

    return v7

    .line 2631
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/AppOpsService;->isSkipUseSystem(II)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2632
    return v8

    .line 2635
    :cond_1
    invoke-direct {p0, p3}, Lcom/android/server/AppOpsService;->isGmsApp(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2636
    return v8

    .line 2639
    :cond_2
    invoke-virtual {p0, p1, p3}, Lcom/android/server/AppOpsService;->isSkipPackage(ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2640
    return v8

    .line 2642
    :cond_3
    const/4 v5, 0x0

    .line 2643
    .local v5, "isSystemApp":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2647
    .local v2, "ident":J
    :try_start_0
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 2648
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v6, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 2649
    .local v4, "info":Landroid/content/pm/ApplicationInfo;
    iget v7, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_4

    .line 2650
    iget v7, v4, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit16 v7, v7, 0x80

    if-eqz v7, :cond_5

    .line 2651
    :cond_4
    const/4 v5, 0x1

    .line 2659
    .end local v4    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_5
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2663
    if-nez v5, :cond_6

    .line 2664
    sget-object v7, Landroid/app/ZsAppOpsUtils;->TYPE_LOCATION_OPS:[I

    invoke-static {v7, p1}, Landroid/app/ZsAppOpsUtils;->has([II)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2665
    sget-object v7, Lcom/android/server/AppOpsService;->mPackagesUsed:Ljava/util/ArrayList;

    if-eqz v7, :cond_6

    sget-object v7, Lcom/android/server/AppOpsService;->mPackagesUsed:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2679
    :cond_6
    :goto_1
    invoke-static {p1, v5}, Lcom/android/server/AppOpsService;->getDefaultMode(IZ)I

    move-result v7

    return v7

    .line 2654
    :catch_0
    move-exception v0

    .line 2655
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 2656
    const-string/jumbo v7, "AppOps"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getDefaultMode:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2658
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v7

    .line 2659
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2658
    throw v7

    .line 2667
    :cond_7
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    sget-object v7, Lcom/android/server/AppOpsService;->mPackagesUsed:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_6

    .line 2668
    sget-object v7, Lcom/android/server/AppOpsService;->mPackagesUsed:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 2669
    const/4 v5, 0x1

    goto :goto_1

    .line 2667
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private static getDefaultMode(IZ)I
    .locals 3
    .param p0, "code"    # I
    .param p1, "isSystemApp"    # Z

    .prologue
    const/4 v2, 0x1

    .line 2606
    sget-boolean v1, Lcom/android/server/AppOpsService;->isPermissionPolicy:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    .line 2609
    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, v2, v1}, Landroid/app/AppOpsManager;->opToDefaultMode(IZZ)I

    move-result v0

    .line 2611
    .local v0, "mode":I
    :goto_0
    return v0

    .line 2607
    .end local v0    # "mode":I
    :cond_1
    invoke-static {p0, v2, v2}, Landroid/app/AppOpsManager;->opToDefaultMode(IZZ)I

    move-result v0

    .restart local v0    # "mode":I
    goto :goto_0
.end method

.method private getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;
    .locals 2
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "edit"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1576
    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v0

    .line 1577
    .local v0, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v0, :cond_0

    .line 1578
    return-object v1

    .line 1580
    :cond_0
    invoke-direct {p0, v0, p1, p4}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v1

    return-object v1
.end method

.method private getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;
    .locals 4
    .param p1, "ops"    # Lcom/android/server/AppOpsService$Ops;
    .param p2, "code"    # I
    .param p3, "edit"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1584
    invoke-virtual {p1, p2}, Lcom/android/server/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppOpsService$Op;

    .line 1585
    .local v1, "op":Lcom/android/server/AppOpsService$Op;
    if-nez v1, :cond_1

    .line 1586
    if-nez p3, :cond_0

    .line 1587
    return-object v2

    .line 1589
    :cond_0
    iget-object v2, p1, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v2, v2, Lcom/android/server/AppOpsService$UidState;->uid:I

    iget-object v3, p1, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-direct {p0, p2, v2, v3}, Lcom/android/server/AppOpsService;->getDefaultMode(IILjava/lang/String;)I

    move-result v0

    .line 1590
    .local v0, "mode":I
    new-instance v1, Lcom/android/server/AppOpsService$Op;

    .end local v1    # "op":Lcom/android/server/AppOpsService$Op;
    iget-object v2, p1, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v2, v2, Lcom/android/server/AppOpsService$UidState;->uid:I

    iget-object v3, p1, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-direct {v1, v2, v3, p2, v0}, Lcom/android/server/AppOpsService$Op;-><init>(ILjava/lang/String;II)V

    .line 1591
    .restart local v1    # "op":Lcom/android/server/AppOpsService$Op;
    invoke-virtual {p1, p2, v1}, Lcom/android/server/AppOpsService$Ops;->put(ILjava/lang/Object;)V

    .line 1593
    .end local v0    # "mode":I
    :cond_1
    if-eqz p3, :cond_2

    .line 1594
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V

    .line 1596
    :cond_2
    return-object v1
.end method

.method private getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "edit"    # Z

    .prologue
    .line 1475
    if-nez p1, :cond_1

    .line 1476
    const-string/jumbo p2, "root"

    .line 1480
    :cond_0
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v0

    return-object v0

    .line 1477
    :cond_1
    const/16 v0, 0x7d0

    if-ne p1, v0, :cond_0

    .line 1478
    const-string/jumbo p2, "com.android.shell"

    goto :goto_0
.end method

.method private getOpsRawLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;
    .locals 12
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "edit"    # Z

    .prologue
    .line 1484
    invoke-direct {p0, p1, p3}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v8

    .line 1485
    .local v8, "uidState":Lcom/android/server/AppOpsService$UidState;
    if-nez v8, :cond_0

    .line 1486
    const/4 v9, 0x0

    return-object v9

    .line 1489
    :cond_0
    iget-object v9, v8, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez v9, :cond_2

    .line 1490
    if-nez p3, :cond_1

    .line 1491
    const/4 v9, 0x0

    return-object v9

    .line 1493
    :cond_1
    new-instance v9, Landroid/util/ArrayMap;

    invoke-direct {v9}, Landroid/util/ArrayMap;-><init>()V

    iput-object v9, v8, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 1496
    :cond_2
    iget-object v9, v8, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v9, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AppOpsService$Ops;

    .line 1497
    .local v6, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v6, :cond_b

    .line 1498
    if-nez p3, :cond_3

    .line 1499
    const/4 v9, 0x0

    return-object v9

    .line 1501
    :cond_3
    const/4 v3, 0x0

    .line 1504
    .local v3, "isPrivileged":Z
    if-eqz p1, :cond_a

    .line 1505
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1507
    .local v4, "ident":J
    const/4 v7, -0x1

    .line 1509
    .local v7, "pkgUid":I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v9

    .line 1512
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    .line 1511
    const/high16 v11, 0x10000000

    .line 1509
    invoke-interface {v9, p2, v11, v10}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1513
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_6

    .line 1514
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1515
    iget v9, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v9, v9, 0x8

    if-eqz v9, :cond_5

    const/4 v3, 0x1

    .line 1532
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_4
    :goto_0
    if-eq v7, p1, :cond_9

    .line 1535
    :try_start_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v9, "here"

    invoke-direct {v2, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1536
    .local v2, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 1537
    const-string/jumbo v9, "AppOps"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Bad call: specified package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1538
    const-string/jumbo v11, " under uid "

    .line 1537
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1538
    const-string/jumbo v11, " but it is really "

    .line 1537
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1539
    const/4 v9, 0x0

    .line 1542
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1539
    return-object v9

    .line 1515
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_5
    const/4 v3, 0x0

    goto :goto_0

    .line 1518
    :cond_6
    :try_start_2
    const-string/jumbo v9, "media"

    invoke-virtual {v9, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1519
    const/16 v7, 0x3f5

    .line 1520
    const/4 v3, 0x0

    goto :goto_0

    .line 1521
    :cond_7
    const-string/jumbo v9, "audioserver"

    invoke-virtual {v9, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1522
    const/16 v7, 0x411

    .line 1523
    const/4 v3, 0x0

    goto :goto_0

    .line 1524
    :cond_8
    const-string/jumbo v9, "cameraserver"

    invoke-virtual {v9, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v9

    if-eqz v9, :cond_4

    .line 1525
    const/16 v7, 0x417

    .line 1526
    const/4 v3, 0x0

    goto :goto_0

    .line 1529
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 1530
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v9, "AppOps"

    const-string/jumbo v10, "Could not contact PackageManager"

    invoke-static {v9, v10, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1541
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v9

    .line 1542
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1541
    throw v9

    .line 1542
    :cond_9
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1545
    .end local v4    # "ident":J
    .end local v7    # "pkgUid":I
    :cond_a
    new-instance v6, Lcom/android/server/AppOpsService$Ops;

    .end local v6    # "ops":Lcom/android/server/AppOpsService$Ops;
    invoke-direct {v6, p2, v8, v3}, Lcom/android/server/AppOpsService$Ops;-><init>(Ljava/lang/String;Lcom/android/server/AppOpsService$UidState;Z)V

    .line 1546
    .restart local v6    # "ops":Lcom/android/server/AppOpsService$Ops;
    iget-object v9, v8, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v9, p2, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1548
    .end local v3    # "isPrivileged":Z
    :cond_b
    return-object v6
.end method

.method private static getPackagesForUid(I)[Ljava/lang/String;
    .locals 3
    .param p0, "uid"    # I

    .prologue
    .line 3063
    const/4 v1, 0x0

    .line 3065
    .local v1, "packageNames":[Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-interface {v2, p0}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3069
    .end local v1    # "packageNames":[Ljava/lang/String;
    :goto_0
    if-nez v1, :cond_0

    .line 3070
    sget-object v2, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object v2

    .line 3072
    :cond_0
    return-object v1

    .line 3066
    .restart local v1    # "packageNames":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;
    .locals 3
    .param p1, "uid"    # I
    .param p2, "edit"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1463
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$UidState;

    .line 1464
    .local v0, "uidState":Lcom/android/server/AppOpsService$UidState;
    if-nez v0, :cond_1

    .line 1465
    if-nez p2, :cond_0

    .line 1466
    return-object v2

    .line 1468
    :cond_0
    new-instance v0, Lcom/android/server/AppOpsService$UidState;

    .end local v0    # "uidState":Lcom/android/server/AppOpsService$UidState;
    invoke-direct {v0, p1}, Lcom/android/server/AppOpsService$UidState;-><init>(I)V

    .line 1469
    .restart local v0    # "uidState":Lcom/android/server/AppOpsService$UidState;
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1471
    :cond_1
    return-object v0
.end method

.method private isGmsApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 2616
    const-string/jumbo v0, "com.google.android.gms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2617
    const-string/jumbo v0, "com.google.android.gsf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2616
    if-nez v0, :cond_0

    .line 2618
    const-string/jumbo v0, "com.google.android.gsf.login"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2616
    if-eqz v0, :cond_1

    .line 2619
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 2621
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isOpRestrictedLocked(IILjava/lang/String;)Z
    .locals 8
    .param p1, "uid"    # I
    .param p2, "code"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1600
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 1601
    .local v4, "userHandle":I
    iget-object v5, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 1603
    .local v2, "restrictionSetCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 1606
    iget-object v5, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppOpsService$ClientRestrictionState;

    .line 1607
    .local v3, "restrictionState":Lcom/android/server/AppOpsService$ClientRestrictionState;
    invoke-virtual {v3, p2, p3, v4}, Lcom/android/server/AppOpsService$ClientRestrictionState;->hasRestriction(ILjava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1608
    invoke-static {p2}, Landroid/app/AppOpsManager;->opAllowSystemBypassRestriction(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1611
    invoke-direct {p0, p1, p3, v7}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v1

    .line 1612
    .local v1, "ops":Lcom/android/server/AppOpsService$Ops;
    if-eqz v1, :cond_0

    iget-boolean v5, v1, Lcom/android/server/AppOpsService$Ops;->isPrivileged:Z

    if-eqz v5, :cond_0

    .line 1613
    return v6

    .line 1617
    .end local v1    # "ops":Lcom/android/server/AppOpsService$Ops;
    :cond_0
    return v7

    .line 1603
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1620
    .end local v3    # "restrictionState":Lcom/android/server/AppOpsService$ClientRestrictionState;
    :cond_2
    return v6
.end method

.method private isPackageSuspendedForUser(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 1052
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 1053
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 1052
    invoke-interface {v1, p1, v2}, Landroid/content/pm/IPackageManager;->isPackageSuspendedForUser(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1054
    :catch_0
    move-exception v0

    .line 1055
    .local v0, "re":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "Could not talk to package manager service"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private isSamePermissionReq(IILjava/lang/String;)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packagename"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2689
    if-nez p2, :cond_2

    .line 2690
    const-string/jumbo p3, "root"

    .line 2695
    :cond_0
    :goto_0
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/server/AppOpsService;->lastpackageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2728
    :cond_1
    return v3

    .line 2691
    :cond_2
    const/16 v0, 0x7d0

    if-ne p2, v0, :cond_0

    .line 2692
    const-string/jumbo p3, "com.android.shell"

    goto :goto_0

    .line 2696
    :cond_3
    sget v0, Lcom/android/server/AppOpsService;->lastuid:I

    if-ne v0, p2, :cond_1

    sget-object v0, Lcom/android/server/AppOpsService;->lastpackageName:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2698
    sget v0, Lcom/android/server/AppOpsService;->lastcode:I

    if-ne v0, p1, :cond_4

    .line 2699
    return v2

    .line 2701
    :cond_4
    sget-object v0, Landroid/app/ZsAppOpsUtils;->TYPE_LOCATION_OPS:[I

    invoke-static {v0, p1}, Landroid/app/ZsAppOpsUtils;->has([II)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Landroid/app/ZsAppOpsUtils;->TYPE_LOCATION_OPS:[I

    sget v1, Lcom/android/server/AppOpsService;->lastcode:I

    invoke-static {v0, v1}, Landroid/app/ZsAppOpsUtils;->has([II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2702
    return v2

    .line 2706
    :cond_5
    sget-object v0, Landroid/app/ZsAppOpsUtils;->TYPE_STORAGE_OPS:[I

    invoke-static {v0, p1}, Landroid/app/ZsAppOpsUtils;->has([II)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Landroid/app/ZsAppOpsUtils;->TYPE_STORAGE_OPS:[I

    sget v1, Lcom/android/server/AppOpsService;->lastcode:I

    invoke-static {v0, v1}, Landroid/app/ZsAppOpsUtils;->has([II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2707
    return v2

    .line 2711
    :cond_6
    sget-object v0, Landroid/app/ZsAppOpsUtils;->TYPE_STORAGE_OPS:[I

    invoke-static {v0, p1}, Landroid/app/ZsAppOpsUtils;->has([II)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Landroid/app/ZsAppOpsUtils;->TYPE_STORAGE_OPS:[I

    sget v1, Lcom/android/server/AppOpsService;->lastcode:I

    invoke-static {v0, v1}, Landroid/app/ZsAppOpsUtils;->has([II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2712
    return v2

    .line 2716
    :cond_7
    sget-object v0, Landroid/app/ZsAppOpsUtils;->TYPE_CALENDAR_OPS:[I

    invoke-static {v0, p1}, Landroid/app/ZsAppOpsUtils;->has([II)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Landroid/app/ZsAppOpsUtils;->TYPE_CALENDAR_OPS:[I

    sget v1, Lcom/android/server/AppOpsService;->lastcode:I

    invoke-static {v0, v1}, Landroid/app/ZsAppOpsUtils;->has([II)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2717
    return v2

    .line 2721
    :cond_8
    sget-object v0, Landroid/app/ZsAppOpsUtils;->TYPE_READ_SMS_LOG_OPS:[I

    invoke-static {v0, p1}, Landroid/app/ZsAppOpsUtils;->has([II)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/app/ZsAppOpsUtils;->TYPE_READ_SMS_LOG_OPS:[I

    sget v1, Lcom/android/server/AppOpsService;->lastcode:I

    invoke-static {v0, v1}, Landroid/app/ZsAppOpsUtils;->has([II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2722
    return v2
.end method

.method private isSkipPackageName(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 968
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mSkipPackageNames:[Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mSkipPackageNames:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_1

    .line 969
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mSkipPackageNames:[Ljava/lang/String;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 970
    .local v0, "pkg":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    return v1

    .line 969
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 973
    .end local v0    # "pkg":Ljava/lang/String;
    :cond_1
    return v2
.end method

.method private isSkipUseSystem(II)Z
    .locals 1
    .param p1, "code"    # I
    .param p2, "uid"    # I

    .prologue
    .line 3271
    const/16 v0, 0x2710

    if-gt p2, v0, :cond_0

    const/16 v0, 0x21

    if-eq p1, v0, :cond_0

    const/16 v0, 0x23

    if-eq p1, v0, :cond_0

    .line 3273
    const/4 v0, 0x1

    return v0

    .line 3275
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isStrictOpEnable()Z
    .locals 2

    .prologue
    .line 551
    const-string/jumbo v0, "persist.sys.strict_op_enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private noteOperationUnchecked(IILjava/lang/String;ILjava/lang/String;Z)I
    .locals 10
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "proxyUid"    # I
    .param p5, "proxyPackageName"    # Ljava/lang/String;
    .param p6, "fromBroadcast"    # Z

    .prologue
    .line 1164
    invoke-direct {p0, p1, p2}, Lcom/android/server/AppOpsService;->isSkipUseSystem(II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1165
    const/4 v6, 0x0

    return v6

    .line 1167
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/android/server/AppOpsService;->isSkipPackage(ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1168
    const/4 v6, 0x0

    return v6

    .line 1169
    :cond_1
    invoke-static {p1, p3}, Landroid/app/ZsAppOpsUtils;->isSkipPackage(ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1170
    const/4 v6, 0x0

    return v6

    .line 1176
    :cond_2
    const/4 v6, 0x1

    invoke-direct {p0, p2, p3, v6}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v1

    .line 1177
    .local v1, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v1, :cond_4

    .line 1178
    sget-boolean v6, Lcom/android/server/AppOpsService;->DEBUG:Z

    if-eqz v6, :cond_3

    const-string/jumbo v6, "AppOps"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "noteOperation: no op for code "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1179
    const-string/jumbo v8, " package "

    .line 1178
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    :cond_3
    const/4 v6, 0x2

    return v6

    .line 1183
    :cond_4
    const/4 v6, 0x1

    invoke-direct {p0, v1, p1, v6}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v0

    .line 1185
    .local v0, "op":Lcom/android/server/AppOpsService$Op;
    invoke-direct {p0, p2, p1, p3}, Lcom/android/server/AppOpsService;->isOpRestrictedLocked(IILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1186
    sget-boolean v6, Lcom/android/server/AppOpsService;->DEBUG:Z

    if-eqz v6, :cond_5

    const-string/jumbo v6, "AppOps"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "noteOperation: isOpRestricted code "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1187
    const-string/jumbo v8, " package "

    .line 1186
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    :cond_5
    const/4 v6, 0x1

    return v6

    .line 1190
    :cond_6
    iget v6, v0, Lcom/android/server/AppOpsService$Op;->duration:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_7

    .line 1191
    const-string/jumbo v6, "AppOps"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Noting op not finished: uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " pkg "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1192
    const-string/jumbo v8, " code "

    .line 1191
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1192
    const-string/jumbo v8, " time="

    .line 1191
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1192
    iget-wide v8, v0, Lcom/android/server/AppOpsService$Op;->time:J

    .line 1191
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1192
    const-string/jumbo v8, " duration="

    .line 1191
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1192
    iget v8, v0, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 1191
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    :cond_7
    const/4 v6, 0x0

    iput v6, v0, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 1195
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v2

    .line 1196
    .local v2, "switchCode":I
    iget-object v5, v1, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    .line 1198
    .local v5, "uidState":Lcom/android/server/AppOpsService$UidState;
    const/16 v6, 0xf

    if-eq p1, v6, :cond_8

    const/16 v6, 0x46

    if-ne p1, v6, :cond_a

    .line 1199
    :cond_8
    const-string/jumbo v6, "com.android.providers.telephony"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 1200
    const-string/jumbo v6, "com.android.messaging"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 1199
    if-eqz v6, :cond_a

    .line 1201
    :cond_9
    const/4 v6, 0x0

    return v6

    .line 1207
    :cond_a
    iget-object v6, v5, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v6, :cond_d

    iget-object v6, v5, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v6

    if-ltz v6, :cond_d

    .line 1208
    iget-object v6, v5, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    .line 1209
    .local v4, "uidMode":I
    if-nez v4, :cond_b

    .line 1210
    const/4 v6, 0x0

    return v6

    .line 1211
    :cond_b
    const/4 v6, 0x4

    if-eq v4, v6, :cond_d

    .line 1213
    sget-boolean v6, Lcom/android/server/AppOpsService;->DEBUG:Z

    if-eqz v6, :cond_c

    const-string/jumbo v6, "AppOps"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "noteOperation uidState: reject #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Lcom/android/server/AppOpsService$Op;->mode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " for code "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1214
    const-string/jumbo v8, " ("

    .line 1213
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1214
    const-string/jumbo v8, ") uid "

    .line 1213
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1214
    const-string/jumbo v8, " package "

    .line 1213
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 1217
    return v4

    .line 1221
    .end local v4    # "uidMode":I
    :cond_d
    if-eq v2, p1, :cond_f

    const/4 v6, 0x1

    invoke-direct {p0, v1, v2, v6}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v3

    .line 1222
    .local v3, "switchOp":Lcom/android/server/AppOpsService$Op;
    :goto_0
    iget v6, v3, Lcom/android/server/AppOpsService$Op;->mode:I

    if-eqz v6, :cond_10

    iget v6, v3, Lcom/android/server/AppOpsService$Op;->mode:I

    const/4 v7, 0x4

    if-eq v6, v7, :cond_10

    .line 1223
    sget-boolean v6, Lcom/android/server/AppOpsService;->DEBUG:Z

    if-eqz v6, :cond_e

    const-string/jumbo v6, "AppOps"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "noteOperation: reject #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Lcom/android/server/AppOpsService$Op;->mode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " for code "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1224
    const-string/jumbo v8, " ("

    .line 1223
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1224
    const-string/jumbo v8, ") uid "

    .line 1223
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1224
    const-string/jumbo v8, " package "

    .line 1223
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 1227
    iget v6, v3, Lcom/android/server/AppOpsService$Op;->mode:I

    return v6

    .end local v3    # "switchOp":Lcom/android/server/AppOpsService$Op;
    :cond_f
    move-object v3, v0

    .line 1221
    goto :goto_0

    .line 1228
    .restart local v3    # "switchOp":Lcom/android/server/AppOpsService$Op;
    :cond_10
    iget v6, v3, Lcom/android/server/AppOpsService$Op;->mode:I

    if-nez v6, :cond_12

    .line 1229
    sget-boolean v6, Lcom/android/server/AppOpsService;->DEBUG:Z

    if-eqz v6, :cond_11

    .line 1230
    const-string/jumbo v6, "AppOps"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "noteOperation: allowing code "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1231
    const-string/jumbo v8, " package "

    .line 1230
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    :cond_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/server/AppOpsService$Op;->time:J

    .line 1233
    const-wide/16 v6, 0x0

    iput-wide v6, v0, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 1234
    iget v6, v0, Lcom/android/server/AppOpsService$Op;->allowedCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Lcom/android/server/AppOpsService$Op;->allowedCount:I

    .line 1235
    const/4 v6, 0x0

    return v6

    .line 1237
    :cond_12
    if-eqz p6, :cond_13

    .line 1238
    iget v6, v3, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-direct {p0, v6, p2, p3}, Lcom/android/server/AppOpsService;->getDefaultMode(IILjava/lang/String;)I

    move-result v6

    return v6

    .line 1239
    :cond_13
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/AppOpsService;->mLooper:Landroid/os/Looper;

    if-ne v6, v7, :cond_14

    .line 1240
    const-string/jumbo v6, "AppOps"

    .line 1241
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "noteOperation: This method will deadlock if called from the main thread. (Code: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1243
    const-string/jumbo v8, " uid: "

    .line 1241
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1245
    const-string/jumbo v8, " package: "

    .line 1241
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1246
    const-string/jumbo v8, ")"

    .line 1241
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1240
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    iget v6, v3, Lcom/android/server/AppOpsService$Op;->mode:I

    return v6

    .line 1249
    :cond_14
    sget-boolean v6, Lcom/android/server/AppOpsService;->isCTA:Z

    if-nez v6, :cond_16

    .line 1250
    iget-wide v6, v0, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, v0, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3a98

    cmp-long v6, v6, v8

    if-gez v6, :cond_15

    .line 1251
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 1252
    const/4 v6, 0x1

    return v6

    .line 1255
    :cond_15
    iget-wide v6, v0, Lcom/android/server/AppOpsService$Op;->time:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_16

    iget-wide v6, v0, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, v0, Lcom/android/server/AppOpsService$Op;->time:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3a98

    cmp-long v6, v6, v8

    if-gez v6, :cond_16

    .line 1256
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/server/AppOpsService$Op;->time:J

    .line 1257
    iget v6, v0, Lcom/android/server/AppOpsService$Op;->allowedCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Lcom/android/server/AppOpsService$Op;->allowedCount:I

    .line 1258
    const-wide/16 v6, 0x0

    iput-wide v6, v0, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 1259
    const/4 v6, 0x0

    return v6

    .line 1263
    :cond_16
    iget v6, v0, Lcom/android/server/AppOpsService$Op;->noteOpCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Lcom/android/server/AppOpsService$Op;->noteOpCount:I

    .line 1266
    invoke-direct {p0, p1, p2, p3, v3}, Lcom/android/server/AppOpsService;->askOperationLocked(IILjava/lang/String;Lcom/android/server/AppOpsService$Op;)I

    move-result v6

    return v6
.end method

.method private notifyWatchersOfChange(I)V
    .locals 11
    .param p1, "code"    # I

    .prologue
    .line 2536
    monitor-enter p0

    .line 2537
    :try_start_0
    iget-object v8, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2538
    .local v2, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-nez v2, :cond_0

    monitor-exit p0

    .line 2539
    return-void

    .line 2541
    :cond_0
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v3, "clonedCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    monitor-exit p0

    .line 2547
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2549
    .local v6, "identity":J
    :try_start_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2550
    .local v1, "callbackCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_1

    .line 2551
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Callback;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2553
    .local v0, "callback":Lcom/android/server/AppOpsService$Callback;
    :try_start_3
    iget-object v8, v0, Lcom/android/server/AppOpsService$Callback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    const/4 v9, -0x1

    const/4 v10, 0x0

    invoke-interface {v8, p1, v9, v10}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(IILjava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2550
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2536
    .end local v0    # "callback":Lcom/android/server/AppOpsService$Callback;
    .end local v1    # "callbackCount":I
    .end local v2    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .end local v3    # "clonedCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .end local v5    # "i":I
    .end local v6    # "identity":J
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 2554
    .restart local v0    # "callback":Lcom/android/server/AppOpsService$Callback;
    .restart local v1    # "callbackCount":I
    .restart local v2    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v3    # "clonedCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v5    # "i":I
    .restart local v6    # "identity":J
    :catch_0
    move-exception v4

    .line 2555
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string/jumbo v8, "AppOps"

    const-string/jumbo v9, "Error dispatching op op change"

    invoke-static {v8, v9, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 2558
    .end local v0    # "callback":Lcom/android/server/AppOpsService$Callback;
    .end local v1    # "callbackCount":I
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v5    # "i":I
    :catchall_1
    move-exception v8

    .line 2559
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2558
    throw v8

    .line 2559
    .restart local v1    # "callbackCount":I
    .restart local v5    # "i":I
    :cond_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2534
    return-void
.end method

.method static onShellCommand(Lcom/android/server/AppOpsService$Shell;Ljava/lang/String;)I
    .locals 31
    .param p0, "shell"    # Lcom/android/server/AppOpsService$Shell;
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 2111
    if-nez p1, :cond_0

    .line 2112
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/AppOpsService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v25

    return v25

    .line 2114
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AppOpsService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v19

    .line 2115
    .local v19, "pw":Ljava/io/PrintWriter;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AppOpsService$Shell;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v8

    .line 2117
    .local v8, "err":Ljava/io/PrintWriter;
    :try_start_0
    const-string/jumbo v25, "set"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1

    .line 2119
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1, v8}, Lcom/android/server/AppOpsService$Shell;->parseUserPackageOp(ZLjava/io/PrintWriter;)I

    move-result v20

    .line 2120
    .local v20, "res":I
    if-gez v20, :cond_6

    .line 2121
    return v20

    .line 2117
    .end local v20    # "res":I
    :cond_1
    const-string/jumbo v25, "get"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2

    .line 2138
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1, v8}, Lcom/android/server/AppOpsService$Shell;->parseUserPackageOp(ZLjava/io/PrintWriter;)I

    move-result v20

    .line 2139
    .restart local v20    # "res":I
    if-gez v20, :cond_9

    .line 2140
    return v20

    .line 2117
    .end local v20    # "res":I
    :cond_2
    const-string/jumbo v25, "query-op"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_3

    .line 2197
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1, v8}, Lcom/android/server/AppOpsService$Shell;->parseUserOpMode(ILjava/io/PrintWriter;)I

    move-result v20

    .line 2198
    .restart local v20    # "res":I
    if-gez v20, :cond_13

    .line 2199
    return v20

    .line 2117
    .end local v20    # "res":I
    :cond_3
    const-string/jumbo v25, "reset"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_4

    .line 2225
    const/16 v17, 0x0

    .line 2226
    .local v17, "packageName":Ljava/lang/String;
    const/16 v21, -0x2

    .line 2227
    .end local v17    # "packageName":Ljava/lang/String;
    .local v21, "userId":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AppOpsService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v4

    .local v4, "argument":Ljava/lang/String;
    if-eqz v4, :cond_1c

    .line 2228
    const-string/jumbo v25, "--user"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1a

    .line 2229
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AppOpsService$Shell;->getNextArgRequired()Ljava/lang/String;

    move-result-object v24

    .line 2230
    .local v24, "userStr":Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v21

    goto :goto_0

    .line 2117
    .end local v4    # "argument":Ljava/lang/String;
    .end local v21    # "userId":I
    .end local v24    # "userStr":Ljava/lang/String;
    :cond_4
    const-string/jumbo v25, "write-settings"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 2261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    .line 2262
    const-string/jumbo v26, "android.permission.UPDATE_APP_OPS_STATS"

    .line 2263
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v27

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v28

    const/16 v29, 0x0

    .line 2261
    invoke-virtual/range {v25 .. v29}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 2264
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v22

    .line 2266
    .local v22, "token":J
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    move-object/from16 v26, v0

    monitor-enter v26
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2267
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    move-object/from16 v27, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v26

    .line 2269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/AppOpsService;->writeState()V

    .line 2270
    const-string/jumbo v25, "Current settings written."

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2272
    :try_start_4
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2274
    const/16 v25, 0x0

    return v25

    .line 2117
    .end local v22    # "token":J
    :cond_5
    const-string/jumbo v25, "read-settings"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_20

    .line 2277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    .line 2278
    const-string/jumbo v26, "android.permission.UPDATE_APP_OPS_STATS"

    .line 2279
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v27

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v28

    const/16 v29, 0x0

    .line 2277
    invoke-virtual/range {v25 .. v29}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 2280
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-wide v22

    .line 2282
    .restart local v22    # "token":J
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/AppOpsService;->readState()V

    .line 2283
    const-string/jumbo v25, "Last settings read."

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2285
    :try_start_6
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2287
    const/16 v25, 0x0

    return v25

    .line 2123
    .end local v22    # "token":J
    .restart local v20    # "res":I
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AppOpsService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v13

    .line 2124
    .local v13, "modeStr":Ljava/lang/String;
    if-nez v13, :cond_7

    .line 2125
    const-string/jumbo v25, "Error: Mode not specified."

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2126
    const/16 v25, -0x1

    return v25

    .line 2129
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v8}, Lcom/android/server/AppOpsService$Shell;->strModeToMode(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v12

    .line 2130
    .local v12, "mode":I
    if-gez v12, :cond_8

    .line 2131
    const/16 v25, -0x1

    return v25

    .line 2134
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AppOpsService$Shell;->op:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AppOpsService$Shell;->packageUid:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v2, v3, v12}, Lcom/android/internal/app/IAppOpsService;->setMode(IILjava/lang/String;I)V

    .line 2135
    const/16 v25, 0x0

    return v25

    .line 2143
    .end local v12    # "mode":I
    .end local v13    # "modeStr":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    move-object/from16 v26, v0

    .line 2144
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AppOpsService$Shell;->packageUid:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    move-object/from16 v28, v0

    .line 2145
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AppOpsService$Shell;->op:I

    move/from16 v25, v0

    const/16 v29, -0x1

    move/from16 v0, v25

    move/from16 v1, v29

    if-eq v0, v1, :cond_b

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AppOpsService$Shell;->op:I

    move/from16 v29, v0

    const/16 v30, 0x0

    aput v29, v25, v30

    .line 2143
    :goto_1
    move-object/from16 v0, v26

    move/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v25

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/app/IAppOpsService;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object v16

    .line 2146
    .local v16, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v16, :cond_a

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v25

    if-gtz v25, :cond_c

    .line 2147
    :cond_a
    const-string/jumbo v25, "No operations."

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2148
    const/16 v25, 0x0

    return v25

    .line 2145
    .end local v16    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_b
    const/16 v25, 0x0

    goto :goto_1

    .line 2150
    .restart local v16    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 2151
    .local v14, "now":J
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v10, v0, :cond_12

    .line 2152
    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual/range {v25 .. v25}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v7

    .line 2153
    .local v7, "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v11, v0, :cond_11

    .line 2154
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$OpEntry;

    .line 2155
    .local v6, "ent":Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v25

    invoke-static/range {v25 .. v25}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2156
    const-string/jumbo v25, ": "

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2157
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v25

    packed-switch v25, :pswitch_data_0

    .line 2171
    const-string/jumbo v25, "mode="

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2172
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v25

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2175
    :goto_4
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v26

    const-wide/16 v28, 0x0

    cmp-long v25, v26, v28

    if-eqz v25, :cond_d

    .line 2176
    const-string/jumbo v25, "; time="

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2177
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v26

    sub-long v26, v14, v26

    move-wide/from16 v0, v26

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2178
    const-string/jumbo v25, " ago"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2180
    :cond_d
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getRejectTime()J

    move-result-wide v26

    const-wide/16 v28, 0x0

    cmp-long v25, v26, v28

    if-eqz v25, :cond_e

    .line 2181
    const-string/jumbo v25, "; rejectTime="

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2182
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getRejectTime()J

    move-result-wide v26

    sub-long v26, v14, v26

    move-wide/from16 v0, v26

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2183
    const-string/jumbo v25, " ago"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2185
    :cond_e
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getDuration()I

    move-result v25

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_10

    .line 2186
    const-string/jumbo v25, " (running)"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2191
    :cond_f
    :goto_5
    invoke-virtual/range {v19 .. v19}, Ljava/io/PrintWriter;->println()V

    .line 2153
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    .line 2159
    :pswitch_0
    const-string/jumbo v25, "allow"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_4

    .line 2292
    .end local v6    # "ent":Landroid/app/AppOpsManager$OpEntry;
    .end local v7    # "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v10    # "i":I
    .end local v11    # "j":I
    .end local v14    # "now":J
    .end local v16    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v20    # "res":I
    :catch_0
    move-exception v5

    .line 2293
    .local v5, "e":Landroid/os/RemoteException;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Remote exception: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2295
    const/16 v25, -0x1

    return v25

    .line 2162
    .end local v5    # "e":Landroid/os/RemoteException;
    .restart local v6    # "ent":Landroid/app/AppOpsManager$OpEntry;
    .restart local v7    # "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .restart local v10    # "i":I
    .restart local v11    # "j":I
    .restart local v14    # "now":J
    .restart local v16    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v20    # "res":I
    :pswitch_1
    :try_start_7
    const-string/jumbo v25, "ignore"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2165
    :pswitch_2
    const-string/jumbo v25, "deny"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2168
    :pswitch_3
    const-string/jumbo v25, "default"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2187
    :cond_10
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getDuration()I

    move-result v25

    if-eqz v25, :cond_f

    .line 2188
    const-string/jumbo v25, "; duration="

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2189
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getDuration()I

    move-result v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    goto :goto_5

    .line 2151
    .end local v6    # "ent":Landroid/app/AppOpsManager$OpEntry;
    :cond_11
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 2194
    .end local v7    # "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v11    # "j":I
    :cond_12
    const/16 v25, 0x0

    return v25

    .line 2201
    .end local v10    # "i":I
    .end local v14    # "now":J
    .end local v16    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    move-object/from16 v25, v0

    .line 2202
    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AppOpsService$Shell;->op:I

    move/from16 v27, v0

    const/16 v28, 0x0

    aput v27, v26, v28

    .line 2201
    invoke-interface/range {v25 .. v26}, Lcom/android/internal/app/IAppOpsService;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v16

    .line 2203
    .restart local v16    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v16, :cond_14

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v25

    if-gtz v25, :cond_15

    .line 2204
    :cond_14
    const-string/jumbo v25, "No operations."

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2205
    const/16 v25, 0x0

    return v25

    .line 2207
    :cond_15
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_6
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v10, v0, :cond_19

    .line 2208
    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/AppOpsManager$PackageOps;

    .line 2209
    .local v18, "pkg":Landroid/app/AppOpsManager$PackageOps;
    const/4 v9, 0x0

    .line 2210
    .local v9, "hasMatch":Z
    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual/range {v25 .. v25}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v7

    .line 2211
    .restart local v7    # "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    const/4 v11, 0x0

    .restart local v11    # "j":I
    :goto_7
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v11, v0, :cond_16

    .line 2212
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$OpEntry;

    .line 2213
    .restart local v6    # "ent":Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AppOpsService$Shell;->op:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_18

    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AppOpsService$Shell;->mode:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_18

    .line 2214
    const/4 v9, 0x1

    .line 2218
    .end local v6    # "ent":Landroid/app/AppOpsManager$OpEntry;
    :cond_16
    if-eqz v9, :cond_17

    .line 2219
    invoke-virtual/range {v18 .. v18}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2207
    :cond_17
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 2211
    .restart local v6    # "ent":Landroid/app/AppOpsManager$OpEntry;
    :cond_18
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 2222
    .end local v6    # "ent":Landroid/app/AppOpsManager$OpEntry;
    .end local v7    # "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v9    # "hasMatch":Z
    .end local v11    # "j":I
    .end local v18    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    :cond_19
    const/16 v25, 0x0

    return v25

    .line 2232
    .end local v10    # "i":I
    .end local v16    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v20    # "res":I
    .restart local v4    # "argument":Ljava/lang/String;
    .restart local v21    # "userId":I
    :cond_1a
    if-nez v17, :cond_1b

    .line 2233
    move-object/from16 v17, v4

    .local v17, "packageName":Ljava/lang/String;
    goto/16 :goto_0

    .line 2235
    .end local v17    # "packageName":Ljava/lang/String;
    :cond_1b
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Error: Unsupported argument: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2236
    const/16 v25, -0x1

    return v25

    .line 2241
    :cond_1c
    const/16 v25, -0x2

    move/from16 v0, v21

    move/from16 v1, v25

    if-ne v0, v1, :cond_1d

    .line 2242
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v21

    .line 2245
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v21

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lcom/android/internal/app/IAppOpsService;->resetAllModes(ILjava/lang/String;)V

    .line 2246
    const-string/jumbo v25, "Reset all modes for: "

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2247
    const/16 v25, -0x1

    move/from16 v0, v21

    move/from16 v1, v25

    if-ne v0, v1, :cond_1e

    .line 2248
    const-string/jumbo v25, "all users"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2252
    :goto_8
    const-string/jumbo v25, ", "

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2253
    if-nez v17, :cond_1f

    .line 2254
    const-string/jumbo v25, "all packages"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2258
    :goto_9
    const/16 v25, 0x0

    return v25

    .line 2250
    :cond_1e
    const-string/jumbo v25, "user "

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    goto :goto_8

    .line 2256
    :cond_1f
    const-string/jumbo v25, "package "

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_9

    .line 2266
    .end local v4    # "argument":Ljava/lang/String;
    .end local v21    # "userId":I
    .restart local v22    # "token":J
    :catchall_0
    move-exception v25

    :try_start_8
    monitor-exit v26

    throw v25
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2271
    :catchall_1
    move-exception v25

    .line 2272
    :try_start_9
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2271
    throw v25

    .line 2284
    :catchall_2
    move-exception v25

    .line 2285
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2284
    throw v25

    .line 2290
    .end local v22    # "token":J
    :cond_20
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/AppOpsService$Shell;->handleDefaultCommands(Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0

    move-result v25

    return v25

    .line 2157
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private printOperationLocked(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V
    .locals 4
    .param p1, "op"    # Lcom/android/server/AppOpsService$Op;
    .param p2, "mode"    # I
    .param p3, "operation"    # Ljava/lang/String;

    .prologue
    .line 3013
    if-eqz p1, :cond_0

    .line 3014
    iget v1, p1, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v0

    .line 3015
    .local v0, "switchCode":I
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 3016
    sget-boolean v1, Lcom/android/server/AppOpsService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "AppOps"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": reject #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " for code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3017
    const-string/jumbo v3, " ("

    .line 3016
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3017
    iget v3, p1, Lcom/android/server/AppOpsService$Op;->op:I

    .line 3016
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3017
    const-string/jumbo v3, ") uid "

    .line 3016
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3017
    iget v3, p1, Lcom/android/server/AppOpsService$Op;->uid:I

    .line 3016
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3017
    const-string/jumbo v3, " package "

    .line 3016
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3018
    iget-object v3, p1, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    .line 3016
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3012
    .end local v0    # "switchCode":I
    :cond_0
    :goto_0
    return-void

    .line 3019
    .restart local v0    # "switchCode":I
    :cond_1
    if-nez p2, :cond_0

    .line 3020
    sget-boolean v1, Lcom/android/server/AppOpsService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "AppOps"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": allowing code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3021
    iget v3, p1, Lcom/android/server/AppOpsService$Op;->uid:I

    .line 3020
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3022
    const-string/jumbo v3, " package "

    .line 3020
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3022
    iget-object v3, p1, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    .line 3020
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private pruneOp(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V
    .locals 10
    .param p1, "op"    # Lcom/android/server/AppOpsService$Op;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 529
    iget-wide v4, p1, Lcom/android/server/AppOpsService$Op;->time:J

    cmp-long v3, v4, v8

    if-nez v3, :cond_1

    iget-wide v4, p1, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    cmp-long v3, v4, v8

    if-nez v3, :cond_1

    .line 530
    invoke-direct {p0, p2, p3, v7}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v0

    .line 531
    .local v0, "ops":Lcom/android/server/AppOpsService$Ops;
    if-eqz v0, :cond_1

    .line 532
    iget v3, p1, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-virtual {v0, v3}, Lcom/android/server/AppOpsService$Ops;->remove(I)V

    .line 533
    invoke-virtual {v0}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 534
    iget-object v2, v0, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    .line 535
    .local v2, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget-object v1, v2, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 536
    .local v1, "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    if-eqz v1, :cond_1

    .line 537
    iget-object v3, v0, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 539
    iput-object v6, v2, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 541
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/AppOpsService$UidState;->isDefault()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 542
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 528
    .end local v0    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v1    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v2    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_1
    return-void
.end method

.method private recordOperationLocked(IILjava/lang/String;I)V
    .locals 8
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "mode"    # I

    .prologue
    .line 2917
    const/4 v5, 0x0

    invoke-direct {p0, p1, p2, p3, v5}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v3

    .line 2918
    .local v3, "op":Lcom/android/server/AppOpsService$Op;
    if-eqz v3, :cond_12

    .line 2919
    iget v5, v3, Lcom/android/server/AppOpsService$Op;->noteOpCount:I

    if-eqz v5, :cond_0

    .line 2920
    const-string/jumbo v5, "noteOperartion"

    invoke-direct {p0, v3, p4, v5}, Lcom/android/server/AppOpsService;->printOperationLocked(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V

    .line 2921
    :cond_0
    iget v5, v3, Lcom/android/server/AppOpsService$Op;->startOpCount:I

    if-eqz v5, :cond_1

    .line 2922
    const-string/jumbo v5, "startOperation"

    invoke-direct {p0, v3, p4, v5}, Lcom/android/server/AppOpsService;->printOperationLocked(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V

    .line 2923
    :cond_1
    const/4 v5, 0x1

    if-ne p4, v5, :cond_7

    .line 2924
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v3, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 2925
    sget-object v5, Landroid/app/ZsAppOpsUtils;->TYPE_LOCATION_OPS:[I

    invoke-static {v5, p1}, Landroid/app/ZsAppOpsUtils;->has([II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2926
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v5, Landroid/app/ZsAppOpsUtils;->TYPE_LOCATION_OPS:[I

    array-length v5, v5

    if-ge v2, v5, :cond_3

    .line 2927
    sget-object v5, Landroid/app/ZsAppOpsUtils;->TYPE_LOCATION_OPS:[I

    aget v5, v5, v2

    const/4 v6, 0x1

    invoke-direct {p0, v5, p2, p3, v6}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v4

    .line 2928
    .local v4, "singleop":Lcom/android/server/AppOpsService$Op;
    if-eqz v4, :cond_2

    .line 2929
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 2926
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2934
    .end local v2    # "i":I
    .end local v4    # "singleop":Lcom/android/server/AppOpsService$Op;
    :cond_3
    sget-object v5, Landroid/app/ZsAppOpsUtils;->TYPE_STORAGE_OPS:[I

    invoke-static {v5, p1}, Landroid/app/ZsAppOpsUtils;->has([II)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2935
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    sget-object v5, Landroid/app/ZsAppOpsUtils;->TYPE_STORAGE_OPS:[I

    array-length v5, v5

    if-ge v2, v5, :cond_5

    .line 2936
    sget-object v5, Landroid/app/ZsAppOpsUtils;->TYPE_STORAGE_OPS:[I

    aget v5, v5, v2

    const/4 v6, 0x1

    invoke-direct {p0, v5, p2, p3, v6}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v4

    .line 2937
    .restart local v4    # "singleop":Lcom/android/server/AppOpsService$Op;
    if-eqz v4, :cond_4

    .line 2938
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 2935
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2943
    .end local v2    # "i":I
    .end local v4    # "singleop":Lcom/android/server/AppOpsService$Op;
    :cond_5
    sget-object v5, Landroid/app/ZsAppOpsUtils;->TYPE_READ_SMS_LOG_OPS:[I

    invoke-static {v5, p1}, Landroid/app/ZsAppOpsUtils;->has([II)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 2944
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    sget-object v5, Landroid/app/ZsAppOpsUtils;->TYPE_READ_SMS_LOG_OPS:[I

    array-length v5, v5

    if-ge v2, v5, :cond_11

    .line 2945
    sget-object v5, Landroid/app/ZsAppOpsUtils;->TYPE_READ_SMS_LOG_OPS:[I

    aget v5, v5, v2

    const/4 v6, 0x1

    invoke-direct {p0, v5, p2, p3, v6}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v4

    .line 2946
    .restart local v4    # "singleop":Lcom/android/server/AppOpsService$Op;
    if-eqz v4, :cond_6

    .line 2947
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 2944
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2952
    .end local v2    # "i":I
    .end local v4    # "singleop":Lcom/android/server/AppOpsService$Op;
    :cond_7
    if-nez p4, :cond_11

    .line 2953
    iget v5, v3, Lcom/android/server/AppOpsService$Op;->noteOpCount:I

    if-eqz v5, :cond_8

    .line 2954
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v3, Lcom/android/server/AppOpsService$Op;->time:J

    .line 2955
    const-wide/16 v6, 0x0

    iput-wide v6, v3, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 2957
    :cond_8
    iget v5, v3, Lcom/android/server/AppOpsService$Op;->startOpCount:I

    if-eqz v5, :cond_b

    .line 2958
    iget v5, v3, Lcom/android/server/AppOpsService$Op;->nesting:I

    if-nez v5, :cond_9

    .line 2959
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v3, Lcom/android/server/AppOpsService$Op;->time:J

    .line 2960
    const-wide/16 v6, 0x0

    iput-wide v6, v3, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 2961
    const/4 v5, -0x1

    iput v5, v3, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 2963
    :cond_9
    iget v5, v3, Lcom/android/server/AppOpsService$Op;->nesting:I

    iget v6, v3, Lcom/android/server/AppOpsService$Op;->startOpCount:I

    add-int/2addr v5, v6

    iput v5, v3, Lcom/android/server/AppOpsService$Op;->nesting:I

    .line 2964
    :goto_3
    iget-object v5, v3, Lcom/android/server/AppOpsService$Op;->clientTokens:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_b

    .line 2965
    iget-object v5, v3, Lcom/android/server/AppOpsService$Op;->clientTokens:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .line 2966
    .local v1, "clientToken":Landroid/os/IBinder;
    iget-object v5, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$ClientState;

    .line 2967
    .local v0, "client":Lcom/android/server/AppOpsService$ClientState;
    if-eqz v0, :cond_a

    .line 2968
    iget-object v5, v0, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    if-eqz v5, :cond_a

    .line 2969
    iget-object v5, v0, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2972
    :cond_a
    iget-object v5, v3, Lcom/android/server/AppOpsService$Op;->clientTokens:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 2975
    .end local v0    # "client":Lcom/android/server/AppOpsService$ClientState;
    .end local v1    # "clientToken":Landroid/os/IBinder;
    :cond_b
    sget-object v5, Landroid/app/ZsAppOpsUtils;->TYPE_LOCATION_OPS:[I

    invoke-static {v5, p1}, Landroid/app/ZsAppOpsUtils;->has([II)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 2976
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    sget-object v5, Landroid/app/ZsAppOpsUtils;->TYPE_LOCATION_OPS:[I

    array-length v5, v5

    if-ge v2, v5, :cond_d

    .line 2977
    sget-object v5, Landroid/app/ZsAppOpsUtils;->TYPE_LOCATION_OPS:[I

    aget v5, v5, v2

    const/4 v6, 0x1

    invoke-direct {p0, v5, p2, p3, v6}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v4

    .line 2978
    .restart local v4    # "singleop":Lcom/android/server/AppOpsService$Op;
    if-eqz v4, :cond_c

    .line 2979
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/android/server/AppOpsService$Op;->time:J

    .line 2980
    const-wide/16 v6, 0x0

    iput-wide v6, v4, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 2976
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 2985
    .end local v2    # "i":I
    .end local v4    # "singleop":Lcom/android/server/AppOpsService$Op;
    :cond_d
    sget-object v5, Landroid/app/ZsAppOpsUtils;->TYPE_STORAGE_OPS:[I

    invoke-static {v5, p1}, Landroid/app/ZsAppOpsUtils;->has([II)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 2986
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_5
    sget-object v5, Landroid/app/ZsAppOpsUtils;->TYPE_STORAGE_OPS:[I

    array-length v5, v5

    if-ge v2, v5, :cond_f

    .line 2987
    sget-object v5, Landroid/app/ZsAppOpsUtils;->TYPE_STORAGE_OPS:[I

    aget v5, v5, v2

    const/4 v6, 0x1

    invoke-direct {p0, v5, p2, p3, v6}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v4

    .line 2988
    .restart local v4    # "singleop":Lcom/android/server/AppOpsService$Op;
    if-eqz v4, :cond_e

    .line 2989
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/android/server/AppOpsService$Op;->time:J

    .line 2990
    const-wide/16 v6, 0x0

    iput-wide v6, v4, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 2986
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 2995
    .end local v2    # "i":I
    .end local v4    # "singleop":Lcom/android/server/AppOpsService$Op;
    :cond_f
    sget-object v5, Landroid/app/ZsAppOpsUtils;->TYPE_READ_SMS_LOG_OPS:[I

    invoke-static {v5, p1}, Landroid/app/ZsAppOpsUtils;->has([II)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 2996
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_6
    sget-object v5, Landroid/app/ZsAppOpsUtils;->TYPE_READ_SMS_LOG_OPS:[I

    array-length v5, v5

    if-ge v2, v5, :cond_11

    .line 2997
    sget-object v5, Landroid/app/ZsAppOpsUtils;->TYPE_READ_SMS_LOG_OPS:[I

    aget v5, v5, v2

    const/4 v6, 0x1

    invoke-direct {p0, v5, p2, p3, v6}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v4

    .line 2998
    .restart local v4    # "singleop":Lcom/android/server/AppOpsService$Op;
    if-eqz v4, :cond_10

    .line 2999
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/android/server/AppOpsService$Op;->time:J

    .line 3000
    const-wide/16 v6, 0x0

    iput-wide v6, v4, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 2996
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 3006
    .end local v2    # "i":I
    .end local v4    # "singleop":Lcom/android/server/AppOpsService$Op;
    :cond_11
    iget-object v5, v3, Lcom/android/server/AppOpsService$Op;->clientTokens:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 3007
    const/4 v5, 0x0

    iput v5, v3, Lcom/android/server/AppOpsService$Op;->startOpCount:I

    .line 3008
    const/4 v5, 0x0

    iput v5, v3, Lcom/android/server/AppOpsService$Op;->noteOpCount:I

    .line 2916
    :cond_12
    return-void
.end method

.method private static resolvePackageName(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "uid"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2583
    if-nez p0, :cond_0

    .line 2584
    const-string/jumbo v0, "root"

    return-object v0

    .line 2585
    :cond_0
    const/16 v0, 0x7d0

    if-ne p0, v0, :cond_1

    .line 2586
    const-string/jumbo v0, "com.android.shell"

    return-object v0

    .line 2587
    :cond_1
    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_2

    if-nez p1, :cond_2

    .line 2588
    const-string/jumbo v0, "android"

    return-object v0

    .line 2590
    :cond_2
    return-object p1
.end method

.method private scheduleFastWriteLocked()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1559
    iget-boolean v0, p0, Lcom/android/server/AppOpsService;->mFastWriteScheduled:Z

    if-nez v0, :cond_0

    .line 1560
    iput-boolean v1, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    .line 1561
    iput-boolean v1, p0, Lcom/android/server/AppOpsService;->mFastWriteScheduled:Z

    .line 1562
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1563
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1558
    :cond_0
    return-void
.end method

.method private scheduleWriteLocked()V
    .locals 4

    .prologue
    .line 1552
    iget-boolean v0, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    if-nez v0, :cond_0

    .line 1553
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    .line 1554
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    sget-wide v2, Lcom/android/server/AppOpsService;->WRITE_DELAY:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1551
    :cond_0
    return-void
.end method

.method private scheduleWriteNowLocked()V
    .locals 2

    .prologue
    .line 1568
    iget-boolean v0, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    if-nez v0, :cond_0

    .line 1569
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    .line 1571
    :cond_0
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1572
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1567
    return-void
.end method

.method private setUserRestrictionNoCheck(IZLandroid/os/IBinder;I[Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # I
    .param p2, "restricted"    # Z
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "userHandle"    # I
    .param p5, "exceptionPackages"    # [Ljava/lang/String;

    .prologue
    .line 2505
    const/4 v1, 0x0

    .line 2507
    .local v1, "notifyChange":Z
    monitor-enter p0

    .line 2508
    :try_start_0
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v3, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppOpsService$ClientRestrictionState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2510
    .local v2, "restrictionState":Lcom/android/server/AppOpsService$ClientRestrictionState;
    if-nez v2, :cond_0

    .line 2512
    :try_start_1
    new-instance v2, Lcom/android/server/AppOpsService$ClientRestrictionState;

    .end local v2    # "restrictionState":Lcom/android/server/AppOpsService$ClientRestrictionState;
    invoke-direct {v2, p0, p3}, Lcom/android/server/AppOpsService$ClientRestrictionState;-><init>(Lcom/android/server/AppOpsService;Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2516
    .restart local v2    # "restrictionState":Lcom/android/server/AppOpsService$ClientRestrictionState;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v3, p3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2519
    :cond_0
    invoke-virtual {v2, p1, p2, p5, p4}, Lcom/android/server/AppOpsService$ClientRestrictionState;->setRestriction(IZ[Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2520
    const/4 v1, 0x1

    .line 2523
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/AppOpsService$ClientRestrictionState;->isDefault()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2524
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v3, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2525
    invoke-virtual {v2}, Lcom/android/server/AppOpsService$ClientRestrictionState;->destroy()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    monitor-exit p0

    .line 2529
    if-eqz v1, :cond_3

    .line 2530
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->notifyWatchersOfChange(I)V

    .line 2504
    :cond_3
    return-void

    .line 2513
    .end local v2    # "restrictionState":Lcom/android/server/AppOpsService$ClientRestrictionState;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    monitor-exit p0

    .line 2514
    return-void

    .line 2507
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private verifyIncomingOp(I)V
    .locals 3
    .param p1, "op"    # I

    .prologue
    .line 1456
    if-ltz p1, :cond_0

    const/16 v0, 0x51

    if-ge p1, v0, :cond_0

    .line 1457
    return-void

    .line 1459
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad operation #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private verifyIncomingUid(I)V
    .locals 5
    .param p1, "uid"    # I

    .prologue
    .line 1445
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 1446
    return-void

    .line 1448
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1449
    return-void

    .line 1451
    :cond_1
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.UPDATE_APP_OPS_STATS"

    .line 1452
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    .line 1451
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1444
    return-void
.end method

.method private writeUidStateMode(III)V
    .locals 4
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "mode"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3029
    invoke-static {p1}, Lcom/android/server/AppOpsService;->getDefaultMode(I)I

    move-result v0

    .line 3030
    .local v0, "defaultMode":I
    invoke-direct {p0, p2, v2}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v1

    .line 3031
    .local v1, "uidState":Lcom/android/server/AppOpsService$UidState;
    if-nez v1, :cond_2

    .line 3032
    if-ne p3, v0, :cond_0

    .line 3033
    return-void

    .line 3035
    :cond_0
    new-instance v1, Lcom/android/server/AppOpsService$UidState;

    .end local v1    # "uidState":Lcom/android/server/AppOpsService$UidState;
    invoke-direct {v1, p2}, Lcom/android/server/AppOpsService$UidState;-><init>(I)V

    .line 3036
    .restart local v1    # "uidState":Lcom/android/server/AppOpsService$UidState;
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 3037
    iget-object v2, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 3038
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3039
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V

    .line 3028
    :cond_1
    :goto_0
    return-void

    .line 3040
    :cond_2
    iget-object v2, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-nez v2, :cond_3

    .line 3041
    if-eq p3, v0, :cond_1

    .line 3042
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 3043
    iget-object v2, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 3044
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V

    goto :goto_0

    .line 3047
    :cond_3
    iget-object v2, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    if-ne v2, p3, :cond_4

    .line 3048
    return-void

    .line 3050
    :cond_4
    if-ne p3, v0, :cond_6

    .line 3051
    iget-object v2, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 3052
    iget-object v2, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-gtz v2, :cond_5

    .line 3053
    iput-object v3, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 3058
    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V

    goto :goto_0

    .line 3056
    :cond_6
    iget-object v2, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, p3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1
.end method


# virtual methods
.method public checkAudioOperation(IIILjava/lang/String;)I
    .locals 6
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1030
    :try_start_0
    invoke-direct {p0, p4, p3}, Lcom/android/server/AppOpsService;->isPackageSuspendedForUser(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1036
    :goto_0
    if-eqz v2, :cond_0

    .line 1037
    const-string/jumbo v3, "AppOps"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Audio disabled for suspended package="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " for uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    const/4 v3, 0x1

    return v3

    .line 1031
    :catch_0
    move-exception v0

    .line 1033
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const/4 v2, 0x0

    .local v2, "suspended":Z
    goto :goto_0

    .line 1041
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    .end local v2    # "suspended":Z
    :cond_0
    monitor-enter p0

    .line 1042
    :try_start_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/AppOpsService;->checkRestrictionLocked(IIILjava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 1043
    .local v1, "mode":I
    if-eqz v1, :cond_1

    monitor-exit p0

    .line 1044
    return v1

    :cond_1
    monitor-exit p0

    .line 1047
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v3

    return v3

    .line 1041
    .end local v1    # "mode":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public checkOperation(IILjava/lang/String;)I
    .locals 9
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 978
    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    .line 979
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 980
    invoke-direct {p0, p1, p2}, Lcom/android/server/AppOpsService;->isSkipUseSystem(II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 981
    return v7

    .line 982
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/android/server/AppOpsService;->isSkipPackage(ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 983
    return v7

    .line 984
    :cond_1
    invoke-static {p1, p3}, Landroid/app/ZsAppOpsUtils;->isSkipPackage(ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 985
    return v7

    .line 987
    :cond_2
    invoke-static {p2, p3}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 988
    .local v2, "resolvedPackageName":Ljava/lang/String;
    if-nez v2, :cond_3

    .line 989
    return v8

    .line 992
    :cond_3
    const/16 v6, 0x47

    if-ne p1, v6, :cond_4

    .line 993
    invoke-direct {p0, p3}, Lcom/android/server/AppOpsService;->isSkipPackageName(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 994
    return v7

    .line 998
    :cond_4
    const/16 v6, 0xf

    if-eq p1, v6, :cond_5

    const/16 v6, 0x46

    if-ne p1, v6, :cond_7

    .line 999
    :cond_5
    const-string/jumbo v6, "com.android.providers.telephony"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 1000
    const-string/jumbo v6, "com.android.messaging"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 999
    if-eqz v6, :cond_7

    .line 1001
    :cond_6
    return v7

    .line 1004
    :cond_7
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v3

    .line 1005
    .local v3, "switchcode":I
    invoke-direct {p0, v3, p2, v2}, Lcom/android/server/AppOpsService;->getDefaultMode(IILjava/lang/String;)I

    move-result v0

    .line 1006
    .local v0, "mode":I
    monitor-enter p0

    .line 1007
    :try_start_0
    invoke-direct {p0, p2, p1, v2}, Lcom/android/server/AppOpsService;->isOpRestrictedLocked(IILjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_8

    monitor-exit p0

    .line 1008
    return v8

    .line 1010
    :cond_8
    :try_start_1
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result p1

    .line 1011
    const/4 v6, 0x0

    invoke-direct {p0, p2, v6}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v5

    .line 1012
    .local v5, "uidState":Lcom/android/server/AppOpsService$UidState;
    if-eqz v5, :cond_9

    iget-object v6, v5, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v6, :cond_9

    .line 1013
    iget-object v6, v5, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseIntArray;->get(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    .line 1014
    .local v4, "uidMode":I
    if-eqz v4, :cond_9

    const/4 v6, 0x4

    if-eq v4, v6, :cond_9

    monitor-exit p0

    .line 1015
    return v4

    .line 1018
    .end local v4    # "uidMode":I
    :cond_9
    const/4 v6, 0x0

    :try_start_2
    invoke-direct {p0, p1, p2, v2, v6}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .line 1019
    .local v1, "op":Lcom/android/server/AppOpsService$Op;
    if-nez v1, :cond_a

    monitor-exit p0

    .line 1020
    return v0

    .line 1022
    :cond_a
    :try_start_3
    iget v6, v1, Lcom/android/server/AppOpsService$Op;->mode:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v6

    .line 1006
    .end local v1    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v5    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public checkPackage(ILjava/lang/String;)I
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1103
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1105
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1106
    const/4 v0, 0x0

    return v0

    .line 1108
    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 32
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    const-string/jumbo v28, "android.permission.DUMP"

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v27

    if-eqz v27, :cond_0

    .line 2307
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Permission Denial: can\'t dump ApOps service from from pid="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 2308
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v28

    .line 2307
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 2309
    const-string/jumbo v28, ", uid="

    .line 2307
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 2309
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v28

    .line 2307
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2310
    return-void

    .line 2313
    :cond_0
    if-eqz p3, :cond_4

    .line 2314
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v8, v0, :cond_4

    .line 2315
    aget-object v4, p3, v8

    .line 2316
    .local v4, "arg":Ljava/lang/String;
    const-string/jumbo v27, "-h"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1

    .line 2317
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/AppOpsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 2318
    return-void

    .line 2319
    :cond_1
    const-string/jumbo v27, "-a"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_2

    .line 2314
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2321
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v27

    if-lez v27, :cond_3

    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v27

    const/16 v28, 0x2d

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_3

    .line 2322
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Unknown option: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2323
    return-void

    .line 2325
    :cond_3
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Unknown command: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2326
    return-void

    .line 2331
    .end local v4    # "arg":Ljava/lang/String;
    .end local v8    # "i":I
    :cond_4
    monitor-enter p0

    .line 2332
    :try_start_0
    const-string/jumbo v27, "Current AppOps Service state:"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2333
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 2334
    .local v12, "now":J
    const/4 v11, 0x0

    .line 2335
    .local v11, "needSep":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/util/SparseArray;->size()I

    move-result v27

    if-lez v27, :cond_6

    .line 2336
    const/4 v11, 0x1

    .line 2337
    const-string/jumbo v27, "  Op mode watchers:"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2338
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/util/SparseArray;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v8, v0, :cond_6

    .line 2339
    const-string/jumbo v27, "    Op "

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v27

    invoke-static/range {v27 .. v27}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2340
    const-string/jumbo v27, ":"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 2342
    .local v5, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v9, v0, :cond_5

    .line 2343
    const-string/jumbo v27, "      #"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v27, ": "

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2344
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2342
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 2338
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 2348
    .end local v5    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .end local v8    # "i":I
    .end local v9    # "j":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/util/ArrayMap;->size()I

    move-result v27

    if-lez v27, :cond_8

    .line 2349
    const/4 v11, 0x1

    .line 2350
    const-string/jumbo v27, "  Package mode watchers:"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2351
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/util/ArrayMap;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v8, v0, :cond_8

    .line 2352
    const-string/jumbo v27, "    Pkg "

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2353
    const-string/jumbo v27, ":"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 2355
    .restart local v5    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    const/4 v9, 0x0

    .restart local v9    # "j":I
    :goto_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v9, v0, :cond_7

    .line 2356
    const-string/jumbo v27, "      #"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v27, ": "

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2357
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2355
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 2351
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 2361
    .end local v5    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .end local v8    # "i":I
    .end local v9    # "j":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/util/ArrayMap;->size()I

    move-result v27

    if-lez v27, :cond_9

    .line 2362
    const/4 v11, 0x1

    .line 2363
    const-string/jumbo v27, "  All mode watchers:"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2364
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/util/ArrayMap;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v8, v0, :cond_9

    .line 2365
    const-string/jumbo v27, "    "

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2366
    const-string/jumbo v27, " -> "

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2364
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 2369
    .end local v8    # "i":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/util/ArrayMap;->size()I

    move-result v27

    if-lez v27, :cond_b

    .line 2370
    const/4 v11, 0x1

    .line 2371
    const-string/jumbo v27, "  Clients:"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2372
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/util/ArrayMap;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v8, v0, :cond_b

    .line 2373
    const-string/jumbo v27, "    "

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string/jumbo v27, ":"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AppOpsService$ClientState;

    .line 2375
    .local v7, "cs":Lcom/android/server/AppOpsService$ClientState;
    const-string/jumbo v27, "      "

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2376
    iget-object v0, v7, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    if-eqz v27, :cond_a

    iget-object v0, v7, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    if-lez v27, :cond_a

    .line 2377
    const-string/jumbo v27, "      Started ops:"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2378
    const/4 v9, 0x0

    .restart local v9    # "j":I
    :goto_7
    iget-object v0, v7, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v9, v0, :cond_a

    .line 2379
    iget-object v0, v7, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/AppOpsService$Op;

    .line 2380
    .local v15, "op":Lcom/android/server/AppOpsService$Op;
    const-string/jumbo v27, "        "

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v27, "uid="

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v15, Lcom/android/server/AppOpsService$Op;->uid:I

    move/from16 v27, v0

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2381
    const-string/jumbo v27, " pkg="

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v15, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2382
    const-string/jumbo v27, " op="

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v15, Lcom/android/server/AppOpsService$Op;->op:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2378
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 2372
    .end local v9    # "j":I
    .end local v15    # "op":Lcom/android/server/AppOpsService$Op;
    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_6

    .line 2387
    .end local v7    # "cs":Lcom/android/server/AppOpsService$ClientState;
    .end local v8    # "i":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/util/SparseArray;->size()I

    move-result v27

    if-lez v27, :cond_f

    .line 2388
    const/16 v22, 0x0

    .line 2389
    .local v22, "printedHeader":Z
    const/4 v14, 0x0

    .local v14, "o":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/util/SparseArray;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v14, v0, :cond_f

    .line 2390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v27

    invoke-static/range {v27 .. v27}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v16

    .line 2391
    .local v16, "op":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/util/SparseArray;

    .line 2392
    .local v24, "restrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_9
    invoke-virtual/range {v24 .. v24}, Landroid/util/SparseArray;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v8, v0, :cond_e

    .line 2393
    if-nez v22, :cond_c

    .line 2394
    const-string/jumbo v27, "  Audio Restrictions:"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2395
    const/16 v22, 0x1

    .line 2396
    const/4 v11, 0x1

    .line 2398
    :cond_c
    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v26

    .line 2399
    .local v26, "usage":I
    const-string/jumbo v27, "    "

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2400
    const-string/jumbo v27, " usage="

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static/range {v26 .. v26}, Landroid/media/AudioAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2401
    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/AppOpsService$Restriction;

    .line 2402
    .local v23, "r":Lcom/android/server/AppOpsService$Restriction;
    const-string/jumbo v27, ": mode="

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/AppOpsService$Restriction;->mode:I

    move/from16 v27, v0

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2403
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v27

    if-nez v27, :cond_d

    .line 2404
    const-string/jumbo v27, "      Exceptions:"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2405
    const/4 v9, 0x0

    .restart local v9    # "j":I
    :goto_a
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/util/ArraySet;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v9, v0, :cond_d

    .line 2406
    const-string/jumbo v27, "        "

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2405
    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    .line 2392
    .end local v9    # "j":I
    :cond_d
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_9

    .line 2389
    .end local v23    # "r":Lcom/android/server/AppOpsService$Restriction;
    .end local v26    # "usage":I
    :cond_e
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_8

    .line 2412
    .end local v8    # "i":I
    .end local v14    # "o":I
    .end local v16    # "op":Ljava/lang/String;
    .end local v22    # "printedHeader":Z
    .end local v24    # "restrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    :cond_f
    if-eqz v11, :cond_10

    .line 2413
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2415
    :cond_10
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/util/SparseArray;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v8, v0, :cond_19

    .line 2416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/AppOpsService$UidState;

    .line 2418
    .local v25, "uidState":Lcom/android/server/AppOpsService$UidState;
    const-string/jumbo v27, "  Uid "

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    move/from16 v27, v0

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string/jumbo v27, ":"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2420
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v18, v0

    .line 2421
    .local v18, "opModes":Landroid/util/SparseIntArray;
    if-eqz v18, :cond_11

    .line 2422
    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseIntArray;->size()I

    move-result v17

    .line 2423
    .local v17, "opModeCount":I
    const/4 v9, 0x0

    .restart local v9    # "j":I
    :goto_c
    move/from16 v0, v17

    if-ge v9, v0, :cond_11

    .line 2424
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    .line 2425
    .local v6, "code":I
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v10

    .line 2426
    .local v10, "mode":I
    const-string/jumbo v27, "      "

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2427
    const-string/jumbo v27, ": mode="

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(I)V

    .line 2423
    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    .line 2431
    .end local v6    # "code":I
    .end local v9    # "j":I
    .end local v10    # "mode":I
    .end local v17    # "opModeCount":I
    :cond_11
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    move-object/from16 v21, v0

    .line 2432
    .local v21, "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    if-nez v21, :cond_13

    .line 2415
    :cond_12
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_b

    .line 2436
    :cond_13
    invoke-virtual/range {v21 .. v21}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "ops$iterator":Ljava/util/Iterator;
    :cond_14
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_12

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/AppOpsService$Ops;

    .line 2437
    .local v19, "ops":Lcom/android/server/AppOpsService$Ops;
    const-string/jumbo v27, "    Package "

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v27, ":"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2438
    const/4 v9, 0x0

    .restart local v9    # "j":I
    :goto_d
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v9, v0, :cond_14

    .line 2439
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/AppOpsService$Op;

    .line 2440
    .restart local v15    # "op":Lcom/android/server/AppOpsService$Op;
    const-string/jumbo v27, "      "

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v15, Lcom/android/server/AppOpsService$Op;->op:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2441
    const-string/jumbo v27, ": mode="

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v15, Lcom/android/server/AppOpsService$Op;->mode:I

    move/from16 v27, v0

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2442
    iget-wide v0, v15, Lcom/android/server/AppOpsService$Op;->time:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x0

    cmp-long v27, v28, v30

    if-eqz v27, :cond_15

    .line 2443
    const-string/jumbo v27, "; time="

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, v15, Lcom/android/server/AppOpsService$Op;->time:J

    move-wide/from16 v28, v0

    sub-long v28, v12, v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2444
    const-string/jumbo v27, " ago"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2446
    :cond_15
    iget-wide v0, v15, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x0

    cmp-long v27, v28, v30

    if-eqz v27, :cond_16

    .line 2447
    const-string/jumbo v27, "; rejectTime="

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, v15, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    move-wide/from16 v28, v0

    sub-long v28, v12, v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2448
    const-string/jumbo v27, " ago"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2450
    :cond_16
    iget v0, v15, Lcom/android/server/AppOpsService$Op;->duration:I

    move/from16 v27, v0

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_18

    .line 2451
    const-string/jumbo v27, " (running)"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2455
    :cond_17
    :goto_e
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2438
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_d

    .line 2452
    :cond_18
    iget v0, v15, Lcom/android/server/AppOpsService$Op;->duration:I

    move/from16 v27, v0

    if-eqz v27, :cond_17

    .line 2453
    const-string/jumbo v27, "; duration="

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v15, Lcom/android/server/AppOpsService$Op;->duration:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_e

    .line 2331
    .end local v8    # "i":I
    .end local v9    # "j":I
    .end local v11    # "needSep":Z
    .end local v12    # "now":J
    .end local v15    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v18    # "opModes":Landroid/util/SparseIntArray;
    .end local v19    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v20    # "ops$iterator":Ljava/util/Iterator;
    .end local v21    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v25    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catchall_0
    move-exception v27

    monitor-exit p0

    throw v27

    .restart local v8    # "i":I
    .restart local v11    # "needSep":Z
    .restart local v12    # "now":J
    :cond_19
    monitor-exit p0

    .line 2304
    return-void
.end method

.method public finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1395
    invoke-direct {p0, p3}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    .line 1396
    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 1397
    invoke-static {p3, p4}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1398
    .local v2, "resolvedPackageName":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 1399
    return-void

    .line 1401
    :cond_0
    instance-of v3, p1, Lcom/android/server/AppOpsService$ClientState;

    if-nez v3, :cond_1

    .line 1402
    return-void

    :cond_1
    move-object v0, p1

    .line 1404
    check-cast v0, Lcom/android/server/AppOpsService$ClientState;

    .line 1406
    .local v0, "client":Lcom/android/server/AppOpsService$ClientState;
    const/4 v3, 0x1

    invoke-direct {p0, p2, p3, v2, v3}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v1

    .line 1407
    .local v1, "op":Lcom/android/server/AppOpsService$Op;
    if-nez v1, :cond_2

    .line 1408
    return-void

    .line 1410
    :cond_2
    iget-object v3, v0, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    .line 1411
    iget-object v3, v0, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1412
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Operation not started: uid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/server/AppOpsService$Op;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1413
    const-string/jumbo v5, " pkg="

    .line 1412
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1413
    iget-object v5, v1, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    .line 1412
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1413
    const-string/jumbo v5, " op="

    .line 1412
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1413
    iget v5, v1, Lcom/android/server/AppOpsService$Op;->op:I

    .line 1412
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1416
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/server/AppOpsService;->finishOperationLocked(Lcom/android/server/AppOpsService$Op;)V

    .line 1394
    return-void
.end method

.method finishOperationLocked(Lcom/android/server/AppOpsService$Op;)V
    .locals 4
    .param p1, "op"    # Lcom/android/server/AppOpsService$Op;

    .prologue
    const/4 v1, 0x1

    .line 1429
    iget v0, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    if-gt v0, v1, :cond_1

    .line 1430
    iget v0, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    if-ne v0, v1, :cond_0

    .line 1431
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/android/server/AppOpsService$Op;->time:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p1, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 1432
    iget-wide v0, p1, Lcom/android/server/AppOpsService$Op;->time:J

    iget v2, p1, Lcom/android/server/AppOpsService$Op;->duration:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/android/server/AppOpsService$Op;->time:J

    .line 1438
    :goto_0
    const/4 v0, 0x0

    iput v0, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    .line 1428
    :goto_1
    return-void

    .line 1434
    :cond_0
    const-string/jumbo v0, "AppOps"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Finishing op nesting under-run: uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/AppOpsService$Op;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " pkg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1435
    iget-object v2, p1, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    .line 1434
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1435
    const-string/jumbo v2, " code "

    .line 1434
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1435
    iget v2, p1, Lcom/android/server/AppOpsService$Op;->op:I

    .line 1434
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1435
    const-string/jumbo v2, " time="

    .line 1434
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1435
    iget-wide v2, p1, Lcom/android/server/AppOpsService$Op;->time:J

    .line 1434
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1436
    const-string/jumbo v2, " duration="

    .line 1434
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1436
    iget v2, p1, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 1434
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1436
    const-string/jumbo v2, " nesting="

    .line 1434
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1436
    iget v2, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    .line 1434
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1440
    :cond_1
    iget v0, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    goto :goto_1
.end method

.method public getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;
    .locals 10
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 505
    iget-object v5, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "android.permission.GET_APP_OPS_STATS"

    .line 506
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 505
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 507
    invoke-static {p1, p2}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 508
    .local v4, "resolvedPackageName":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 509
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    return-object v5

    .line 511
    :cond_0
    monitor-enter p0

    .line 512
    const/4 v5, 0x0

    :try_start_0
    invoke-direct {p0, p1, v4, v5}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 513
    .local v0, "pkgOps":Lcom/android/server/AppOpsService$Ops;
    if-nez v0, :cond_1

    monitor-exit p0

    .line 514
    return-object v9

    .line 516
    :cond_1
    :try_start_1
    invoke-direct {p0, v0, p3}, Lcom/android/server/AppOpsService;->collectOps(Lcom/android/server/AppOpsService$Ops;[I)Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 517
    .local v2, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    if-nez v2, :cond_2

    monitor-exit p0

    .line 518
    return-object v9

    .line 520
    :cond_2
    :try_start_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 521
    .local v1, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    new-instance v3, Landroid/app/AppOpsManager$PackageOps;

    .line 522
    iget-object v5, v0, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v6, v6, Lcom/android/server/AppOpsService$UidState;->uid:I

    .line 521
    invoke-direct {v3, v5, v6, v2}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 523
    .local v3, "resPackage":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 524
    return-object v1

    .line 511
    .end local v0    # "pkgOps":Lcom/android/server/AppOpsService$Ops;
    .end local v1    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v2    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v3    # "resPackage":Landroid/app/AppOpsManager$PackageOps;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public getPackagesForOps([I)Ljava/util/List;
    .locals 18
    .param p1, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .prologue
    .line 473
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string/jumbo v14, "android.permission.GET_APP_OPS_STATS"

    .line 474
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v15

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v16

    const/16 v17, 0x0

    .line 473
    invoke-virtual/range {v13 .. v17}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 475
    const/4 v7, 0x0

    .line 476
    .local v7, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    monitor-enter p0

    .line 477
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v12

    .line 478
    .local v12, "uidStateCount":I
    const/4 v2, 0x0

    .end local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .local v2, "i":I
    :goto_0
    if-ge v2, v12, :cond_2

    .line 479
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v13, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/AppOpsService$UidState;

    .line 480
    .local v11, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget-object v13, v11, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v13, :cond_0

    iget-object v13, v11, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 478
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 483
    :cond_1
    iget-object v5, v11, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 484
    .local v5, "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 485
    .local v4, "packageCount":I
    const/4 v3, 0x0

    .local v3, "j":I
    move-object v8, v7

    .local v8, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_2
    if-ge v3, v4, :cond_5

    .line 486
    :try_start_1
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AppOpsService$Ops;

    .line 487
    .local v6, "pkgOps":Lcom/android/server/AppOpsService$Ops;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v6, v1}, Lcom/android/server/AppOpsService;->collectOps(Lcom/android/server/AppOpsService$Ops;[I)Ljava/util/ArrayList;

    move-result-object v9

    .line 488
    .local v9, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    if-eqz v9, :cond_4

    .line 489
    if-nez v8, :cond_3

    .line 490
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 492
    .end local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .local v7, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_3
    :try_start_2
    new-instance v10, Landroid/app/AppOpsManager$PackageOps;

    .line 493
    iget-object v13, v6, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget-object v14, v6, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v14, v14, Lcom/android/server/AppOpsService$UidState;->uid:I

    .line 492
    invoke-direct {v10, v13, v14, v9}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 494
    .local v10, "resPackage":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 485
    .end local v10    # "resPackage":Landroid/app/AppOpsManager$PackageOps;
    :goto_4
    add-int/lit8 v3, v3, 0x1

    move-object v8, v7

    .end local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_2

    .end local v3    # "j":I
    .end local v4    # "packageCount":I
    .end local v5    # "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v6    # "pkgOps":Lcom/android/server/AppOpsService$Ops;
    .end local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v9    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v11    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_2
    monitor-exit p0

    .line 499
    return-object v7

    .line 476
    .end local v2    # "i":I
    .end local v12    # "uidStateCount":I
    :catchall_0
    move-exception v13

    :goto_5
    monitor-exit p0

    throw v13

    .restart local v2    # "i":I
    .restart local v3    # "j":I
    .restart local v4    # "packageCount":I
    .restart local v5    # "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v11    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .restart local v12    # "uidStateCount":I
    :catchall_1
    move-exception v13

    move-object v7, v8

    .end local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_5

    .end local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v6    # "pkgOps":Lcom/android/server/AppOpsService$Ops;
    .restart local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v9    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    :cond_3
    move-object v7, v8

    .end local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_3

    .end local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_4
    move-object v7, v8

    .end local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_4

    .end local v6    # "pkgOps":Lcom/android/server/AppOpsService$Ops;
    .end local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v9    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    .restart local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_5
    move-object v7, v8

    .end local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_1
.end method

.method public getToken(Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 2
    .param p1, "clientToken"    # Landroid/os/IBinder;

    .prologue
    .line 947
    monitor-enter p0

    .line 948
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$ClientState;

    .line 949
    .local v0, "cs":Lcom/android/server/AppOpsService$ClientState;
    if-nez v0, :cond_0

    .line 950
    new-instance v0, Lcom/android/server/AppOpsService$ClientState;

    .end local v0    # "cs":Lcom/android/server/AppOpsService$ClientState;
    invoke-direct {v0, p0, p1}, Lcom/android/server/AppOpsService$ClientState;-><init>(Lcom/android/server/AppOpsService;Landroid/os/IBinder;)V

    .line 951
    .restart local v0    # "cs":Lcom/android/server/AppOpsService$ClientState;
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 953
    return-object v0

    .line 947
    .end local v0    # "cs":Lcom/android/server/AppOpsService$ClientState;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isSkipPackage(ILjava/lang/String;)Z
    .locals 10
    .param p1, "code"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0xf

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3205
    if-eqz p2, :cond_0

    sget-boolean v5, Lcom/android/server/AppOpsService;->isAboard:Z

    if-eqz v5, :cond_1

    .line 3206
    :cond_0
    return v7

    .line 3207
    :cond_1
    if-eq p1, v9, :cond_2

    const/16 v5, 0x46

    if-ne p1, v5, :cond_4

    .line 3208
    :cond_2
    const-string/jumbo v5, "com.journeyui.PNInfoProvider"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "com.journeyui.backup"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 3209
    const-string/jumbo v5, "com.journeyui.cloud"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 3208
    if-nez v5, :cond_3

    .line 3209
    const-string/jumbo v5, "com.journeyui.cloneit"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 3208
    if-eqz v5, :cond_4

    .line 3210
    :cond_3
    return v8

    .line 3214
    :cond_4
    const-string/jumbo v5, "com.android.cts.managedprofile"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0x1a

    if-ne p1, v5, :cond_5

    .line 3215
    return v7

    .line 3218
    :cond_5
    const-string/jumbo v5, "\\."

    invoke-virtual {p2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 3219
    .local v4, "stringsplit":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 3220
    .local v1, "isAndroidCtsExist":Z
    if-eqz v4, :cond_9

    array-length v5, v4

    if-lez v5, :cond_9

    .line 3221
    const/4 v2, 0x0

    .line 3222
    .local v2, "isAndroidExist":Z
    const/4 v3, 0x0

    .line 3223
    .local v3, "isCtsExist":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v4

    if-ge v0, v5, :cond_8

    .line 3224
    aget-object v5, v4, v0

    if-eqz v5, :cond_6

    .line 3225
    aget-object v5, v4, v0

    const-string/jumbo v6, "android"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 3226
    const/4 v2, 0x1

    .line 3223
    :cond_6
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3227
    :cond_7
    aget-object v5, v4, v0

    const-string/jumbo v6, "cts"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 3228
    const/4 v3, 0x1

    goto :goto_1

    .line 3232
    :cond_8
    if-eqz v2, :cond_9

    if-eqz v3, :cond_9

    .line 3233
    const/4 v1, 0x1

    .line 3239
    .end local v0    # "i":I
    .end local v2    # "isAndroidExist":Z
    .end local v3    # "isCtsExist":Z
    :cond_9
    const-string/jumbo v5, "com.android.cts.usepermission"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    const/16 v5, 0x3b

    if-eq p1, v5, :cond_a

    .line 3240
    const/16 v5, 0x3c

    if-ne p1, v5, :cond_b

    .line 3241
    :cond_a
    return v7

    .line 3245
    :cond_b
    const-string/jumbo v5, "com.android.cts"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c

    const-string/jumbo v5, "com.google.android.xts"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 3246
    const-string/jumbo v5, "android.jobscheduler.cts"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    .line 3245
    if-nez v5, :cond_c

    .line 3247
    const-string/jumbo v5, "android.app.stubs"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    .line 3245
    if-nez v5, :cond_c

    .line 3248
    const-string/jumbo v5, "com.google.uid.shared"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    .line 3245
    if-nez v5, :cond_c

    .line 3249
    const-string/jumbo v5, "android.camera.cts"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    .line 3245
    if-nez v5, :cond_c

    if-eqz v1, :cond_d

    .line 3250
    :cond_c
    const/16 v5, 0x2f

    if-eq p1, v5, :cond_d

    .line 3251
    const/16 v5, 0x2c

    if-eq p1, v5, :cond_d

    .line 3252
    const/16 v5, 0x21

    if-eq p1, v5, :cond_d

    .line 3253
    const/16 v5, 0x22

    if-eq p1, v5, :cond_d

    .line 3254
    const/16 v5, 0x23

    if-eq p1, v5, :cond_d

    .line 3255
    const/16 v5, 0x24

    if-eq p1, v5, :cond_d

    .line 3256
    const/16 v5, 0x25

    if-eq p1, v5, :cond_d

    .line 3257
    const/16 v5, 0x26

    if-eq p1, v5, :cond_d

    .line 3258
    const/16 v5, 0x27

    if-eq p1, v5, :cond_d

    .line 3259
    if-eq p1, v9, :cond_d

    .line 3260
    const/16 v5, 0x17

    if-eq p1, v5, :cond_d

    .line 3261
    const/16 v5, 0x3a

    if-eq p1, v5, :cond_d

    .line 3262
    const/16 v5, 0x2b

    if-eq p1, v5, :cond_d

    .line 3264
    const-string/jumbo v5, "AppOps"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isskippackage  code:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "  package:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3265
    return v8

    .line 3267
    :cond_d
    return v7
.end method

.method public noteOperation(IILjava/lang/String;)I
    .locals 7
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1142
    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    .line 1143
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 1144
    invoke-static {p2, p3}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1145
    .local v3, "resolvedPackageName":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 1146
    const/4 v0, 0x1

    return v0

    .line 1149
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/AppOpsService;->isSkipUseSystem(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1150
    return v4

    .line 1152
    :cond_1
    invoke-virtual {p0, p1, p3}, Lcom/android/server/AppOpsService;->isSkipPackage(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1153
    return v4

    .line 1155
    :cond_2
    invoke-static {p1, p3}, Landroid/app/ZsAppOpsUtils;->isSkipPackage(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1156
    return v4

    :cond_3
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v6, v4

    .line 1158
    invoke-direct/range {v0 .. v6}, Lcom/android/server/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;ILjava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public noteOperationFB(IILjava/lang/String;Z)I
    .locals 7
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "fromBroadcast"    # Z

    .prologue
    .line 3280
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;ILjava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public noteProxyOperation(ILjava/lang/String;ILjava/lang/String;)I
    .locals 11
    .param p1, "code"    # I
    .param p2, "proxyPackageName"    # Ljava/lang/String;
    .param p3, "proxiedUid"    # I
    .param p4, "proxiedPackageName"    # Ljava/lang/String;

    .prologue
    .line 1116
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 1117
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1118
    .local v2, "proxyUid":I
    invoke-static {v2, p2}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1119
    .local v3, "resolveProxyPackageName":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 1120
    const/4 v0, 0x1

    return v0

    .line 1123
    :cond_0
    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    .line 1122
    invoke-direct/range {v0 .. v6}, Lcom/android/server/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;ILjava/lang/String;Z)I

    move-result v8

    .line 1124
    .local v8, "proxyMode":I
    if-nez v8, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne v0, p3, :cond_2

    .line 1125
    :cond_1
    return v8

    .line 1127
    :cond_2
    invoke-static {p3, p4}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1128
    .local v7, "resolveProxiedPackageName":Ljava/lang/String;
    if-nez v7, :cond_3

    .line 1129
    const/4 v0, 0x1

    return v0

    .line 1131
    :cond_3
    invoke-virtual {p0, p1, p4}, Lcom/android/server/AppOpsService;->isSkipPackage(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1132
    const/4 v0, 0x0

    return v0

    .line 1133
    :cond_4
    invoke-static {p1, p4}, Landroid/app/ZsAppOpsUtils;->isSkipPackage(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1134
    const/4 v0, 0x0

    return v0

    .line 1137
    :cond_5
    const/4 v10, 0x0

    move-object v4, p0

    move v5, p1

    move v6, p3

    move-object v9, v3

    .line 1136
    invoke-direct/range {v4 .. v10}, Lcom/android/server/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;ILjava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public noteReadFile()V
    .locals 0

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/android/server/AppOpsService;->readState()V

    .line 276
    return-void
.end method

.method public notifyOperation(IILjava/lang/String;IZ)V
    .locals 13
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "mode"    # I
    .param p5, "remember"    # Z

    .prologue
    .line 2788
    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    .line 2789
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 2790
    const/4 v8, 0x0

    .line 2791
    .local v8, "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v9

    .line 2793
    .local v9, "switchCode":I
    const-string/jumbo v10, "AppOps"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "notifyOperation:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p5

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2795
    invoke-direct/range {p0 .. p4}, Lcom/android/server/AppOpsService;->recordOperationLocked(IILjava/lang/String;I)V

    .line 2796
    const/4 v10, 0x1

    move-object/from16 v0, p3

    invoke-direct {p0, v9, p2, v0, v10}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v5

    .line 2797
    .local v5, "op":Lcom/android/server/AppOpsService$Op;
    if-eqz v5, :cond_c

    .line 2799
    iget-object v10, v5, Lcom/android/server/AppOpsService$Op;->dialogReqQueue:Lcom/android/server/ZsPermissionDialogReqQueue;

    invoke-virtual {v10}, Lcom/android/server/ZsPermissionDialogReqQueue;->getDialog()Lcom/android/server/ZsPermissionDialog;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 2800
    iget-object v10, v5, Lcom/android/server/AppOpsService$Op;->dialogReqQueue:Lcom/android/server/ZsPermissionDialogReqQueue;

    move/from16 v0, p4

    invoke-virtual {v10, v0}, Lcom/android/server/ZsPermissionDialogReqQueue;->notifyAll(I)V

    .line 2801
    iget-object v10, v5, Lcom/android/server/AppOpsService$Op;->dialogReqQueue:Lcom/android/server/ZsPermissionDialogReqQueue;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/server/ZsPermissionDialogReqQueue;->setDialog(Lcom/android/server/ZsPermissionDialog;)V

    .line 2803
    :cond_0
    if-eqz p5, :cond_c

    iget v10, v5, Lcom/android/server/AppOpsService$Op;->mode:I

    move/from16 v0, p4

    if-eq v10, v0, :cond_c

    .line 2804
    move/from16 v0, p4

    iput v0, v5, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 2805
    iget-object v10, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 2806
    .local v2, "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-eqz v2, :cond_1

    .line 2808
    new-instance v8, Ljava/util/ArrayList;

    .end local v8    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2810
    .local v8, "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2812
    .end local v8    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_1
    iget-object v10, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    check-cast v2, Ljava/util/ArrayList;

    .line 2813
    .restart local v2    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-eqz v2, :cond_3

    .line 2814
    if-nez v8, :cond_2

    .line 2815
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2817
    :cond_2
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2819
    :cond_3
    iget v10, v5, Lcom/android/server/AppOpsService$Op;->op:I

    move-object/from16 v0, p3

    invoke-direct {p0, v10, p2, v0}, Lcom/android/server/AppOpsService;->getDefaultMode(IILjava/lang/String;)I

    move-result v10

    move/from16 v0, p4

    if-ne v0, v10, :cond_4

    .line 2822
    move-object/from16 v0, p3

    invoke-direct {p0, v5, p2, v0}, Lcom/android/server/AppOpsService;->pruneOp(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V

    .line 2824
    :cond_4
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V

    .line 2871
    sget-object v10, Landroid/app/ZsAppOpsUtils;->TYPE_LOCATION_OPS:[I

    invoke-static {v10, p1}, Landroid/app/ZsAppOpsUtils;->has([II)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 2872
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2873
    .local v6, "identity":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    sget-object v10, Landroid/app/ZsAppOpsUtils;->TYPE_LOCATION_OPS:[I

    array-length v10, v10

    if-ge v4, v10, :cond_5

    .line 2874
    sget-object v10, Landroid/app/ZsAppOpsUtils;->TYPE_LOCATION_OPS:[I

    aget v10, v10, v4

    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {p0, v10, p2, v0, v1}, Lcom/android/server/AppOpsService;->setMode(IILjava/lang/String;I)V

    .line 2873
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2876
    :cond_5
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2878
    .end local v4    # "i":I
    .end local v6    # "identity":J
    :cond_6
    sget-object v10, Landroid/app/ZsAppOpsUtils;->TYPE_STORAGE_OPS:[I

    invoke-static {v10, p1}, Landroid/app/ZsAppOpsUtils;->has([II)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 2879
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2880
    .restart local v6    # "identity":J
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    sget-object v10, Landroid/app/ZsAppOpsUtils;->TYPE_STORAGE_OPS:[I

    array-length v10, v10

    if-ge v4, v10, :cond_7

    .line 2881
    sget-object v10, Landroid/app/ZsAppOpsUtils;->TYPE_STORAGE_OPS:[I

    aget v10, v10, v4

    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {p0, v10, p2, v0, v1}, Lcom/android/server/AppOpsService;->setMode(IILjava/lang/String;I)V

    .line 2880
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2883
    :cond_7
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2886
    .end local v4    # "i":I
    .end local v6    # "identity":J
    :cond_8
    sget-object v10, Landroid/app/ZsAppOpsUtils;->TYPE_CALENDAR_OPS:[I

    invoke-static {v10, p1}, Landroid/app/ZsAppOpsUtils;->has([II)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 2887
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2888
    .restart local v6    # "identity":J
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    sget-object v10, Landroid/app/ZsAppOpsUtils;->TYPE_CALENDAR_OPS:[I

    array-length v10, v10

    if-ge v4, v10, :cond_9

    .line 2889
    sget-object v10, Landroid/app/ZsAppOpsUtils;->TYPE_CALENDAR_OPS:[I

    aget v10, v10, v4

    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {p0, v10, p2, v0, v1}, Lcom/android/server/AppOpsService;->setMode(IILjava/lang/String;I)V

    .line 2888
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2891
    :cond_9
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2894
    .end local v4    # "i":I
    .end local v6    # "identity":J
    :cond_a
    sget-object v10, Landroid/app/ZsAppOpsUtils;->TYPE_READ_SMS_LOG_OPS:[I

    invoke-static {v10, p1}, Landroid/app/ZsAppOpsUtils;->has([II)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 2895
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2896
    .restart local v6    # "identity":J
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3
    sget-object v10, Landroid/app/ZsAppOpsUtils;->TYPE_READ_SMS_LOG_OPS:[I

    array-length v10, v10

    if-ge v4, v10, :cond_b

    .line 2897
    sget-object v10, Landroid/app/ZsAppOpsUtils;->TYPE_READ_SMS_LOG_OPS:[I

    aget v10, v10, v4

    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {p0, v10, p2, v0, v1}, Lcom/android/server/AppOpsService;->setMode(IILjava/lang/String;I)V

    .line 2896
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2899
    :cond_b
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2906
    .end local v2    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .end local v4    # "i":I
    .end local v6    # "identity":J
    :cond_c
    if-eqz v8, :cond_d

    .line 2907
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_d

    .line 2909
    :try_start_0
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/AppOpsService$Callback;

    iget-object v10, v10, Lcom/android/server/AppOpsService$Callback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    move-object/from16 v0, p3

    invoke-interface {v10, v9, p2, v0}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2907
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 2787
    .end local v4    # "i":I
    :cond_d
    return-void

    .line 2910
    .restart local v4    # "i":I
    :catch_0
    move-exception v3

    .local v3, "e":Landroid/os/RemoteException;
    goto :goto_5
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 7
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "resultReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 2083
    new-instance v0, Lcom/android/server/AppOpsService$Shell;

    invoke-direct {v0, p0, p0}, Lcom/android/server/AppOpsService$Shell;-><init>(Lcom/android/internal/app/IAppOpsService;Lcom/android/server/AppOpsService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/AppOpsService$Shell;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ResultReceiver;)I

    .line 2082
    return-void
.end method

.method public packageRemoved(ILjava/lang/String;)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 392
    monitor-enter p0

    .line 393
    :try_start_0
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppOpsService$UidState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    .local v1, "uidState":Lcom/android/server/AppOpsService$UidState;
    if-nez v1, :cond_0

    monitor-exit p0

    .line 395
    return-void

    .line 398
    :cond_0
    const/4 v0, 0x0

    .line 401
    .local v0, "changed":Z
    :try_start_1
    iget-object v2, v1, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 402
    const/4 v0, 0x1

    .line 406
    :cond_1
    if-eqz v0, :cond_2

    iget-object v2, v1, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 407
    invoke-static {p1}, Lcom/android/server/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-gtz v2, :cond_2

    .line 408
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 411
    :cond_2
    if-eqz v0, :cond_3

    .line 412
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit p0

    .line 391
    return-void

    .line 392
    .end local v0    # "changed":Z
    .end local v1    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public permissionToOpCode(Ljava/lang/String;)I
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 1422
    if-nez p1, :cond_0

    .line 1423
    const/4 v0, -0x1

    return v0

    .line 1425
    :cond_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public publish(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    .line 313
    const-string/jumbo v0, "appops"

    invoke-virtual {p0}, Lcom/android/server/AppOpsService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 311
    return-void
.end method

.method readPackage(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    .line 1722
    const-string/jumbo v4, "n"

    const/4 v5, 0x0

    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1723
    .local v1, "pkgName":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1725
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    .line 1726
    if-ne v3, v7, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_3

    .line 1727
    :cond_1
    if-eq v3, v7, :cond_0

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 1731
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1732
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v4, "uid"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1733
    invoke-virtual {p0, p1, v1}, Lcom/android/server/AppOpsService;->readUid(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    goto :goto_0

    .line 1735
    :cond_2
    const-string/jumbo v4, "AppOps"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown element under <pkg>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1736
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1735
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 1721
    .end local v2    # "tagName":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method readState()V
    .locals 18

    .prologue
    .line 1624
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    monitor-enter v15

    .line 1625
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1628
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v14}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v10

    .line 1633
    .local v10, "stream":Ljava/io/FileInputStream;
    const/4 v11, 0x0

    .line 1634
    .local v11, "success":Z
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1636
    :try_start_3
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    .line 1637
    .local v9, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v14}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v9, v10, v14}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1639
    :cond_0
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    .local v13, "type":I
    const/4 v14, 0x2

    if-eq v13, v14, :cond_1

    .line 1640
    const/4 v14, 0x1

    if-ne v13, v14, :cond_0

    .line 1644
    :cond_1
    const/4 v14, 0x2

    if-eq v13, v14, :cond_3

    .line 1645
    new-instance v14, Ljava/lang/IllegalStateException;

    const-string/jumbo v16, "no start tag found"

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1667
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v13    # "type":I
    :catch_0
    move-exception v3

    .line 1668
    .local v3, "e":Ljava/lang/IllegalStateException;
    :try_start_4
    const-string/jumbo v14, "AppOps"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Failed parsing "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1680
    if-nez v11, :cond_2

    .line 1681
    :try_start_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->clear()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1684
    :cond_2
    :try_start_6
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_d
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    monitor-exit v15

    .line 1623
    return-void

    .line 1629
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .end local v11    # "success":Z
    :catch_1
    move-exception v1

    .line 1630
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_8
    const-string/jumbo v14, "AppOps"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "No existing app ops "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "; starting empty"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    monitor-exit v15

    .line 1631
    return-void

    .line 1648
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "success":Z
    .restart local v13    # "type":I
    :cond_3
    :try_start_a
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    .line 1649
    .local v8, "outerDepth":I
    :cond_4
    :goto_1
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_b

    .line 1650
    const/4 v14, 0x3

    if-ne v13, v14, :cond_5

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    if-le v14, v8, :cond_b

    .line 1651
    :cond_5
    const/4 v14, 0x3

    if-eq v13, v14, :cond_4

    const/4 v14, 0x4

    if-eq v13, v14, :cond_4

    .line 1655
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 1656
    .local v12, "tagName":Ljava/lang/String;
    const-string/jumbo v14, "pkg"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 1657
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/server/AppOpsService;->readPackage(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_9
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_1

    .line 1669
    .end local v8    # "outerDepth":I
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "tagName":Ljava/lang/String;
    .end local v13    # "type":I
    :catch_2
    move-exception v5

    .line 1670
    .local v5, "e":Ljava/lang/NullPointerException;
    :try_start_b
    const-string/jumbo v14, "AppOps"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Failed parsing "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1680
    if-nez v11, :cond_6

    .line 1681
    :try_start_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->clear()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 1684
    :cond_6
    :try_start_d
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto/16 :goto_0

    .line 1685
    :catch_3
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    goto/16 :goto_0

    .line 1658
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "e":Ljava/lang/NullPointerException;
    .restart local v8    # "outerDepth":I
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12    # "tagName":Ljava/lang/String;
    .restart local v13    # "type":I
    :cond_7
    :try_start_e
    const-string/jumbo v14, "uid"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 1659
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/server/AppOpsService;->readUidOps(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_e
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_e} :catch_6
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e .. :try_end_e} :catch_9
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_1

    .line 1671
    .end local v8    # "outerDepth":I
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "tagName":Ljava/lang/String;
    .end local v13    # "type":I
    :catch_4
    move-exception v6

    .line 1672
    .local v6, "e":Ljava/lang/NumberFormatException;
    :try_start_f
    const-string/jumbo v14, "AppOps"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Failed parsing "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 1680
    if-nez v11, :cond_8

    .line 1681
    :try_start_10
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->clear()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 1684
    :cond_8
    :try_start_11
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto/16 :goto_0

    .line 1685
    :catch_5
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto/16 :goto_0

    .line 1661
    .end local v2    # "e":Ljava/io/IOException;
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .restart local v8    # "outerDepth":I
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12    # "tagName":Ljava/lang/String;
    .restart local v13    # "type":I
    :cond_9
    :try_start_12
    const-string/jumbo v14, "AppOps"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Unknown element under <app-ops>: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 1662
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v17

    .line 1661
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_12
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_12} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_12} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12 .. :try_end_12} :catch_6
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_12 .. :try_end_12} :catch_9
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_1

    .line 1673
    .end local v8    # "outerDepth":I
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "tagName":Ljava/lang/String;
    .end local v13    # "type":I
    :catch_6
    move-exception v7

    .line 1674
    .local v7, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_13
    const-string/jumbo v14, "AppOps"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Failed parsing "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 1680
    if-nez v11, :cond_a

    .line 1681
    :try_start_14
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->clear()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 1684
    :cond_a
    :try_start_15
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_7
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    goto/16 :goto_0

    .line 1685
    :catch_7
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto/16 :goto_0

    .line 1666
    .end local v2    # "e":Ljava/io/IOException;
    .end local v7    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v8    # "outerDepth":I
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v13    # "type":I
    :cond_b
    const/4 v11, 0x1

    .line 1680
    if-nez v11, :cond_c

    .line 1681
    :try_start_16
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->clear()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    .line 1684
    :cond_c
    :try_start_17
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_8
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    goto/16 :goto_0

    .line 1685
    :catch_8
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto/16 :goto_0

    .line 1677
    .end local v2    # "e":Ljava/io/IOException;
    .end local v8    # "outerDepth":I
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v13    # "type":I
    :catch_9
    move-exception v4

    .line 1678
    .local v4, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_18
    const-string/jumbo v14, "AppOps"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Failed parsing "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 1680
    if-nez v11, :cond_d

    .line 1681
    :try_start_19
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->clear()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    .line 1684
    :cond_d
    :try_start_1a
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    goto/16 :goto_0

    .line 1685
    :catch_a
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto/16 :goto_0

    .line 1675
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_b
    move-exception v2

    .line 1676
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_1b
    const-string/jumbo v14, "AppOps"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Failed parsing "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    .line 1680
    if-nez v11, :cond_e

    .line 1681
    :try_start_1c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->clear()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    .line 1684
    :cond_e
    :try_start_1d
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_c
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1

    goto/16 :goto_0

    .line 1685
    :catch_c
    move-exception v2

    goto/16 :goto_0

    .end local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "e":Ljava/lang/IllegalStateException;
    :catch_d
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto/16 :goto_0

    .line 1679
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v14

    .line 1680
    if-nez v11, :cond_f

    .line 1681
    :try_start_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseArray;->clear()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1

    .line 1684
    :cond_f
    :try_start_1f
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_e
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1

    .line 1679
    :goto_2
    :try_start_20
    throw v14
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_1

    .line 1625
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .end local v11    # "success":Z
    :catchall_1
    move-exception v14

    :try_start_21
    monitor-exit p0

    throw v14
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_2

    .line 1624
    :catchall_2
    move-exception v14

    monitor-exit v15

    throw v14

    .line 1685
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "success":Z
    :catch_e
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_2
.end method

.method readUid(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 26
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1744
    const-string/jumbo v23, "n"

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 1745
    .local v21, "uid":I
    const-string/jumbo v23, "p"

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1746
    .local v10, "isPrivilegedString":Ljava/lang/String;
    const/4 v9, 0x0

    .line 1747
    .local v9, "isPrivileged":Z
    if-nez v10, :cond_d

    .line 1749
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v15

    .line 1750
    .local v15, "packageManager":Landroid/content/pm/IPackageManager;
    if-eqz v15, :cond_c

    .line 1751
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v23

    .line 1752
    invoke-static/range {v21 .. v21}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v24

    const/16 v25, 0x0

    .line 1751
    move-object/from16 v0, v23

    move-object/from16 v1, p2

    move/from16 v2, v25

    move/from16 v3, v24

    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 1753
    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v4, :cond_0

    .line 1754
    iget v0, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    move/from16 v23, v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v23, v23, 0x8

    if-eqz v23, :cond_b

    const/4 v9, 0x1

    .line 1767
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v9    # "isPrivileged":Z
    .end local v15    # "packageManager":Landroid/content/pm/IPackageManager;
    :cond_0
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    .line 1769
    .local v14, "outerDepth":I
    :cond_1
    :goto_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v20

    .local v20, "type":I
    const/16 v23, 0x1

    move/from16 v0, v20

    move/from16 v1, v23

    if-eq v0, v1, :cond_f

    .line 1770
    const/16 v23, 0x3

    move/from16 v0, v20

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v23

    move/from16 v0, v23

    if-le v0, v14, :cond_f

    .line 1771
    :cond_2
    const/16 v23, 0x3

    move/from16 v0, v20

    move/from16 v1, v23

    if-eq v0, v1, :cond_1

    const/16 v23, 0x4

    move/from16 v0, v20

    move/from16 v1, v23

    if-eq v0, v1, :cond_1

    .line 1775
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v18

    .line 1776
    .local v18, "tagName":Ljava/lang/String;
    const-string/jumbo v23, "op"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_e

    .line 1777
    const-string/jumbo v23, "n"

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1778
    .local v5, "code":I
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, p2

    invoke-direct {v0, v5, v1, v2}, Lcom/android/server/AppOpsService;->getDefaultMode(IILjava/lang/String;)I

    move-result v6

    .line 1779
    .local v6, "defaultmode":I
    new-instance v12, Lcom/android/server/AppOpsService$Op;

    move/from16 v0, v21

    move-object/from16 v1, p2

    invoke-direct {v12, v0, v1, v5, v6}, Lcom/android/server/AppOpsService$Op;-><init>(ILjava/lang/String;II)V

    .line 1780
    .local v12, "op":Lcom/android/server/AppOpsService$Op;
    const-string/jumbo v23, "m"

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1781
    .local v11, "mode":Ljava/lang/String;
    if-eqz v11, :cond_3

    .line 1782
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    iput v0, v12, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 1784
    :cond_3
    const-string/jumbo v23, "t"

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1785
    .local v19, "time":Ljava/lang/String;
    if-eqz v19, :cond_4

    .line 1786
    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24

    move-wide/from16 v0, v24

    iput-wide v0, v12, Lcom/android/server/AppOpsService$Op;->time:J

    .line 1788
    :cond_4
    const-string/jumbo v23, "r"

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1789
    if-eqz v19, :cond_5

    .line 1790
    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24

    move-wide/from16 v0, v24

    iput-wide v0, v12, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 1792
    :cond_5
    const-string/jumbo v23, "d"

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1793
    .local v7, "dur":Ljava/lang/String;
    if-eqz v7, :cond_6

    .line 1794
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    iput v0, v12, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 1796
    :cond_6
    const-string/jumbo v23, "pu"

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1797
    .local v17, "proxyUid":Ljava/lang/String;
    if-eqz v17, :cond_7

    .line 1798
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    iput v0, v12, Lcom/android/server/AppOpsService$Op;->proxyUid:I

    .line 1800
    :cond_7
    const-string/jumbo v23, "pp"

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1801
    .local v16, "proxyPackageName":Ljava/lang/String;
    if-eqz v16, :cond_8

    .line 1802
    move-object/from16 v0, v16

    iput-object v0, v12, Lcom/android/server/AppOpsService$Op;->proxyPackageName:Ljava/lang/String;

    .line 1805
    :cond_8
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v22

    .line 1806
    .local v22, "uidState":Lcom/android/server/AppOpsService$UidState;
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    move-object/from16 v23, v0

    if-nez v23, :cond_9

    .line 1807
    new-instance v23, Landroid/util/ArrayMap;

    invoke-direct/range {v23 .. v23}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 1810
    :cond_9
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/AppOpsService$Ops;

    .line 1811
    .local v13, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v13, :cond_a

    .line 1812
    new-instance v13, Lcom/android/server/AppOpsService$Ops;

    .end local v13    # "ops":Lcom/android/server/AppOpsService$Ops;
    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-direct {v13, v0, v1, v9}, Lcom/android/server/AppOpsService$Ops;-><init>(Ljava/lang/String;Lcom/android/server/AppOpsService$UidState;Z)V

    .line 1813
    .restart local v13    # "ops":Lcom/android/server/AppOpsService$Ops;
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1815
    :cond_a
    iget v0, v12, Lcom/android/server/AppOpsService$Op;->op:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v13, v0, v12}, Lcom/android/server/AppOpsService$Ops;->put(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 1754
    .end local v5    # "code":I
    .end local v6    # "defaultmode":I
    .end local v7    # "dur":Ljava/lang/String;
    .end local v11    # "mode":Ljava/lang/String;
    .end local v12    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v13    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v14    # "outerDepth":I
    .end local v16    # "proxyPackageName":Ljava/lang/String;
    .end local v17    # "proxyUid":Ljava/lang/String;
    .end local v18    # "tagName":Ljava/lang/String;
    .end local v19    # "time":Ljava/lang/String;
    .end local v20    # "type":I
    .end local v22    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v9    # "isPrivileged":Z
    .restart local v15    # "packageManager":Landroid/content/pm/IPackageManager;
    :cond_b
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1759
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_c
    return-void

    .line 1761
    .end local v15    # "packageManager":Landroid/content/pm/IPackageManager;
    :catch_0
    move-exception v8

    .line 1762
    .local v8, "e":Landroid/os/RemoteException;
    const-string/jumbo v23, "AppOps"

    const-string/jumbo v24, "Could not contact PackageManager"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1765
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_d
    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    .local v9, "isPrivileged":Z
    goto/16 :goto_0

    .line 1817
    .end local v9    # "isPrivileged":Z
    .restart local v14    # "outerDepth":I
    .restart local v18    # "tagName":Ljava/lang/String;
    .restart local v20    # "type":I
    :cond_e
    const-string/jumbo v23, "AppOps"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Unknown element under <pkg>: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 1818
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v25

    .line 1817
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1819
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    .line 1743
    .end local v18    # "tagName":Ljava/lang/String;
    :cond_f
    return-void
.end method

.method readUidOps(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 13
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1694
    const-string/jumbo v7, "n"

    invoke-interface {p1, v10, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1695
    .local v5, "uid":I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 1697
    .local v2, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .local v4, "type":I
    if-eq v4, v11, :cond_4

    .line 1698
    if-ne v4, v12, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v2, :cond_4

    .line 1699
    :cond_1
    if-eq v4, v12, :cond_0

    const/4 v7, 0x4

    if-eq v4, v7, :cond_0

    .line 1703
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1704
    .local v3, "tagName":Ljava/lang/String;
    const-string/jumbo v7, "op"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1705
    const-string/jumbo v7, "n"

    invoke-interface {p1, v10, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1706
    .local v0, "code":I
    const-string/jumbo v7, "m"

    invoke-interface {p1, v10, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1707
    .local v1, "mode":I
    invoke-direct {p0, v5, v11}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v6

    .line 1708
    .local v6, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget-object v7, v6, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-nez v7, :cond_2

    .line 1709
    new-instance v7, Landroid/util/SparseIntArray;

    invoke-direct {v7}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v7, v6, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 1711
    :cond_2
    iget-object v7, v6, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 1713
    .end local v0    # "code":I
    .end local v1    # "mode":I
    .end local v6    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_3
    const-string/jumbo v7, "AppOps"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unknown element under <uid-ops>: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1714
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 1713
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 1693
    .end local v3    # "tagName":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method public removeUser(I)V
    .locals 4
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2565
    const-string/jumbo v3, "removeUser"

    invoke-direct {p0, v3}, Lcom/android/server/AppOpsService;->checkSystemUid(Ljava/lang/String;)V

    .line 2566
    monitor-enter p0

    .line 2567
    :try_start_0
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 2568
    .local v2, "tokenCount":I
    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 2569
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppOpsService$ClientRestrictionState;

    .line 2570
    .local v1, "opRestrictions":Lcom/android/server/AppOpsService$ClientRestrictionState;
    invoke-virtual {v1, p1}, Lcom/android/server/AppOpsService$ClientRestrictionState;->removeUser(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2568
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v1    # "opRestrictions":Lcom/android/server/AppOpsService$ClientRestrictionState;
    :cond_0
    monitor-exit p0

    .line 2564
    return-void

    .line 2566
    .end local v0    # "i":I
    .end local v2    # "tokenCount":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public resetAllModes(ILjava/lang/String;)V
    .locals 30
    .param p1, "reqUserId"    # I
    .param p2, "reqPackageName"    # Ljava/lang/String;

    .prologue
    .line 779
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 780
    .local v2, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 781
    .local v3, "callingUid":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "android.permission.UPDATE_APP_OPS_STATS"

    .line 782
    const/4 v6, 0x0

    .line 781
    invoke-virtual {v4, v5, v2, v3, v6}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 784
    const-string/jumbo v7, "resetAllModes"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v8, 0x0

    move/from16 v4, p1

    .line 783
    invoke-static/range {v2 .. v8}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 786
    const/16 v27, -0x1

    .line 787
    .local v27, "reqUid":I
    if-eqz p2, :cond_0

    .line 789
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 790
    const/16 v5, 0x2000

    .line 789
    move-object/from16 v0, p2

    move/from16 v1, p1

    invoke-interface {v4, v0, v5, v1}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v27

    .line 796
    :cond_0
    :goto_0
    const/4 v9, 0x0

    .line 797
    .local v9, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    monitor-enter p0

    .line 798
    const/4 v11, 0x0

    .line 799
    .local v11, "changed":Z
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v18, v4, -0x1

    .end local v9    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    .local v18, "i":I
    :goto_1
    if-ltz v18, :cond_d

    .line 800
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/server/AppOpsService$UidState;

    .line 802
    .local v29, "uidState":Lcom/android/server/AppOpsService$UidState;
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v21, v0

    .line 803
    .local v21, "opModes":Landroid/util/SparseIntArray;
    if-eqz v21, :cond_4

    move-object/from16 v0, v29

    iget v4, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    move/from16 v0, v27

    if-eq v4, v0, :cond_1

    const/4 v4, -0x1

    move/from16 v0, v27

    if-ne v0, v4, :cond_4

    .line 804
    :cond_1
    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseIntArray;->size()I

    move-result v28

    .line 805
    .local v28, "uidOpCount":I
    add-int/lit8 v20, v28, -0x1

    .local v20, "j":I
    :goto_2
    if-ltz v20, :cond_4

    .line 806
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v12

    .line 807
    .local v12, "code":I
    invoke-static {v12}, Landroid/app/AppOpsManager;->opAllowsReset(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 808
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 809
    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-gtz v4, :cond_2

    .line 810
    const/4 v4, 0x0

    move-object/from16 v0, v29

    iput-object v4, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 812
    :cond_2
    move-object/from16 v0, v29

    iget v4, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-static {v4}, Lcom/android/server/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x0

    array-length v7, v6

    move v5, v4

    :goto_3
    if-ge v5, v7, :cond_3

    aget-object v22, v6, v5

    .line 813
    .local v22, "packageName":Ljava/lang/String;
    move-object/from16 v0, v29

    iget v8, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    .line 814
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v4, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 813
    move-object/from16 v0, v22

    invoke-static {v9, v12, v8, v0, v4}, Lcom/android/server/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v9

    .line 815
    .local v9, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    move-object/from16 v0, v29

    iget v8, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    .line 816
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 815
    move-object/from16 v0, v22

    invoke-static {v9, v12, v8, v0, v4}, Lcom/android/server/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v9

    .line 812
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_3

    .line 805
    .end local v9    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    .end local v22    # "packageName":Ljava/lang/String;
    :cond_3
    add-int/lit8 v20, v20, -0x1

    goto :goto_2

    .line 822
    .end local v12    # "code":I
    .end local v20    # "j":I
    .end local v28    # "uidOpCount":I
    :cond_4
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez v4, :cond_6

    .line 799
    :cond_5
    :goto_4
    add-int/lit8 v18, v18, -0x1

    goto/16 :goto_1

    .line 826
    :cond_6
    const/4 v4, -0x1

    move/from16 v0, p1

    if-eq v0, v4, :cond_7

    .line 827
    move-object/from16 v0, v29

    iget v4, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    move/from16 v0, p1

    if-ne v0, v4, :cond_5

    .line 832
    :cond_7
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    move-object/from16 v23, v0

    .line 833
    .local v23, "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .line 834
    .local v19, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;>;"
    :cond_8
    :goto_5
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 835
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    .line 836
    .local v16, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 837
    .restart local v22    # "packageName":Ljava/lang/String;
    if-eqz p2, :cond_9

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 841
    :cond_9
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/AppOpsService$Ops;

    .line 842
    .local v24, "pkgOps":Lcom/android/server/AppOpsService$Ops;
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v4

    add-int/lit8 v20, v4, -0x1

    .restart local v20    # "j":I
    :goto_6
    if-ltz v20, :cond_b

    .line 843
    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/AppOpsService$Op;

    .line 844
    .local v13, "curOp":Lcom/android/server/AppOpsService$Op;
    if-eqz v13, :cond_a

    .line 845
    iget v4, v13, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v4}, Landroid/app/AppOpsManager;->opAllowsReset(I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 846
    iget v4, v13, Lcom/android/server/AppOpsService$Op;->mode:I

    iget v5, v13, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v5}, Lcom/android/server/AppOpsService;->getDefaultMode(I)I

    move-result v5

    if-eq v4, v5, :cond_a

    .line 847
    iget v4, v13, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v4}, Lcom/android/server/AppOpsService;->getDefaultMode(I)I

    move-result v4

    iput v4, v13, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 848
    const/4 v11, 0x1

    .line 849
    iget v5, v13, Lcom/android/server/AppOpsService$Op;->op:I

    iget v6, v13, Lcom/android/server/AppOpsService$Op;->uid:I

    .line 850
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    iget v7, v13, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 849
    move-object/from16 v0, v22

    invoke-static {v9, v5, v6, v0, v4}, Lcom/android/server/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v9

    .line 851
    .restart local v9    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    iget v5, v13, Lcom/android/server/AppOpsService$Op;->op:I

    iget v6, v13, Lcom/android/server/AppOpsService$Op;->uid:I

    .line 852
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 851
    move-object/from16 v0, v22

    invoke-static {v9, v5, v6, v0, v4}, Lcom/android/server/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v9

    .line 853
    iget-wide v4, v13, Lcom/android/server/AppOpsService$Op;->time:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_a

    iget-wide v4, v13, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_a

    .line 854
    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/AppOpsService$Ops;->removeAt(I)V

    .line 842
    .end local v9    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    :cond_a
    add-int/lit8 v20, v20, -0x1

    goto :goto_6

    .line 859
    .end local v13    # "curOp":Lcom/android/server/AppOpsService$Op;
    :cond_b
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v4

    if-nez v4, :cond_8

    .line 860
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_5

    .line 797
    .end local v16    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v18    # "i":I
    .end local v19    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;>;"
    .end local v20    # "j":I
    .end local v21    # "opModes":Landroid/util/SparseIntArray;
    .end local v22    # "packageName":Ljava/lang/String;
    .end local v23    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v24    # "pkgOps":Lcom/android/server/AppOpsService$Ops;
    .end local v29    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 863
    .restart local v18    # "i":I
    .restart local v19    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;>;"
    .restart local v21    # "opModes":Landroid/util/SparseIntArray;
    .restart local v23    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v29    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_c
    :try_start_2
    invoke-virtual/range {v29 .. v29}, Lcom/android/server/AppOpsService$UidState;->isDefault()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 864
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    move-object/from16 v0, v29

    iget v5, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->remove(I)V

    goto/16 :goto_4

    .line 868
    .end local v19    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;>;"
    .end local v21    # "opModes":Landroid/util/SparseIntArray;
    .end local v23    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v29    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_d
    if-eqz v11, :cond_e

    .line 869
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_e
    monitor-exit p0

    .line 872
    if-eqz v9, :cond_10

    .line 873
    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "ent$iterator":Ljava/util/Iterator;
    :cond_f
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 874
    .local v15, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/AppOpsService$Callback;

    .line 875
    .local v10, "cb":Lcom/android/server/AppOpsService$Callback;
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/ArrayList;

    .line 876
    .local v26, "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;"
    const/16 v18, 0x0

    :goto_7
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v18

    if-ge v0, v4, :cond_f

    .line 877
    move-object/from16 v0, v26

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/AppOpsService$ChangeRec;

    .line 879
    .local v25, "rep":Lcom/android/server/AppOpsService$ChangeRec;
    :try_start_3
    iget-object v4, v10, Lcom/android/server/AppOpsService$Callback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    move-object/from16 v0, v25

    iget v5, v0, Lcom/android/server/AppOpsService$ChangeRec;->op:I

    move-object/from16 v0, v25

    iget v6, v0, Lcom/android/server/AppOpsService$ChangeRec;->uid:I

    move-object/from16 v0, v25

    iget-object v7, v0, Lcom/android/server/AppOpsService$ChangeRec;->pkg:Ljava/lang/String;

    invoke-interface {v4, v5, v6, v7}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(IILjava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 876
    :goto_8
    add-int/lit8 v18, v18, 0x1

    goto :goto_7

    .line 778
    .end local v10    # "cb":Lcom/android/server/AppOpsService$Callback;
    .end local v15    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    .end local v17    # "ent$iterator":Ljava/util/Iterator;
    .end local v25    # "rep":Lcom/android/server/AppOpsService$ChangeRec;
    .end local v26    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;"
    :cond_10
    return-void

    .line 880
    .restart local v10    # "cb":Lcom/android/server/AppOpsService$Callback;
    .restart local v15    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    .restart local v17    # "ent$iterator":Ljava/util/Iterator;
    .restart local v25    # "rep":Lcom/android/server/AppOpsService$ChangeRec;
    .restart local v26    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;"
    :catch_0
    move-exception v14

    .local v14, "e":Landroid/os/RemoteException;
    goto :goto_8

    .line 791
    .end local v10    # "cb":Lcom/android/server/AppOpsService$Callback;
    .end local v11    # "changed":Z
    .end local v14    # "e":Landroid/os/RemoteException;
    .end local v15    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    .end local v17    # "ent$iterator":Ljava/util/Iterator;
    .end local v18    # "i":I
    .end local v25    # "rep":Lcom/android/server/AppOpsService$ChangeRec;
    .end local v26    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;"
    :catch_1
    move-exception v14

    .restart local v14    # "e":Landroid/os/RemoteException;
    goto/16 :goto_0
.end method

.method public setAms(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 2734
    iput-object p1, p0, Lcom/android/server/AppOpsService;->mAms:Lcom/android/server/am/ActivityManagerService;

    .line 2733
    return-void
.end method

.method public setAudioRestriction(IIII[Ljava/lang/String;)V
    .locals 7
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "uid"    # I
    .param p4, "mode"    # I
    .param p5, "exceptionPackages"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1073
    invoke-direct {p0, p3}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    .line 1074
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 1076
    iget-object v5, p0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 1077
    .local v4, "usageRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    if-nez v4, :cond_0

    .line 1078
    new-instance v4, Landroid/util/SparseArray;

    .end local v4    # "usageRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 1079
    .restart local v4    # "usageRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    iget-object v5, p0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v5, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1081
    :cond_0
    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 1082
    if-eqz p4, :cond_3

    .line 1083
    new-instance v3, Lcom/android/server/AppOpsService$Restriction;

    invoke-direct {v3, v6}, Lcom/android/server/AppOpsService$Restriction;-><init>(Lcom/android/server/AppOpsService$Restriction;)V

    .line 1084
    .local v3, "r":Lcom/android/server/AppOpsService$Restriction;
    iput p4, v3, Lcom/android/server/AppOpsService$Restriction;->mode:I

    .line 1085
    if-eqz p5, :cond_2

    .line 1086
    array-length v0, p5

    .line 1087
    .local v0, "N":I
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5, v0}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v5, v3, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    .line 1088
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1089
    aget-object v2, p5, v1

    .line 1090
    .local v2, "pkg":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 1091
    iget-object v5, v3, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1088
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1095
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_2
    invoke-virtual {v4, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1098
    .end local v3    # "r":Lcom/android/server/AppOpsService$Restriction;
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->notifyWatchersOfChange(I)V

    .line 1072
    return-void
.end method

.method public setMode(IILjava/lang/String;I)V
    .locals 18
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "mode"    # I

    .prologue
    .line 674
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v13

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v14

    if-eq v13, v14, :cond_0

    .line 675
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string/jumbo v14, "android.permission.UPDATE_APP_OPS_STATS"

    .line 676
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v15

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v16

    const/16 v17, 0x0

    .line 675
    invoke-virtual/range {v13 .. v17}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 678
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 679
    const-string/jumbo v13, "AppOps"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setMode start: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p4

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    const/4 v10, 0x0

    .line 681
    .local v10, "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result p1

    .line 682
    monitor-enter p0

    .line 683
    const/4 v13, 0x0

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v13}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v12

    .line 685
    .local v12, "uidState":Lcom/android/server/AppOpsService$UidState;
    const/4 v13, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v13}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v7

    .line 686
    .local v7, "op":Lcom/android/server/AppOpsService$Op;
    if-eqz v7, :cond_2

    .line 687
    iget v13, v7, Lcom/android/server/AppOpsService$Op;->mode:I

    move/from16 v0, p4

    if-eq v13, v0, :cond_2

    .line 688
    move/from16 v0, p4

    iput v0, v7, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 689
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 690
    .local v4, "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-eqz v4, :cond_7

    .line 692
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 694
    .end local v10    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .local v11, "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :try_start_1
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 696
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    check-cast v4, Ljava/util/ArrayList;

    .line 697
    .restart local v4    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-eqz v4, :cond_6

    .line 698
    if-nez v11, :cond_5

    .line 699
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 701
    .end local v11    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .local v10, "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :goto_1
    :try_start_2
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 703
    :goto_2
    iget v13, v7, Lcom/android/server/AppOpsService$Op;->op:I

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v13, v1, v2}, Lcom/android/server/AppOpsService;->getDefaultMode(IILjava/lang/String;)I

    move-result v13

    move/from16 v0, p4

    if-ne v0, v13, :cond_1

    .line 706
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v7, v1, v2}, Lcom/android/server/AppOpsService;->pruneOp(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V

    .line 708
    :cond_1
    const-wide/16 v14, 0x0

    iput-wide v14, v7, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 709
    const-wide/16 v14, 0x0

    iput-wide v14, v7, Lcom/android/server/AppOpsService$Op;->time:J

    .line 710
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v4    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .end local v10    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_2
    monitor-exit p0

    .line 714
    if-eqz v10, :cond_4

    .line 718
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 720
    .local v8, "identity":J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    :try_start_3
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v13

    if-ge v6, v13, :cond_3

    .line 722
    :try_start_4
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/AppOpsService$Callback;

    iget-object v13, v13, Lcom/android/server/AppOpsService$Callback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-interface {v13, v0, v1, v2}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(IILjava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 720
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 682
    .end local v6    # "i":I
    .end local v7    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v8    # "identity":J
    .end local v12    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catchall_0
    move-exception v13

    :goto_5
    monitor-exit p0

    throw v13

    .line 727
    .restart local v6    # "i":I
    .restart local v7    # "op":Lcom/android/server/AppOpsService$Op;
    .restart local v8    # "identity":J
    .restart local v12    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_3
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 673
    .end local v6    # "i":I
    .end local v8    # "identity":J
    :cond_4
    return-void

    .line 726
    .restart local v6    # "i":I
    .restart local v8    # "identity":J
    :catchall_1
    move-exception v13

    .line 727
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 726
    throw v13

    .line 723
    :catch_0
    move-exception v5

    .local v5, "e":Landroid/os/RemoteException;
    goto :goto_4

    .line 682
    .end local v5    # "e":Landroid/os/RemoteException;
    .end local v6    # "i":I
    .end local v8    # "identity":J
    .restart local v11    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :catchall_2
    move-exception v13

    move-object v10, v11

    .end local v11    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v10    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    goto :goto_5

    .end local v10    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v4    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v11    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_5
    move-object v10, v11

    .end local v11    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v10    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    goto :goto_1

    .end local v10    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v11    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_6
    move-object v10, v11

    .end local v11    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v10    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    goto :goto_2

    .local v10, "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_7
    move-object v11, v10

    .restart local v11    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    goto :goto_0
.end method

.method public setUidMode(III)V
    .locals 30
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "mode"    # I

    .prologue
    .line 556
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v25

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_0

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const-string/jumbo v26, "android.permission.UPDATE_APP_OPS_STATS"

    .line 558
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v27

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v28

    const/16 v29, 0x0

    .line 557
    invoke-virtual/range {v25 .. v29}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 560
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 561
    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result p1

    .line 563
    monitor-enter p0

    .line 564
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/AppOpsService;->getDefaultMode(I)I

    move-result v11

    .line 565
    .local v11, "defaultMode":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->isStrictOpEnable()Z

    move-result v25

    if-eqz v25, :cond_1

    .line 566
    const/16 v25, 0x1

    move/from16 v0, p3

    move/from16 v1, v25

    if-ne v0, v1, :cond_1

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v18

    .line 569
    .local v18, "packageName":Ljava/lang/String;
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, v18

    move/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v17

    .line 570
    .local v17, "op":Lcom/android/server/AppOpsService$Op;
    const/16 v25, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-static {v0, v1}, Lcom/android/server/AppOpsService$Op;->-set0(Lcom/android/server/AppOpsService$Op;Z)Z

    .line 573
    .end local v17    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v18    # "packageName":Ljava/lang/String;
    :cond_1
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v24

    .line 574
    .local v24, "uidState":Lcom/android/server/AppOpsService$UidState;
    if-nez v24, :cond_4

    .line 575
    move/from16 v0, p3

    if-ne v0, v11, :cond_2

    monitor-exit p0

    .line 576
    return-void

    .line 578
    :cond_2
    :try_start_1
    new-instance v24, Lcom/android/server/AppOpsService$UidState;

    .end local v24    # "uidState":Lcom/android/server/AppOpsService$UidState;
    move-object/from16 v0, v24

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/AppOpsService$UidState;-><init>(I)V

    .line 579
    .restart local v24    # "uidState":Lcom/android/server/AppOpsService$UidState;
    new-instance v25, Landroid/util/SparseIntArray;

    invoke-direct/range {v25 .. v25}, Landroid/util/SparseIntArray;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 580
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, p2

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 582
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_0
    monitor-exit p0

    .line 605
    invoke-static/range {p2 .. p2}, Lcom/android/server/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v23

    .line 606
    .local v23, "uidPackageNames":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 609
    .local v8, "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    .line 610
    .local v9, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-eqz v9, :cond_9

    .line 611
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 612
    .local v7, "callbackCount":I
    const/4 v13, 0x0

    .end local v8    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .local v13, "i":I
    :goto_1
    if-ge v13, v7, :cond_9

    .line 613
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AppOpsService$Callback;

    .line 614
    .local v6, "callback":Lcom/android/server/AppOpsService$Callback;
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    .line 615
    .local v10, "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v0, v23

    invoke-static {v10, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 616
    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    .line 617
    .local v8, "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-virtual {v8, v6, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 583
    .end local v6    # "callback":Lcom/android/server/AppOpsService$Callback;
    .end local v7    # "callbackCount":I
    .end local v8    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v9    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .end local v10    # "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v13    # "i":I
    .end local v23    # "uidPackageNames":[Ljava/lang/String;
    :cond_4
    :try_start_2
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v25, v0

    if-nez v25, :cond_5

    .line 584
    move/from16 v0, p3

    if-eq v0, v11, :cond_3

    .line 585
    new-instance v25, Landroid/util/SparseIntArray;

    invoke-direct/range {v25 .. v25}, Landroid/util/SparseIntArray;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 586
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 587
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 563
    .end local v11    # "defaultMode":I
    .end local v24    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catchall_0
    move-exception v25

    monitor-exit p0

    throw v25

    .line 590
    .restart local v11    # "defaultMode":I
    .restart local v24    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_5
    :try_start_3
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v25

    move/from16 v0, v25

    move/from16 v1, p3

    if-ne v0, v1, :cond_6

    monitor-exit p0

    .line 591
    return-void

    .line 593
    :cond_6
    move/from16 v0, p3

    if-ne v0, v11, :cond_8

    .line 594
    :try_start_4
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 595
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseIntArray;->size()I

    move-result v25

    if-gtz v25, :cond_7

    .line 596
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 601
    :cond_7
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V

    goto/16 :goto_0

    .line 599
    :cond_8
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 621
    .restart local v9    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v23    # "uidPackageNames":[Ljava/lang/String;
    :cond_9
    const/16 v25, 0x0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v26, v0

    :goto_3
    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_d

    aget-object v22, v23, v25

    .line 622
    .local v22, "uidPackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    check-cast v9, Ljava/util/ArrayList;

    .line 623
    .restart local v9    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-eqz v9, :cond_c

    .line 624
    if-nez v8, :cond_a

    .line 625
    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    .line 627
    :cond_a
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 628
    .restart local v7    # "callbackCount":I
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_4
    if-ge v13, v7, :cond_c

    .line 629
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AppOpsService$Callback;

    .line 630
    .restart local v6    # "callback":Lcom/android/server/AppOpsService$Callback;
    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/ArraySet;

    .line 631
    .restart local v10    # "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v10, :cond_b

    .line 632
    new-instance v10, Landroid/util/ArraySet;

    .end local v10    # "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    .line 633
    .restart local v10    # "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v8, v6, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    :cond_b
    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 628
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 621
    .end local v6    # "callback":Lcom/android/server/AppOpsService$Callback;
    .end local v7    # "callbackCount":I
    .end local v10    # "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v13    # "i":I
    :cond_c
    add-int/lit8 v25, v25, 0x1

    goto :goto_3

    .line 641
    .end local v22    # "uidPackageName":Ljava/lang/String;
    :cond_d
    if-nez v8, :cond_e

    .line 642
    return-void

    .line 648
    :cond_e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 650
    .local v14, "identity":J
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_5
    :try_start_5
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v13, v0, :cond_11

    .line 651
    invoke-virtual {v8, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AppOpsService$Callback;

    .line 652
    .restart local v6    # "callback":Lcom/android/server/AppOpsService$Callback;
    invoke-virtual {v8, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/util/ArraySet;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 654
    .local v21, "reportedPackageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v21, :cond_10

    .line 655
    :try_start_6
    iget-object v0, v6, Lcom/android/server/AppOpsService$Callback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, v26

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(IILjava/lang/String;)V

    .line 650
    :cond_f
    :goto_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 657
    :cond_10
    invoke-virtual/range {v21 .. v21}, Landroid/util/ArraySet;->size()I

    move-result v19

    .line 658
    .local v19, "reportedPackageCount":I
    const/16 v16, 0x0

    .local v16, "j":I
    :goto_7
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_f

    .line 659
    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 660
    .local v20, "reportedPackageName":Ljava/lang/String;
    iget-object v0, v6, Lcom/android/server/AppOpsService$Callback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, v20

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(IILjava/lang/String;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 658
    add-int/lit8 v16, v16, 0x1

    goto :goto_7

    .line 663
    .end local v16    # "j":I
    .end local v19    # "reportedPackageCount":I
    .end local v20    # "reportedPackageName":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 664
    .local v12, "e":Landroid/os/RemoteException;
    :try_start_7
    const-string/jumbo v25, "AppOps"

    const-string/jumbo v26, "Error dispatching op op change"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_6

    .line 667
    .end local v6    # "callback":Lcom/android/server/AppOpsService$Callback;
    .end local v12    # "e":Landroid/os/RemoteException;
    .end local v21    # "reportedPackageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_1
    move-exception v25

    .line 668
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 667
    throw v25

    .line 668
    :cond_11
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 555
    return-void
.end method

.method public setUserRestriction(IZLandroid/os/IBinder;I[Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # I
    .param p2, "restricted"    # Z
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "userHandle"    # I
    .param p5, "exceptionPackages"    # [Ljava/lang/String;

    .prologue
    .line 2485
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 2486
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MANAGE_APP_OPS_RESTRICTIONS"

    .line 2487
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    .line 2486
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 2489
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p4, v0, :cond_1

    .line 2490
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 2492
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 2494
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Need INTERACT_ACROSS_USERS_FULL or INTERACT_ACROSS_USERS to interact cross user "

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2498
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 2499
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2500
    invoke-direct/range {p0 .. p5}, Lcom/android/server/AppOpsService;->setUserRestrictionNoCheck(IZLandroid/os/IBinder;I[Ljava/lang/String;)V

    .line 2484
    return-void
.end method

.method public setUserRestrictions(Landroid/os/Bundle;Landroid/os/IBinder;I)V
    .locals 7
    .param p1, "restrictions"    # Landroid/os/Bundle;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "userHandle"    # I

    .prologue
    const/4 v5, 0x0

    .line 2470
    const-string/jumbo v0, "setUserRestrictions"

    invoke-direct {p0, v0}, Lcom/android/server/AppOpsService;->checkSystemUid(Ljava/lang/String;)V

    .line 2471
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2472
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2473
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v0, 0x51

    if-ge v1, v0, :cond_1

    .line 2474
    invoke-static {v1}, Landroid/app/AppOpsManager;->opToRestriction(I)Ljava/lang/String;

    move-result-object v6

    .line 2475
    .local v6, "restriction":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 2476
    const/4 v0, 0x0

    invoke-virtual {p1, v6, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object v0, p0

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/AppOpsService;->setUserRestrictionNoCheck(IZLandroid/os/IBinder;I[Ljava/lang/String;)V

    .line 2473
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2469
    .end local v6    # "restriction":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public shutdown()V
    .locals 3

    .prologue
    .line 427
    const-string/jumbo v1, "AppOps"

    const-string/jumbo v2, "Writing app ops before shutdown..."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    const/4 v0, 0x0

    .line 429
    .local v0, "doWrite":Z
    monitor-enter p0

    .line 430
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    if-eqz v1, :cond_0

    .line 431
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    const/4 v0, 0x1

    :cond_0
    monitor-exit p0

    .line 435
    if-eqz v0, :cond_1

    .line 436
    invoke-virtual {p0}, Lcom/android/server/AppOpsService;->writeState()V

    .line 426
    :cond_1
    return-void

    .line 429
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public startOperation(Landroid/os/IBinder;IILjava/lang/String;)I
    .locals 18
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1283
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    .line 1284
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 1285
    invoke-static/range {p3 .. p4}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1286
    .local v8, "resolvedPackageName":Ljava/lang/String;
    if-nez v8, :cond_0

    .line 1287
    const/4 v13, 0x1

    return v13

    .line 1289
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/AppOpsService;->isSkipUseSystem(II)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1290
    const/4 v13, 0x0

    return v13

    .line 1291
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/AppOpsService;->isSkipPackage(ILjava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1292
    const/4 v13, 0x0

    return v13

    .line 1293
    :cond_2
    move/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Landroid/app/ZsAppOpsUtils;->isSkipPackage(ILjava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1294
    const/4 v13, 0x0

    return v13

    .line 1297
    :cond_3
    const/16 v13, 0xf

    move/from16 v0, p2

    if-eq v0, v13, :cond_4

    const/16 v13, 0x46

    move/from16 v0, p2

    if-ne v0, v13, :cond_6

    .line 1298
    :cond_4
    const-string/jumbo v13, "com.android.providers.telephony"

    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 1299
    const-string/jumbo v13, "com.android.messaging"

    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 1298
    if-eqz v13, :cond_6

    .line 1300
    :cond_5
    const/4 v13, 0x0

    return v13

    :cond_6
    move-object/from16 v4, p1

    .line 1304
    check-cast v4, Lcom/android/server/AppOpsService$ClientState;

    .line 1307
    .local v4, "client":Lcom/android/server/AppOpsService$ClientState;
    const/4 v13, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v8, v13}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v7

    .line 1308
    .local v7, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v7, :cond_8

    .line 1309
    sget-boolean v13, Lcom/android/server/AppOpsService;->DEBUG:Z

    if-eqz v13, :cond_7

    const-string/jumbo v13, "AppOps"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "startOperation: no op for code "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " uid "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1310
    const-string/jumbo v15, " package "

    .line 1309
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    :cond_7
    const/4 v13, 0x2

    return v13

    .line 1313
    :cond_8
    const/4 v13, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v7, v1, v13}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v6

    .line 1314
    .local v6, "op":Lcom/android/server/AppOpsService$Op;
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v8}, Lcom/android/server/AppOpsService;->isOpRestrictedLocked(IILjava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 1315
    const/4 v13, 0x1

    return v13

    .line 1317
    :cond_9
    invoke-static/range {p2 .. p2}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v9

    .line 1318
    .local v9, "switchCode":I
    iget-object v12, v7, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    .line 1319
    .local v12, "uidState":Lcom/android/server/AppOpsService$UidState;
    if-eqz v12, :cond_c

    iget-object v13, v12, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v13, :cond_c

    .line 1320
    iget-object v13, v12, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v13, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v11

    .line 1321
    .local v11, "uidMode":I
    if-eqz v11, :cond_c

    const/4 v13, 0x4

    if-ne v11, v13, :cond_a

    const-string/jumbo v13, "com.android.cts.managedprofile"

    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    const/16 v13, 0x1a

    move/from16 v0, p2

    if-ne v0, v13, :cond_c

    .line 1322
    :cond_a
    sget-boolean v13, Lcom/android/server/AppOpsService;->DEBUG:Z

    if-eqz v13, :cond_b

    const-string/jumbo v13, "AppOps"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "startOperation: reject #"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v6, Lcom/android/server/AppOpsService$Op;->mode:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " for code "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1323
    const-string/jumbo v15, " ("

    .line 1322
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1323
    const-string/jumbo v15, ") uid "

    .line 1322
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1323
    const-string/jumbo v15, " package "

    .line 1322
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iput-wide v14, v6, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 1326
    return v11

    .line 1329
    .end local v11    # "uidMode":I
    :cond_c
    move/from16 v0, p2

    if-eq v9, v0, :cond_f

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v9, v13}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v10

    .line 1332
    .local v10, "switchOp":Lcom/android/server/AppOpsService$Op;
    :goto_0
    iget v13, v10, Lcom/android/server/AppOpsService$Op;->mode:I

    if-eqz v13, :cond_10

    iget v13, v10, Lcom/android/server/AppOpsService$Op;->mode:I

    const/4 v14, 0x4

    if-ne v13, v14, :cond_d

    const-string/jumbo v13, "com.android.cts.managedprofile"

    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    const/16 v13, 0x1a

    move/from16 v0, p2

    if-ne v0, v13, :cond_10

    .line 1333
    :cond_d
    sget-boolean v13, Lcom/android/server/AppOpsService;->DEBUG:Z

    if-eqz v13, :cond_e

    const-string/jumbo v13, "AppOps"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "startOperation: reject #"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v6, Lcom/android/server/AppOpsService$Op;->mode:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " for code "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1334
    const-string/jumbo v15, " ("

    .line 1333
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1334
    const-string/jumbo v15, ") uid "

    .line 1333
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1334
    const-string/jumbo v15, " package "

    .line 1333
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iput-wide v14, v6, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 1337
    iget v13, v10, Lcom/android/server/AppOpsService$Op;->mode:I

    return v13

    .end local v10    # "switchOp":Lcom/android/server/AppOpsService$Op;
    :cond_f
    move-object v10, v6

    .line 1329
    goto :goto_0

    .line 1338
    .restart local v10    # "switchOp":Lcom/android/server/AppOpsService$Op;
    :cond_10
    iget v13, v10, Lcom/android/server/AppOpsService$Op;->mode:I

    if-eqz v13, :cond_11

    const-string/jumbo v13, "com.android.cts.managedprofile"

    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_15

    const/16 v13, 0x1a

    move/from16 v0, p2

    if-ne v0, v13, :cond_15

    .line 1339
    :cond_11
    sget-boolean v13, Lcom/android/server/AppOpsService;->DEBUG:Z

    if-eqz v13, :cond_12

    .line 1340
    const-string/jumbo v13, "AppOps"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "startOperation: allowing code "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1341
    const-string/jumbo v15, " uid "

    .line 1340
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1341
    const-string/jumbo v15, " package "

    .line 1340
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p4

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    :cond_12
    iget v13, v6, Lcom/android/server/AppOpsService$Op;->nesting:I

    if-nez v13, :cond_13

    .line 1343
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iput-wide v14, v6, Lcom/android/server/AppOpsService$Op;->time:J

    .line 1344
    iget v13, v6, Lcom/android/server/AppOpsService$Op;->allowedCount:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v6, Lcom/android/server/AppOpsService$Op;->allowedCount:I

    .line 1345
    const-wide/16 v14, 0x0

    iput-wide v14, v6, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 1346
    const/4 v13, -0x1

    iput v13, v6, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 1348
    :cond_13
    iget v13, v6, Lcom/android/server/AppOpsService$Op;->nesting:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v6, Lcom/android/server/AppOpsService$Op;->nesting:I

    .line 1349
    iget-object v13, v4, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    if-eqz v13, :cond_14

    .line 1350
    iget-object v13, v4, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1352
    :cond_14
    const/4 v13, 0x0

    return v13

    .line 1354
    :cond_15
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsService;->mLooper:Landroid/os/Looper;

    if-ne v13, v14, :cond_16

    .line 1355
    const-string/jumbo v13, "AppOps"

    .line 1356
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "startOperation: This method will deadlock if called from the main thread. (Code: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1358
    const-string/jumbo v15, " uid: "

    .line 1356
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1360
    const-string/jumbo v15, " package: "

    .line 1356
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p4

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1361
    const-string/jumbo v15, ")"

    .line 1356
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1355
    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    iget v13, v10, Lcom/android/server/AppOpsService$Op;->mode:I

    return v13

    .line 1364
    :cond_16
    sget-boolean v13, Lcom/android/server/AppOpsService;->isCTA:Z

    if-nez v13, :cond_19

    .line 1365
    iget-wide v14, v6, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-eqz v13, :cond_17

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iget-wide v0, v6, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    const-wide/16 v16, 0x3a98

    cmp-long v13, v14, v16

    if-gez v13, :cond_17

    .line 1368
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iput-wide v14, v6, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 1369
    const/4 v13, 0x1

    return v13

    .line 1373
    :cond_17
    iget-wide v14, v6, Lcom/android/server/AppOpsService$Op;->time:J

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-eqz v13, :cond_19

    iget-wide v14, v6, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-nez v13, :cond_19

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iget-wide v0, v6, Lcom/android/server/AppOpsService$Op;->time:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    const-wide/16 v16, 0x3a98

    cmp-long v13, v14, v16

    if-gez v13, :cond_19

    .line 1374
    iget v13, v6, Lcom/android/server/AppOpsService$Op;->nesting:I

    if-nez v13, :cond_18

    .line 1375
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iput-wide v14, v6, Lcom/android/server/AppOpsService$Op;->time:J

    .line 1376
    iget v13, v6, Lcom/android/server/AppOpsService$Op;->allowedCount:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v6, Lcom/android/server/AppOpsService$Op;->allowedCount:I

    .line 1377
    const-wide/16 v14, 0x0

    iput-wide v14, v6, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 1378
    const/4 v13, -0x1

    iput v13, v6, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 1380
    :cond_18
    iget v13, v6, Lcom/android/server/AppOpsService$Op;->nesting:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v6, Lcom/android/server/AppOpsService$Op;->nesting:I

    .line 1381
    const/4 v13, 0x0

    return v13

    .line 1384
    :cond_19
    iget v13, v6, Lcom/android/server/AppOpsService$Op;->startOpCount:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v6, Lcom/android/server/AppOpsService$Op;->startOpCount:I

    .line 1385
    iget-object v5, v4, Lcom/android/server/AppOpsService$ClientState;->mAppToken:Landroid/os/IBinder;

    .line 1386
    .local v5, "clientToken":Landroid/os/IBinder;
    iget-object v13, v6, Lcom/android/server/AppOpsService$Op;->clientTokens:Ljava/util/ArrayList;

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1389
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3, v10}, Lcom/android/server/AppOpsService;->askOperationLocked(IILjava/lang/String;Lcom/android/server/AppOpsService$Op;)I

    move-result v13

    return v13
.end method

.method public startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    .locals 5
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/internal/app/IAppOpsCallback;

    .prologue
    const/4 v4, -0x1

    .line 889
    if-nez p3, :cond_0

    .line 890
    return-void

    .line 892
    :cond_0
    monitor-enter p0

    .line 893
    if-eq p1, v4, :cond_1

    :try_start_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result p1

    .line 894
    :cond_1
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface {p3}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Callback;

    .line 895
    .local v0, "cb":Lcom/android/server/AppOpsService$Callback;
    if-nez v0, :cond_2

    .line 896
    new-instance v0, Lcom/android/server/AppOpsService$Callback;

    .end local v0    # "cb":Lcom/android/server/AppOpsService$Callback;
    invoke-direct {v0, p0, p3}, Lcom/android/server/AppOpsService$Callback;-><init>(Lcom/android/server/AppOpsService;Lcom/android/internal/app/IAppOpsCallback;)V

    .line 897
    .restart local v0    # "cb":Lcom/android/server/AppOpsService$Callback;
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface {p3}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    :cond_2
    if-eq p1, v4, :cond_4

    .line 900
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 901
    .local v1, "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-nez v1, :cond_3

    .line 902
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 903
    .restart local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 905
    :cond_3
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 907
    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_4
    if-eqz p2, :cond_6

    .line 908
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 909
    .restart local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-nez v1, :cond_5

    .line 910
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 911
    .restart local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    :cond_5
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_6
    monitor-exit p0

    .line 888
    return-void

    .line 892
    .end local v0    # "cb":Lcom/android/server/AppOpsService$Callback;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    .locals 5
    .param p1, "callback"    # Lcom/android/internal/app/IAppOpsCallback;

    .prologue
    .line 920
    if-nez p1, :cond_0

    .line 921
    return-void

    .line 923
    :cond_0
    monitor-enter p0

    .line 924
    :try_start_0
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Callback;

    .line 925
    .local v0, "cb":Lcom/android/server/AppOpsService$Callback;
    if-eqz v0, :cond_4

    .line 926
    invoke-virtual {v0}, Lcom/android/server/AppOpsService$Callback;->unlinkToDeath()V

    .line 927
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 928
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 929
    .local v1, "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 930
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 931
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 927
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 934
    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_2
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_1
    if-ltz v2, :cond_4

    .line 935
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 936
    .restart local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 937
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_3

    .line 938
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 934
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .end local v2    # "i":I
    :cond_4
    monitor-exit p0

    .line 919
    return-void

    .line 923
    .end local v0    # "cb":Lcom/android/server/AppOpsService$Callback;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public systemReady()V
    .locals 14

    .prologue
    .line 317
    monitor-enter p0

    .line 318
    const/4 v0, 0x0

    .line 319
    .local v0, "changed":Z
    :try_start_0
    iget-object v10, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    add-int/lit8 v2, v10, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_4

    .line 320
    iget-object v10, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v10, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/AppOpsService$UidState;

    .line 322
    .local v9, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget v10, v9, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-static {v10}, Lcom/android/server/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v7

    .line 323
    .local v7, "packageNames":[Ljava/lang/String;
    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 324
    invoke-virtual {v9}, Lcom/android/server/AppOpsService$UidState;->clear()V

    .line 325
    iget-object v10, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v10, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 326
    const/4 v0, 0x1

    .line 319
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 330
    :cond_1
    iget-object v8, v9, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 331
    .local v8, "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    if-eqz v8, :cond_0

    .line 335
    invoke-virtual {v8}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 336
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AppOpsService$Ops;>;"
    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 337
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AppOpsService$Ops;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    .local v6, "ops":Lcom/android/server/AppOpsService$Ops;
    const/4 v1, -0x1

    .line 340
    .local v1, "curUid":I
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v10

    iget-object v11, v6, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    .line 342
    iget-object v12, v6, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v12, v12, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    .line 341
    const/16 v13, 0x2000

    .line 340
    invoke-interface {v10, v11, v13, v12}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 345
    :goto_3
    :try_start_2
    iget-object v10, v6, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v10, v10, Lcom/android/server/AppOpsService$UidState;->uid:I

    if-eq v1, v10, :cond_2

    .line 346
    const-string/jumbo v10, "AppOps"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Pruning old package "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v6, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 347
    const-string/jumbo v12, "/"

    .line 346
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 347
    iget-object v12, v6, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    .line 346
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 347
    const-string/jumbo v12, ": new uid="

    .line 346
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 349
    const/4 v0, 0x1

    goto :goto_2

    .line 353
    .end local v1    # "curUid":I
    .end local v6    # "ops":Lcom/android/server/AppOpsService$Ops;
    :cond_3
    invoke-virtual {v9}, Lcom/android/server/AppOpsService$UidState;->isDefault()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 354
    iget-object v10, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v10, v2}, Landroid/util/SparseArray;->removeAt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 317
    .end local v2    # "i":I
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AppOpsService$Ops;>;"
    .end local v7    # "packageNames":[Ljava/lang/String;
    .end local v8    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v9    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 357
    .restart local v2    # "i":I
    :cond_4
    if-eqz v0, :cond_5

    .line 358
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_5
    monitor-exit p0

    .line 363
    const-class v10, Landroid/os/storage/MountServiceInternal;

    .line 362
    invoke-static {v10}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/MountServiceInternal;

    .line 365
    .local v5, "mountServiceInternal":Landroid/os/storage/MountServiceInternal;
    new-instance v10, Lcom/android/server/AppOpsService$3;

    invoke-direct {v10, p0}, Lcom/android/server/AppOpsService$3;-><init>(Lcom/android/server/AppOpsService;)V

    .line 364
    invoke-virtual {v5, v10}, Landroid/os/storage/MountServiceInternal;->addExternalStoragePolicy(Landroid/os/storage/MountServiceInternal$ExternalStorageMountPolicy;)V

    .line 316
    return-void

    .line 343
    .end local v5    # "mountServiceInternal":Landroid/os/storage/MountServiceInternal;
    .restart local v1    # "curUid":I
    .restart local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v6    # "ops":Lcom/android/server/AppOpsService$Ops;
    .restart local v7    # "packageNames":[Ljava/lang/String;
    .restart local v8    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v9    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catch_0
    move-exception v3

    .local v3, "ignored":Landroid/os/RemoteException;
    goto :goto_3
.end method

.method public uidRemoved(I)V
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 418
    monitor-enter p0

    .line 419
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 421
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 417
    return-void

    .line 418
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateHintAppsConfig(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "hint"    # Z

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ActivityManagerService;->updateHintAppsConfig(Ljava/lang/String;Z)V

    .line 280
    return-void
.end method

.method public updateHintAppsNetworkConfig(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "hint"    # Z

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ActivityManagerService;->updateHintAppsNetworkConfig(Ljava/lang/String;Z)V

    .line 284
    return-void
.end method

.method writeState()V
    .locals 31

    .prologue
    .line 1825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    move-object/from16 v27, v0

    monitor-enter v27

    .line 1826
    const/16 v26, 0x0

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/AppOpsService;->getPackagesForOps([I)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v4

    .line 1830
    .local v4, "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v20

    .line 1837
    .local v20, "stream":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v16, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct/range {v16 .. v16}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1838
    .local v16, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v26, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual/range {v26 .. v26}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1839
    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1840
    const-string/jumbo v26, "app-ops"

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/util/SparseArray;->size()I

    move-result v25

    .line 1843
    .local v25, "uidStateCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    move/from16 v0, v25

    if-ge v7, v0, :cond_2

    .line 1844
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/AppOpsService$UidState;

    .line 1845
    .local v24, "uidState":Lcom/android/server/AppOpsService$UidState;
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v26, v0

    if-eqz v26, :cond_1

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/util/SparseIntArray;->size()I

    move-result v26

    if-lez v26, :cond_1

    .line 1846
    const-string/jumbo v26, "uid"

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1847
    const-string/jumbo v26, "n"

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1848
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v21, v0

    .line 1849
    .local v21, "uidOpModes":Landroid/util/SparseIntArray;
    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseIntArray;->size()I

    move-result v13

    .line 1850
    .local v13, "opCount":I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    if-ge v8, v13, :cond_0

    .line 1851
    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v11

    .line 1852
    .local v11, "op":I
    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v10

    .line 1853
    .local v10, "mode":I
    const-string/jumbo v26, "op"

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1854
    const-string/jumbo v26, "n"

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1855
    const-string/jumbo v26, "m"

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1856
    const-string/jumbo v26, "op"

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1850
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1831
    .end local v7    # "i":I
    .end local v8    # "j":I
    .end local v10    # "mode":I
    .end local v11    # "op":I
    .end local v13    # "opCount":I
    .end local v16    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v20    # "stream":Ljava/io/FileOutputStream;
    .end local v21    # "uidOpModes":Landroid/util/SparseIntArray;
    .end local v24    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .end local v25    # "uidStateCount":I
    :catch_0
    move-exception v6

    .line 1832
    .local v6, "e":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v26, "AppOps"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "Failed to write state: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v27

    .line 1833
    return-void

    .line 1858
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v7    # "i":I
    .restart local v8    # "j":I
    .restart local v13    # "opCount":I
    .restart local v16    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v20    # "stream":Ljava/io/FileOutputStream;
    .restart local v21    # "uidOpModes":Landroid/util/SparseIntArray;
    .restart local v24    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .restart local v25    # "uidStateCount":I
    :cond_0
    :try_start_4
    const-string/jumbo v26, "uid"

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1843
    .end local v8    # "j":I
    .end local v13    # "opCount":I
    .end local v21    # "uidOpModes":Landroid/util/SparseIntArray;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 1862
    .end local v24    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_2
    if-eqz v4, :cond_e

    .line 1863
    const/4 v9, 0x0

    .line 1864
    .local v9, "lastPkg":Ljava/lang/String;
    const/4 v7, 0x0

    .end local v9    # "lastPkg":Ljava/lang/String;
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v7, v0, :cond_d

    .line 1865
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/app/AppOpsManager$PackageOps;

    .line 1866
    .local v17, "pkg":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual/range {v17 .. v17}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_4

    .line 1867
    if-eqz v9, :cond_3

    .line 1868
    const-string/jumbo v26, "pkg"

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1870
    :cond_3
    invoke-virtual/range {v17 .. v17}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 1871
    .local v9, "lastPkg":Ljava/lang/String;
    const-string/jumbo v26, "pkg"

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1872
    const-string/jumbo v26, "n"

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1874
    .end local v9    # "lastPkg":Ljava/lang/String;
    :cond_4
    const-string/jumbo v26, "uid"

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1875
    const-string/jumbo v26, "n"

    invoke-virtual/range {v17 .. v17}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1876
    monitor-enter p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1877
    :try_start_5
    invoke-virtual/range {v17 .. v17}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v26

    invoke-virtual/range {v17 .. v17}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v28

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v14

    .line 1880
    .local v14, "ops":Lcom/android/server/AppOpsService$Ops;
    if-eqz v14, :cond_b

    .line 1881
    const-string/jumbo v26, "p"

    iget-boolean v0, v14, Lcom/android/server/AppOpsService$Ops;->isPrivileged:Z

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_3
    :try_start_6
    monitor-exit p0

    .line 1886
    invoke-virtual/range {v17 .. v17}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v15

    .line 1887
    .local v15, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    if-eqz v15, :cond_c

    .line 1888
    const/4 v8, 0x0

    .restart local v8    # "j":I
    :goto_4
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v8, v0, :cond_c

    .line 1889
    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/AppOpsManager$OpEntry;

    .line 1890
    .local v12, "op":Landroid/app/AppOpsManager$OpEntry;
    const-string/jumbo v26, "op"

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1891
    const-string/jumbo v26, "n"

    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1892
    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v26

    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v28

    invoke-virtual/range {v17 .. v17}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v29

    invoke-virtual/range {v17 .. v17}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    move-object/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/AppOpsService;->getDefaultMode(IILjava/lang/String;)I

    move-result v28

    move/from16 v0, v26

    move/from16 v1, v28

    if-eq v0, v1, :cond_5

    .line 1893
    const-string/jumbo v26, "m"

    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1895
    :cond_5
    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v22

    .line 1896
    .local v22, "time":J
    const-wide/16 v28, 0x0

    cmp-long v26, v22, v28

    if-eqz v26, :cond_6

    .line 1897
    const-string/jumbo v26, "t"

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1899
    :cond_6
    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getRejectTime()J

    move-result-wide v22

    .line 1900
    const-wide/16 v28, 0x0

    cmp-long v26, v22, v28

    if-eqz v26, :cond_7

    .line 1901
    const-string/jumbo v26, "r"

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1903
    :cond_7
    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getDuration()I

    move-result v5

    .line 1904
    .local v5, "dur":I
    if-eqz v5, :cond_8

    .line 1905
    const-string/jumbo v26, "d"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1907
    :cond_8
    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getProxyUid()I

    move-result v19

    .line 1908
    .local v19, "proxyUid":I
    const/16 v26, -0x1

    move/from16 v0, v19

    move/from16 v1, v26

    if-eq v0, v1, :cond_9

    .line 1909
    const-string/jumbo v26, "pu"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1911
    :cond_9
    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getProxyPackageName()Ljava/lang/String;

    move-result-object v18

    .line 1912
    .local v18, "proxyPackageName":Ljava/lang/String;
    if-eqz v18, :cond_a

    .line 1913
    const-string/jumbo v26, "pp"

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    move-object/from16 v3, v18

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1915
    :cond_a
    const-string/jumbo v26, "op"

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1888
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4

    .line 1883
    .end local v5    # "dur":I
    .end local v8    # "j":I
    .end local v12    # "op":Landroid/app/AppOpsManager$OpEntry;
    .end local v15    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v18    # "proxyPackageName":Ljava/lang/String;
    .end local v19    # "proxyUid":I
    .end local v22    # "time":J
    :cond_b
    :try_start_7
    const-string/jumbo v26, "p"

    const/16 v28, 0x0

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_3

    .line 1876
    .end local v14    # "ops":Lcom/android/server/AppOpsService$Ops;
    :catchall_0
    move-exception v26

    :try_start_8
    monitor-exit p0

    throw v26
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1928
    .end local v7    # "i":I
    .end local v16    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v17    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .end local v25    # "uidStateCount":I
    :catch_1
    move-exception v6

    .line 1929
    .restart local v6    # "e":Ljava/io/IOException;
    :try_start_9
    const-string/jumbo v26, "AppOps"

    const-string/jumbo v28, "Failed to write state, restoring backup."

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1930
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .end local v6    # "e":Ljava/io/IOException;
    :goto_5
    monitor-exit v27

    .line 1824
    return-void

    .line 1918
    .restart local v7    # "i":I
    .restart local v14    # "ops":Lcom/android/server/AppOpsService$Ops;
    .restart local v15    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .restart local v16    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v17    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .restart local v25    # "uidStateCount":I
    :cond_c
    :try_start_a
    const-string/jumbo v26, "uid"

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1864
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 1920
    .end local v14    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v15    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v17    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    :cond_d
    if-eqz v9, :cond_e

    .line 1921
    const-string/jumbo v26, "pkg"

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1925
    :cond_e
    const-string/jumbo v26, "app-ops"

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1926
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_5

    .line 1825
    .end local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v7    # "i":I
    .end local v16    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v20    # "stream":Ljava/io/FileOutputStream;
    .end local v25    # "uidStateCount":I
    :catchall_1
    move-exception v26

    monitor-exit v27

    throw v26
.end method
