.class final Lcom/android/server/ZsPowerMonitorService$ZsBinderService;
.super Landroid/os/IZsPowerMonitor$Stub;
.source "ZsPowerMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ZsPowerMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ZsBinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ZsPowerMonitorService;


# direct methods
.method private constructor <init>(Lcom/android/server/ZsPowerMonitorService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/ZsPowerMonitorService;

    .prologue
    .line 343
    iput-object p1, p0, Lcom/android/server/ZsPowerMonitorService$ZsBinderService;->this$0:Lcom/android/server/ZsPowerMonitorService;

    invoke-direct {p0}, Landroid/os/IZsPowerMonitor$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ZsPowerMonitorService;Lcom/android/server/ZsPowerMonitorService$ZsBinderService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/ZsPowerMonitorService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ZsPowerMonitorService$ZsBinderService;-><init>(Lcom/android/server/ZsPowerMonitorService;)V

    return-void
.end method


# virtual methods
.method public disableIssueReport()V
    .locals 3

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/server/ZsPowerMonitorService$ZsBinderService;->this$0:Lcom/android/server/ZsPowerMonitorService;

    invoke-static {v0}, Lcom/android/server/ZsPowerMonitorService;->-get4(Lcom/android/server/ZsPowerMonitorService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 357
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ZsPowerMonitorService$ZsBinderService;->this$0:Lcom/android/server/ZsPowerMonitorService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/ZsPowerMonitorService;->-set0(Lcom/android/server/ZsPowerMonitorService;Z)Z

    .line 358
    invoke-static {}, Landroid/os/ZsPowerMonitorManager;->disableIssueReport()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 355
    return-void

    .line 356
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 397
    iget-object v3, p0, Lcom/android/server/ZsPowerMonitorService$ZsBinderService;->this$0:Lcom/android/server/ZsPowerMonitorService;

    invoke-static {v3}, Lcom/android/server/ZsPowerMonitorService;->-get2(Lcom/android/server/ZsPowerMonitorService;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 399
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Permission Denial: can\'t dump ZsPowerMonitorService from from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 400
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 399
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 401
    const-string/jumbo v4, ", uid="

    .line 399
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 401
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 399
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 402
    return-void

    .line 405
    :cond_0
    const/4 v0, 0x0

    .line 406
    .local v0, "tmpMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/ZsPowerMonitorService$Monitor;>;"
    iget-object v3, p0, Lcom/android/server/ZsPowerMonitorService$ZsBinderService;->this$0:Lcom/android/server/ZsPowerMonitorService;

    invoke-static {v3}, Lcom/android/server/ZsPowerMonitorService;->-get4(Lcom/android/server/ZsPowerMonitorService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 408
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ENABLE_SERVICE:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/ZsPowerMonitorManager;->serviceEnabled()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 409
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mReportIssue:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/ZsPowerMonitorService$ZsBinderService;->this$0:Lcom/android/server/ZsPowerMonitorService;

    invoke-static {v5}, Lcom/android/server/ZsPowerMonitorService;->-get6(Lcom/android/server/ZsPowerMonitorService;)Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 410
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "BETA:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/ZsPowerMonitorService$ZsBinderService;->this$0:Lcom/android/server/ZsPowerMonitorService;

    invoke-static {v5}, Lcom/android/server/ZsPowerMonitorService;->-get0(Lcom/android/server/ZsPowerMonitorService;)Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 411
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mBootCompleted:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/ZsPowerMonitorService$ZsBinderService;->this$0:Lcom/android/server/ZsPowerMonitorService;

    invoke-static {v5}, Lcom/android/server/ZsPowerMonitorService;->-get1(Lcom/android/server/ZsPowerMonitorService;)Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 412
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mUsbConnected:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/ZsPowerMonitorService$ZsBinderService;->this$0:Lcom/android/server/ZsPowerMonitorService;

    invoke-static {v5}, Lcom/android/server/ZsPowerMonitorService;->-get7(Lcom/android/server/ZsPowerMonitorService;)Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 413
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isUsbConnected:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/ZsPowerMonitorService$ZsBinderService;->this$0:Lcom/android/server/ZsPowerMonitorService;

    iget-object v5, v5, Lcom/android/server/ZsPowerMonitorService;->mZsPowerMonitorInternal:Landroid/os/ZsPowerMonitorInternal;

    invoke-virtual {v5}, Landroid/os/ZsPowerMonitorInternal;->isUsbConnected()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 414
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mPlugType:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/ZsPowerMonitorService$ZsBinderService;->this$0:Lcom/android/server/ZsPowerMonitorService;

    iget-object v5, v5, Lcom/android/server/ZsPowerMonitorService;->mZsPowerMonitorInternal:Landroid/os/ZsPowerMonitorInternal;

    invoke-virtual {v5}, Landroid/os/ZsPowerMonitorInternal;->getPlugType()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 415
    const-string/jumbo v3, ""

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 416
    iget-object v3, p0, Lcom/android/server/ZsPowerMonitorService$ZsBinderService;->this$0:Lcom/android/server/ZsPowerMonitorService;

    invoke-static {v3}, Lcom/android/server/ZsPowerMonitorService;->-get5(Lcom/android/server/ZsPowerMonitorService;)Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .local v0, "tmpMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/ZsPowerMonitorService$Monitor;>;"
    monitor-exit v4

    .line 420
    if-eqz v0, :cond_1

    .line 421
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "type$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 422
    .local v1, "type":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ZsPowerMonitorService$Monitor;

    invoke-virtual {v3, p2}, Lcom/android/server/ZsPowerMonitorService$Monitor;->dump(Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 406
    .end local v1    # "type":Ljava/lang/String;
    .end local v2    # "type$iterator":Ljava/util/Iterator;
    .local v0, "tmpMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/ZsPowerMonitorService$Monitor;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 396
    .local v0, "tmpMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/ZsPowerMonitorService$Monitor;>;"
    :cond_1
    return-void
.end method

.method public enableIssueReport()V
    .locals 3

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/server/ZsPowerMonitorService$ZsBinderService;->this$0:Lcom/android/server/ZsPowerMonitorService;

    invoke-static {v0}, Lcom/android/server/ZsPowerMonitorService;->-get4(Lcom/android/server/ZsPowerMonitorService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 348
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ZsPowerMonitorService$ZsBinderService;->this$0:Lcom/android/server/ZsPowerMonitorService;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/server/ZsPowerMonitorService;->-set0(Lcom/android/server/ZsPowerMonitorService;Z)Z

    .line 349
    invoke-static {}, Landroid/os/ZsPowerMonitorManager;->enableIssueReport()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 346
    return-void

    .line 347
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getMonitorParam(Ljava/lang/String;)J
    .locals 4
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 388
    iget-object v1, p0, Lcom/android/server/ZsPowerMonitorService$ZsBinderService;->this$0:Lcom/android/server/ZsPowerMonitorService;

    invoke-static {v1, p1}, Lcom/android/server/ZsPowerMonitorService;->-wrap1(Lcom/android/server/ZsPowerMonitorService;Ljava/lang/String;)Lcom/android/server/ZsPowerMonitorService$Monitor;

    move-result-object v0

    .line 389
    .local v0, "monitor":Lcom/android/server/ZsPowerMonitorService$Monitor;
    if-eqz v0, :cond_0

    .line 390
    invoke-virtual {v0}, Lcom/android/server/ZsPowerMonitorService$Monitor;->getParam1()J

    move-result-wide v2

    return-wide v2

    .line 392
    :cond_0
    const-wide/16 v2, -0x1

    return-wide v2
.end method

.method public isBetaMode()Z
    .locals 2

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/server/ZsPowerMonitorService$ZsBinderService;->this$0:Lcom/android/server/ZsPowerMonitorService;

    invoke-static {v0}, Lcom/android/server/ZsPowerMonitorService;->-get4(Lcom/android/server/ZsPowerMonitorService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 373
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ZsPowerMonitorService$ZsBinderService;->this$0:Lcom/android/server/ZsPowerMonitorService;

    invoke-static {v0}, Lcom/android/server/ZsPowerMonitorService;->-get0(Lcom/android/server/ZsPowerMonitorService;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 372
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isMonitorEnabled(Ljava/lang/String;)Z
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 379
    iget-object v1, p0, Lcom/android/server/ZsPowerMonitorService$ZsBinderService;->this$0:Lcom/android/server/ZsPowerMonitorService;

    invoke-static {v1, p1}, Lcom/android/server/ZsPowerMonitorService;->-wrap0(Lcom/android/server/ZsPowerMonitorService;Ljava/lang/String;)Lcom/android/server/ZsPowerMonitorService$Monitor;

    move-result-object v0

    .line 380
    .local v0, "monitor":Lcom/android/server/ZsPowerMonitorService$Monitor;
    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {v0}, Lcom/android/server/ZsPowerMonitorService$Monitor;->isEnable()Z

    move-result v1

    return v1

    .line 383
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public shouldReportPowerIssue()Z
    .locals 2

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/server/ZsPowerMonitorService$ZsBinderService;->this$0:Lcom/android/server/ZsPowerMonitorService;

    invoke-static {v0}, Lcom/android/server/ZsPowerMonitorService;->-get4(Lcom/android/server/ZsPowerMonitorService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 366
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ZsPowerMonitorService$ZsBinderService;->this$0:Lcom/android/server/ZsPowerMonitorService;

    invoke-static {v0}, Lcom/android/server/ZsPowerMonitorService;->-get6(Lcom/android/server/ZsPowerMonitorService;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 365
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
