.class final Lcom/android/server/power/PowerManagerService$LocalService;
.super Landroid/os/PowerManagerInternal;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 4206
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Landroid/os/PowerManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$LocalService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$LocalService;-><init>(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public getAllWakeLocks()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4361
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->getAllWakeLocksImpl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEarliestWakeLock(I)Ljava/lang/String;
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 4356
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->getEarliestWakeLockImpl(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLowPowerModeEnabled()Z
    .locals 2

    .prologue
    .line 4259
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get12(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4260
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get13(Lcom/android/server/power/PowerManagerService;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 4259
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isAudioMixLocked(Ljava/lang/String;I)Z
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v9, 0x0

    .line 4319
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v6}, Lcom/android/server/power/PowerManagerService;->-get12(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 4320
    :try_start_0
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object v6, v6, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4321
    .local v2, "numWakeLocks":I
    const/4 v4, -0x1

    .line 4322
    .local v4, "uidSource":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 4323
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object v6, v6, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 4324
    .local v5, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    const-string/jumbo v6, "AudioMix"

    iget-object v8, v5, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4325
    iget-object v6, v5, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v6, :cond_1

    iget-object v6, v5, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v6}, Landroid/os/WorkSource;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 4326
    iget-object v6, v5, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v6}, Landroid/os/WorkSource;->size()I

    move-result v3

    .line 4327
    .local v3, "numWorkSource":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v3, :cond_1

    .line 4328
    iget-object v6, v5, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v6, v1}, Landroid/os/WorkSource;->get(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 4329
    if-ne p2, v4, :cond_0

    .line 4333
    const/4 v6, 0x1

    monitor-exit v7

    return v6

    .line 4327
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4322
    .end local v1    # "j":I
    .end local v3    # "numWorkSource":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v5    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_2
    monitor-exit v7

    .line 4340
    return v9

    .line 4319
    .end local v0    # "i":I
    .end local v2    # "numWakeLocks":I
    .end local v4    # "uidSource":I
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method public powerHint(II)V
    .locals 1
    .param p1, "hintId"    # I
    .param p2, "data"    # I

    .prologue
    .line 4303
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/power/PowerManagerService;->-wrap22(Lcom/android/server/power/PowerManagerService;II)V

    .line 4302
    return-void
.end method

.method public registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/os/PowerManagerInternal$LowPowerModeListener;

    .prologue
    .line 4266
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get12(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4267
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get14(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 4265
    return-void

    .line 4266
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setButtonBrightnessOverrideFromWindowManager(I)V
    .locals 0
    .param p1, "screenBrightness"    # I

    .prologue
    .line 4217
    return-void
.end method

.method public setDeviceIdleMode(Z)Z
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 4273
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->setDeviceIdleModeInternal(Z)Z

    move-result v0

    return v0
.end method

.method public setDeviceIdleTempWhitelist([I)V
    .locals 1
    .param p1, "appids"    # [I

    .prologue
    .line 4288
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->setDeviceIdleTempWhitelistInternal([I)V

    .line 4287
    return-void
.end method

.method public setDeviceIdleWhitelist([I)V
    .locals 1
    .param p1, "appids"    # [I

    .prologue
    .line 4283
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->setDeviceIdleWhitelistInternal([I)V

    .line 4282
    return-void
.end method

.method public setDozeOverrideFromDreamManager(II)V
    .locals 1
    .param p1, "screenState"    # I
    .param p2, "screenBrightness"    # I

    .prologue
    .line 4224
    packed-switch p1, :pswitch_data_0

    .line 4232
    const/4 p1, 0x0

    .line 4235
    :pswitch_0
    const/4 v0, -0x1

    if-lt p2, v0, :cond_0

    .line 4236
    sget v0, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    if-le p2, v0, :cond_1

    .line 4237
    :cond_0
    const/4 p2, -0x1

    .line 4239
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/power/PowerManagerService;->-wrap26(Lcom/android/server/power/PowerManagerService;II)V

    .line 4223
    return-void

    .line 4224
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setLightDeviceIdleMode(Z)Z
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 4278
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->setLightDeviceIdleModeInternal(Z)Z

    move-result v0

    return v0
.end method

.method public setMaximumScreenOffTimeoutFromDeviceAdmin(I)V
    .locals 1
    .param p1, "timeMs"    # I

    .prologue
    .line 4254
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->setMaximumScreenOffTimeoutFromDeviceAdminInternal(I)V

    .line 4253
    return-void
.end method

.method public setScreenBrightnessOverrideFromWindowManager(I)V
    .locals 1
    .param p1, "screenBrightness"    # I

    .prologue
    .line 4209
    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    .line 4210
    sget v0, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    if-le p1, v0, :cond_1

    .line 4211
    :cond_0
    const/4 p1, -0x1

    .line 4213
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0, p1}, Lcom/android/server/power/PowerManagerService;->-wrap29(Lcom/android/server/power/PowerManagerService;I)V

    .line 4208
    return-void
.end method

.method public setUserActivityTimeoutOverrideFromWindowManager(J)V
    .locals 1
    .param p1, "timeoutMillis"    # J

    .prologue
    .line 4249
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/power/PowerManagerService;->-wrap32(Lcom/android/server/power/PowerManagerService;J)V

    .line 4248
    return-void
.end method

.method public setUserInactiveOverrideFromWindowManager()V
    .locals 1

    .prologue
    .line 4244
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-wrap33(Lcom/android/server/power/PowerManagerService;)V

    .line 4243
    return-void
.end method

.method public uidGone(I)V
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 4298
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->uidGoneInternal(I)V

    .line 4297
    return-void
.end method

.method public updateAcquireWakeLockBlacklistDozeLocal([I)V
    .locals 1
    .param p1, "appIds"    # [I

    .prologue
    .line 4350
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->updateAcquireWakeLockBlacklistDozeInternal([I)V

    .line 4349
    return-void
.end method

.method public updateAppWakeLockStateLocal(ILjava/lang/String;Z)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "disable"    # Z

    .prologue
    .line 4310
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->updateAppWakeLockStateInternal(ILjava/lang/String;Z)V

    .line 4309
    return-void
.end method

.method public updateUidProcState(II)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "procState"    # I

    .prologue
    .line 4293
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/PowerManagerService;->updateUidProcStateInternal(II)V

    .line 4292
    return-void
.end method
