.class public final Lcom/android/server/AlarmManagerService$LocalService;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 1618
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$LocalService;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changeAppAlarmTypeForAppFreeze(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1641
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$LocalService;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService;->changeAppAlarmTypeForAppFreezeImpl(Ljava/lang/String;)V

    .line 1640
    return-void
.end method

.method public getAlarmStats()Landroid/os/AlarmStats;
    .locals 10

    .prologue
    .line 1624
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$LocalService;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v9, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1625
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$LocalService;->this$0:Lcom/android/server/AlarmManagerService;

    iget-boolean v0, v0, Lcom/android/server/AlarmManagerService;->mRecording:Z

    if-eqz v0, :cond_0

    .line 1626
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$LocalService;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/AlarmManagerService;->mRecordStopByAlarmManager:Z

    .line 1627
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$LocalService;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService;->stopRecordWakeupAlarms()V

    .line 1629
    :cond_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$LocalService;->this$0:Lcom/android/server/AlarmManagerService;

    iget v0, v0, Lcom/android/server/AlarmManagerService;->mSystemWakeups:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$LocalService;->this$0:Lcom/android/server/AlarmManagerService;

    iget v0, v0, Lcom/android/server/AlarmManagerService;->mTotalWakeups:I

    if-lez v0, :cond_1

    .line 1630
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$LocalService;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v2, v0, Lcom/android/server/AlarmManagerService;->mNonInteractiveStopElapsedTime:J

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$LocalService;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService;->mNonInteractiveStartElapsedTime:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 1631
    new-instance v1, Landroid/os/AlarmStats;

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$LocalService;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v2, v0, Lcom/android/server/AlarmManagerService;->mNonInteractiveStartElapsedTime:J

    .line 1632
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$LocalService;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService;->mNonInteractiveStopElapsedTime:J

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$LocalService;->this$0:Lcom/android/server/AlarmManagerService;

    iget v6, v0, Lcom/android/server/AlarmManagerService;->mSystemWakeups:I

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$LocalService;->this$0:Lcom/android/server/AlarmManagerService;

    iget v7, v0, Lcom/android/server/AlarmManagerService;->mTotalWakeups:I

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$LocalService;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v8, v0, Lcom/android/server/AlarmManagerService;->mCustomRecentWakeups:Ljava/util/LinkedList;

    .line 1631
    invoke-direct/range {v1 .. v8}, Landroid/os/AlarmStats;-><init>(JJIILjava/util/LinkedList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v1, "stats":Landroid/os/AlarmStats;
    monitor-exit v9

    .line 1633
    return-object v1

    .line 1635
    .end local v1    # "stats":Landroid/os/AlarmStats;
    :cond_1
    const/4 v0, 0x0

    monitor-exit v9

    return-object v0

    .line 1624
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method public setDeviceIdleUserWhitelist([I)V
    .locals 0
    .param p1, "appids"    # [I

    .prologue
    .line 1619
    return-void
.end method
