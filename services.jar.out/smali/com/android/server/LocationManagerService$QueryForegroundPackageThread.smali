.class Lcom/android/server/LocationManagerService$QueryForegroundPackageThread;
.super Ljava/lang/Object;
.source "LocationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryForegroundPackageThread"
.end annotation


# instance fields
.field private mPackageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/LocationManagerService;
    .param p2, "mpkName"    # Ljava/lang/String;

    .prologue
    .line 3448
    iput-object p1, p0, Lcom/android/server/LocationManagerService$QueryForegroundPackageThread;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3450
    iput-object p2, p0, Lcom/android/server/LocationManagerService$QueryForegroundPackageThread;->mPackageName:Ljava/lang/String;

    .line 3448
    return-void
.end method


# virtual methods
.method public queryPackage()I
    .locals 10

    .prologue
    .line 3488
    const/4 v6, -0x1

    .line 3489
    .local v6, "ret":I
    iget-object v7, p0, Lcom/android/server/LocationManagerService$QueryForegroundPackageThread;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v7}, Lcom/android/server/LocationManagerService;->-get1(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "activity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 3490
    .local v0, "activityManager":Landroid/app/ActivityManager;
    iget-object v7, p0, Lcom/android/server/LocationManagerService$QueryForegroundPackageThread;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v7}, Lcom/android/server/LocationManagerService;->-get1(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "keyguard"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    .line 3491
    .local v2, "keyguardManager":Landroid/app/KeyguardManager;
    if-nez v0, :cond_0

    const/4 v7, -0x1

    return v7

    .line 3493
    :cond_0
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    .line 3494
    .local v5, "processList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "process$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 3496
    .local v3, "process":Landroid/app/ActivityManager$RunningAppProcessInfo;
    const-string/jumbo v7, "LocationManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Process.processName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "  mPackageName="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/LocationManagerService$QueryForegroundPackageThread;->mPackageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3497
    iget-object v7, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/LocationManagerService$QueryForegroundPackageThread;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3499
    iget v7, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v8, 0x64

    if-eq v7, v8, :cond_2

    iget v7, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_5

    .line 3501
    :cond_2
    const/4 v6, 0x1

    .line 3510
    .end local v3    # "process":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_3
    :goto_0
    invoke-virtual {v2}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    .line 3511
    .local v1, "isLockedState":Z
    invoke-virtual {v2}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 3513
    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    const/4 v6, 0x0

    .line 3516
    :cond_4
    return v6

    .line 3505
    .end local v1    # "isLockedState":Z
    .restart local v3    # "process":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_5
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 6

    .prologue
    .line 3459
    :cond_0
    const-wide/16 v2, 0x4e20

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 3460
    invoke-virtual {p0}, Lcom/android/server/LocationManagerService$QueryForegroundPackageThread;->queryPackage()I

    move-result v1

    .line 3461
    .local v1, "qResult":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 3464
    iget-object v2, p0, Lcom/android/server/LocationManagerService$QueryForegroundPackageThread;->this$0:Lcom/android/server/LocationManagerService;

    const/16 v3, 0x1e

    invoke-static {v2, v3}, Lcom/android/server/LocationManagerService;->-set2(Lcom/android/server/LocationManagerService;I)I

    .line 3465
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/server/LocationManagerService$MyThread;

    iget-object v4, p0, Lcom/android/server/LocationManagerService$QueryForegroundPackageThread;->this$0:Lcom/android/server/LocationManagerService;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/android/server/LocationManagerService$MyThread;-><init>(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$MyThread;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3453
    .end local v1    # "qResult":I
    :goto_0
    return-void

    .line 3468
    .restart local v1    # "qResult":I
    :cond_1
    if-eqz v1, :cond_0

    .line 3472
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 3480
    .end local v1    # "qResult":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method
