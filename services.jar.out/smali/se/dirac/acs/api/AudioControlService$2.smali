.class Lse/dirac/acs/api/AudioControlService$2;
.super Lse/dirac/acs/api/IAudioControlServiceCallback$Stub;
.source "AudioControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lse/dirac/acs/api/AudioControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lse/dirac/acs/api/AudioControlService;


# direct methods
.method constructor <init>(Lse/dirac/acs/api/AudioControlService;)V
    .locals 0

    .prologue
    .line 487
    iput-object p1, p0, Lse/dirac/acs/api/AudioControlService$2;->this$0:Lse/dirac/acs/api/AudioControlService;

    invoke-direct {p0}, Lse/dirac/acs/api/IAudioControlServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFilterAdd(J[I)V
    .locals 5

    .prologue
    .line 495
    iget-object v0, p0, Lse/dirac/acs/api/AudioControlService$2;->this$0:Lse/dirac/acs/api/AudioControlService;

    invoke-static {v0}, Lse/dirac/acs/api/AudioControlService;->access$400(Lse/dirac/acs/api/AudioControlService;)Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor;

    move-result-object v0

    if-nez v0, :cond_0

    .line 503
    :goto_0
    return-void

    .line 497
    :cond_0
    :try_start_0
    iget-object v0, p0, Lse/dirac/acs/api/AudioControlService$2;->this$0:Lse/dirac/acs/api/AudioControlService;

    invoke-virtual {v0, p1, p2}, Lse/dirac/acs/api/AudioControlService;->getDevice(J)Lse/dirac/acs/api/Device;

    move-result-object v0

    .line 498
    iget-object v1, p0, Lse/dirac/acs/api/AudioControlService$2;->this$0:Lse/dirac/acs/api/AudioControlService;

    invoke-static {v1}, Lse/dirac/acs/api/AudioControlService;->access$400(Lse/dirac/acs/api/AudioControlService;)Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor;

    move-result-object v1

    iget-object v2, v0, Lse/dirac/acs/api/Device;->filters:Ljava/util/List;

    sget-object v3, Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;->ADD:Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;

    invoke-interface {v1, v0, v2, v3}, Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor;->onChange(Lse/dirac/acs/api/Device;Ljava/util/List;Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 501
    :catch_0
    move-exception v0

    .line 500
    iget-object v1, p0, Lse/dirac/acs/api/AudioControlService$2;->this$0:Lse/dirac/acs/api/AudioControlService;

    invoke-static {v1, v0}, Lse/dirac/acs/api/AudioControlService;->access$500(Lse/dirac/acs/api/AudioControlService;Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public onRoutingChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "se.dirac.acs-api"

    const-string/jumbo v1, "Routing change callback received"

    .line 545
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    iget-object v0, p0, Lse/dirac/acs/api/AudioControlService$2;->this$0:Lse/dirac/acs/api/AudioControlService;

    invoke-static {v0}, Lse/dirac/acs/api/AudioControlService;->access$900(Lse/dirac/acs/api/AudioControlService;)Lse/dirac/acs/api/AudioControlService$RoutingChangedFunctor;

    move-result-object v0

    if-nez v0, :cond_0

    .line 553
    :goto_0
    return-void

    .line 548
    :cond_0
    :try_start_0
    iget-object v0, p0, Lse/dirac/acs/api/AudioControlService$2;->this$0:Lse/dirac/acs/api/AudioControlService;

    invoke-static {v0}, Lse/dirac/acs/api/AudioControlService;->access$900(Lse/dirac/acs/api/AudioControlService;)Lse/dirac/acs/api/AudioControlService$RoutingChangedFunctor;

    move-result-object v0

    invoke-interface {v0, p1}, Lse/dirac/acs/api/AudioControlService$RoutingChangedFunctor;->onRoutingChanged(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 551
    :catch_0
    move-exception v0

    .line 550
    iget-object v1, p0, Lse/dirac/acs/api/AudioControlService$2;->this$0:Lse/dirac/acs/api/AudioControlService;

    invoke-static {v1, v0}, Lse/dirac/acs/api/AudioControlService;->access$500(Lse/dirac/acs/api/AudioControlService;Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public onSetUser(Ljava/lang/String;)V
    .locals 2

    .prologue
    const-string/jumbo v0, "se.dirac.acs-api"

    const-string/jumbo v1, "Set user callback received"

    .line 523
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget-object v0, p0, Lse/dirac/acs/api/AudioControlService$2;->this$0:Lse/dirac/acs/api/AudioControlService;

    invoke-static {v0}, Lse/dirac/acs/api/AudioControlService;->access$700(Lse/dirac/acs/api/AudioControlService;)Lse/dirac/acs/api/AudioControlService$SetUserFunctor;

    move-result-object v0

    if-nez v0, :cond_0

    .line 530
    :goto_0
    return-void

    .line 526
    :cond_0
    :try_start_0
    iget-object v0, p0, Lse/dirac/acs/api/AudioControlService$2;->this$0:Lse/dirac/acs/api/AudioControlService;

    invoke-static {v0}, Lse/dirac/acs/api/AudioControlService;->access$700(Lse/dirac/acs/api/AudioControlService;)Lse/dirac/acs/api/AudioControlService$SetUserFunctor;

    move-result-object v0

    invoke-interface {v0, p1}, Lse/dirac/acs/api/AudioControlService$SetUserFunctor;->onSetUser(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 529
    :catch_0
    move-exception v0

    .line 528
    iget-object v1, p0, Lse/dirac/acs/api/AudioControlService$2;->this$0:Lse/dirac/acs/api/AudioControlService;

    invoke-static {v1, v0}, Lse/dirac/acs/api/AudioControlService;->access$500(Lse/dirac/acs/api/AudioControlService;Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public onSettingsChanged(Lse/dirac/acs/api/Output;Lse/dirac/acs/api/OutputSettings;)V
    .locals 2

    .prologue
    const-string/jumbo v0, "se.dirac.acs-api"

    const-string/jumbo v1, "Settings changed callback received"

    .line 534
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    iget-object v0, p0, Lse/dirac/acs/api/AudioControlService$2;->this$0:Lse/dirac/acs/api/AudioControlService;

    invoke-static {v0}, Lse/dirac/acs/api/AudioControlService;->access$800(Lse/dirac/acs/api/AudioControlService;)Lse/dirac/acs/api/AudioControlService$SettingsChangedFunctor;

    move-result-object v0

    if-nez v0, :cond_0

    .line 541
    :goto_0
    return-void

    .line 537
    :cond_0
    :try_start_0
    iget-object v0, p0, Lse/dirac/acs/api/AudioControlService$2;->this$0:Lse/dirac/acs/api/AudioControlService;

    invoke-static {v0}, Lse/dirac/acs/api/AudioControlService;->access$800(Lse/dirac/acs/api/AudioControlService;)Lse/dirac/acs/api/AudioControlService$SettingsChangedFunctor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lse/dirac/acs/api/AudioControlService$SettingsChangedFunctor;->onSettingsChanged(Lse/dirac/acs/api/Output;Lse/dirac/acs/api/OutputSettings;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 540
    :catch_0
    move-exception v0

    .line 539
    iget-object v1, p0, Lse/dirac/acs/api/AudioControlService$2;->this$0:Lse/dirac/acs/api/AudioControlService;

    invoke-static {v1, v0}, Lse/dirac/acs/api/AudioControlService;->access$500(Lse/dirac/acs/api/AudioControlService;Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public onSyncDone()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string/jumbo v0, "se.dirac.acs-api"

    const-string/jumbo v1, "Sync done callback received"

    .line 509
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    iget-object v0, p0, Lse/dirac/acs/api/AudioControlService$2;->this$0:Lse/dirac/acs/api/AudioControlService;

    invoke-static {v0}, Lse/dirac/acs/api/AudioControlService;->access$600(Lse/dirac/acs/api/AudioControlService;)Lse/dirac/acs/api/AudioControlService$SyncDoneFunctor;

    move-result-object v0

    if-nez v0, :cond_0

    .line 519
    :goto_0
    return-void

    .line 512
    :cond_0
    :try_start_0
    iget-object v0, p0, Lse/dirac/acs/api/AudioControlService$2;->this$0:Lse/dirac/acs/api/AudioControlService;

    invoke-static {v0}, Lse/dirac/acs/api/AudioControlService;->access$600(Lse/dirac/acs/api/AudioControlService;)Lse/dirac/acs/api/AudioControlService$SyncDoneFunctor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lse/dirac/acs/api/AudioControlService$SyncDoneFunctor;->onSyncDone(Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 516
    iget-object v0, p0, Lse/dirac/acs/api/AudioControlService$2;->this$0:Lse/dirac/acs/api/AudioControlService;

    invoke-static {v0, v2}, Lse/dirac/acs/api/AudioControlService;->access$602(Lse/dirac/acs/api/AudioControlService;Lse/dirac/acs/api/AudioControlService$SyncDoneFunctor;)Lse/dirac/acs/api/AudioControlService$SyncDoneFunctor;

    goto :goto_0

    .line 517
    :catch_0
    move-exception v0

    .line 514
    :try_start_1
    iget-object v1, p0, Lse/dirac/acs/api/AudioControlService$2;->this$0:Lse/dirac/acs/api/AudioControlService;

    invoke-static {v1, v0}, Lse/dirac/acs/api/AudioControlService;->access$500(Lse/dirac/acs/api/AudioControlService;Ljava/lang/RuntimeException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 516
    iget-object v0, p0, Lse/dirac/acs/api/AudioControlService$2;->this$0:Lse/dirac/acs/api/AudioControlService;

    invoke-static {v0, v2}, Lse/dirac/acs/api/AudioControlService;->access$602(Lse/dirac/acs/api/AudioControlService;Lse/dirac/acs/api/AudioControlService$SyncDoneFunctor;)Lse/dirac/acs/api/AudioControlService$SyncDoneFunctor;

    goto :goto_0

    .line 517
    :catchall_0
    move-exception v0

    .line 516
    iget-object v1, p0, Lse/dirac/acs/api/AudioControlService$2;->this$0:Lse/dirac/acs/api/AudioControlService;

    invoke-static {v1, v2}, Lse/dirac/acs/api/AudioControlService;->access$602(Lse/dirac/acs/api/AudioControlService;Lse/dirac/acs/api/AudioControlService$SyncDoneFunctor;)Lse/dirac/acs/api/AudioControlService$SyncDoneFunctor;

    throw v0
.end method
