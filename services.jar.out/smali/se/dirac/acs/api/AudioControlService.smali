.class public Lse/dirac/acs/api/AudioControlService;
.super Ljava/lang/Object;
.source "AudioControlService.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lse/dirac/acs/api/AudioControlService$Connection;,
        Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor;,
        Lse/dirac/acs/api/AudioControlService$OnSetOutputDone;,
        Lse/dirac/acs/api/AudioControlService$RoutingChangedFunctor;,
        Lse/dirac/acs/api/AudioControlService$SetUserFunctor;,
        Lse/dirac/acs/api/AudioControlService$SettingsChangedFunctor;,
        Lse/dirac/acs/api/AudioControlService$SyncDoneFunctor;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "se.dirac.acs-api"


# instance fields
.field private final asyncSetOutput:Lse/dirac/acs/api/AsyncHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lse/dirac/acs/api/AsyncHelper",
            "<",
            "Ljava/lang/Boolean;",
            "Lse/dirac/acs/api/OutputSettings;",
            ">;"
        }
    .end annotation
.end field

.field private callback:Lse/dirac/acs/api/IAudioControlServiceCallback;

.field private final context:Landroid/content/Context;

.field private deviceListChangedFunctor:Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor;

.field private final locale:Ljava/lang/String;

.field private mSyncDoneFunctor:Lse/dirac/acs/api/AudioControlService$SyncDoneFunctor;

.field private routingChangedFunctor:Lse/dirac/acs/api/AudioControlService$RoutingChangedFunctor;

.field private service:Lse/dirac/acs/api/IAudioControlService;

.field private setUserFunctor:Lse/dirac/acs/api/AudioControlService$SetUserFunctor;

.field private settingsChangedFunctor:Lse/dirac/acs/api/AudioControlService$SettingsChangedFunctor;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lse/dirac/acs/api/IAudioControlService;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 557
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 487
    new-instance v0, Lse/dirac/acs/api/AudioControlService$2;

    invoke-direct {v0, p0}, Lse/dirac/acs/api/AudioControlService$2;-><init>(Lse/dirac/acs/api/AudioControlService;)V

    iput-object v0, p0, Lse/dirac/acs/api/AudioControlService;->callback:Lse/dirac/acs/api/IAudioControlServiceCallback;

    .line 569
    new-instance v0, Lse/dirac/acs/api/AsyncHelper;

    new-instance v1, Lse/dirac/acs/api/AudioControlService$3;

    invoke-direct {v1, p0}, Lse/dirac/acs/api/AudioControlService$3;-><init>(Lse/dirac/acs/api/AudioControlService;)V

    invoke-direct {v0, v1}, Lse/dirac/acs/api/AsyncHelper;-><init>(Lse/dirac/acs/api/AsyncHelper$Function;)V

    iput-object v0, p0, Lse/dirac/acs/api/AudioControlService;->asyncSetOutput:Lse/dirac/acs/api/AsyncHelper;

    .line 590
    iput-object v2, p0, Lse/dirac/acs/api/AudioControlService;->setUserFunctor:Lse/dirac/acs/api/AudioControlService$SetUserFunctor;

    .line 592
    iput-object v2, p0, Lse/dirac/acs/api/AudioControlService;->settingsChangedFunctor:Lse/dirac/acs/api/AudioControlService$SettingsChangedFunctor;

    .line 593
    iput-object v2, p0, Lse/dirac/acs/api/AudioControlService;->routingChangedFunctor:Lse/dirac/acs/api/AudioControlService$RoutingChangedFunctor;

    .line 558
    iput-object p2, p0, Lse/dirac/acs/api/AudioControlService;->service:Lse/dirac/acs/api/IAudioControlService;

    .line 559
    iput-object p1, p0, Lse/dirac/acs/api/AudioControlService;->context:Landroid/content/Context;

    .line 560
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lse/dirac/acs/api/AudioControlService;->locale:Ljava/lang/String;

    .line 563
    :try_start_0
    iget-object v0, p0, Lse/dirac/acs/api/AudioControlService;->callback:Lse/dirac/acs/api/IAudioControlServiceCallback;

    invoke-interface {p2, v0}, Lse/dirac/acs/api/IAudioControlService;->registerCallback(Lse/dirac/acs/api/IAudioControlServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 567
    return-void

    .line 566
    :catch_0
    move-exception v0

    .line 565
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Exception thrown in registerCallback"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lse/dirac/acs/api/IAudioControlService;Lse/dirac/acs/api/AudioControlService$1;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lse/dirac/acs/api/AudioControlService;-><init>(Landroid/content/Context;Lse/dirac/acs/api/IAudioControlService;)V

    return-void
.end method

.method static synthetic access$400(Lse/dirac/acs/api/AudioControlService;)Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lse/dirac/acs/api/AudioControlService;->deviceListChangedFunctor:Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor;

    return-object v0
.end method

.method static synthetic access$500(Lse/dirac/acs/api/AudioControlService;Ljava/lang/RuntimeException;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lse/dirac/acs/api/AudioControlService;->ensureMainThreadThrow(Ljava/lang/RuntimeException;)V

    return-void
.end method

.method static synthetic access$600(Lse/dirac/acs/api/AudioControlService;)Lse/dirac/acs/api/AudioControlService$SyncDoneFunctor;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lse/dirac/acs/api/AudioControlService;->mSyncDoneFunctor:Lse/dirac/acs/api/AudioControlService$SyncDoneFunctor;

    return-object v0
.end method

.method static synthetic access$602(Lse/dirac/acs/api/AudioControlService;Lse/dirac/acs/api/AudioControlService$SyncDoneFunctor;)Lse/dirac/acs/api/AudioControlService$SyncDoneFunctor;
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lse/dirac/acs/api/AudioControlService;->mSyncDoneFunctor:Lse/dirac/acs/api/AudioControlService$SyncDoneFunctor;

    return-object p1
.end method

.method static synthetic access$700(Lse/dirac/acs/api/AudioControlService;)Lse/dirac/acs/api/AudioControlService$SetUserFunctor;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lse/dirac/acs/api/AudioControlService;->setUserFunctor:Lse/dirac/acs/api/AudioControlService$SetUserFunctor;

    return-object v0
.end method

.method static synthetic access$800(Lse/dirac/acs/api/AudioControlService;)Lse/dirac/acs/api/AudioControlService$SettingsChangedFunctor;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lse/dirac/acs/api/AudioControlService;->settingsChangedFunctor:Lse/dirac/acs/api/AudioControlService$SettingsChangedFunctor;

    return-object v0
.end method

.method static synthetic access$900(Lse/dirac/acs/api/AudioControlService;)Lse/dirac/acs/api/AudioControlService$RoutingChangedFunctor;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lse/dirac/acs/api/AudioControlService;->routingChangedFunctor:Lse/dirac/acs/api/AudioControlService$RoutingChangedFunctor;

    return-object v0
.end method

.method public static bind(Landroid/content/Context;Lse/dirac/acs/api/AudioControlService$Connection;)Z
    .locals 3

    .prologue
    .line 87
    invoke-static {}, Lse/dirac/acs/api/AudioControlService;->getStartIntent()Landroid/content/Intent;

    move-result-object v0

    .line 88
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 89
    invoke-static {p1, p0}, Lse/dirac/acs/api/AudioControlService$Connection;->access$002(Lse/dirac/acs/api/AudioControlService$Connection;Landroid/content/Context;)Landroid/content/Context;

    .line 90
    invoke-static {p1}, Lse/dirac/acs/api/AudioControlService$Connection;->access$200(Lse/dirac/acs/api/AudioControlService$Connection;)Landroid/content/ServiceConnection;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    return v0
.end method

.method private ensureMainThreadThrow(Ljava/lang/RuntimeException;)V
    .locals 2

    .prologue
    .line 597
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lse/dirac/acs/api/AudioControlService;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lse/dirac/acs/api/AudioControlService$4;

    invoke-direct {v1, p0, p1}, Lse/dirac/acs/api/AudioControlService$4;-><init>(Lse/dirac/acs/api/AudioControlService;Ljava/lang/RuntimeException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 603
    return-void
.end method

.method public static getStartIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 106
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "se.dirac.acs"

    const-string/jumbo v2, "se.dirac.acs.AudioControlService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private listDevices(Ljava/lang/String;Lse/dirac/acs/api/Output;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lse/dirac/acs/api/Output;",
            ")",
            "Ljava/util/List",
            "<",
            "Lse/dirac/acs/api/Device;",
            ">;"
        }
    .end annotation

    .prologue
    .line 481
    :try_start_0
    iget-object v0, p0, Lse/dirac/acs/api/AudioControlService;->service:Lse/dirac/acs/api/IAudioControlService;

    invoke-interface {v0, p1, p2}, Lse/dirac/acs/api/IAudioControlService;->listDevices(Ljava/lang/String;Lse/dirac/acs/api/Output;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 483
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Exception thrown in listDevices"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static unbind(Landroid/content/Context;Lse/dirac/acs/api/AudioControlService$Connection;)V
    .locals 1

    .prologue
    .line 101
    invoke-static {p1}, Lse/dirac/acs/api/AudioControlService$Connection;->access$200(Lse/dirac/acs/api/AudioControlService$Connection;)Landroid/content/ServiceConnection;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 102
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 70
    :try_start_0
    iget-object v0, p0, Lse/dirac/acs/api/AudioControlService;->service:Lse/dirac/acs/api/IAudioControlService;

    iget-object v1, p0, Lse/dirac/acs/api/AudioControlService;->callback:Lse/dirac/acs/api/IAudioControlServiceCallback;

    invoke-interface {v0, v1}, Lse/dirac/acs/api/IAudioControlService;->unregisterCallback(Lse/dirac/acs/api/IAudioControlServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 72
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Exception thrown in unregisterCallback"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getDevice(J)Lse/dirac/acs/api/Device;
    .locals 3

    .prologue
    .line 224
    :try_start_0
    iget-object v0, p0, Lse/dirac/acs/api/AudioControlService;->service:Lse/dirac/acs/api/IAudioControlService;

    iget-object v1, p0, Lse/dirac/acs/api/AudioControlService;->locale:Ljava/lang/String;

    invoke-interface {v0, p1, p2, v1}, Lse/dirac/acs/api/IAudioControlService;->getDevice(JLjava/lang/String;)Lse/dirac/acs/api/Device;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 226
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Exception thrown in getDevice call"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getDevice(Ljava/lang/String;)Lse/dirac/acs/api/Device;
    .locals 3

    .prologue
    .line 240
    :try_start_0
    iget-object v0, p0, Lse/dirac/acs/api/AudioControlService;->service:Lse/dirac/acs/api/IAudioControlService;

    iget-object v1, p0, Lse/dirac/acs/api/AudioControlService;->locale:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lse/dirac/acs/api/IAudioControlService;->getDeviceByProductID(Ljava/lang/String;Ljava/lang/String;)Lse/dirac/acs/api/Device;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 242
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Exception thrown in getDevice"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getInstallationId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 394
    :try_start_0
    iget-object v0, p0, Lse/dirac/acs/api/AudioControlService;->service:Lse/dirac/acs/api/IAudioControlService;

    invoke-interface {v0}, Lse/dirac/acs/api/IAudioControlService;->getInstallationId()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 396
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Exception thrown in getInstallId call"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getOutput(Lse/dirac/acs/api/Output;)Lse/dirac/acs/api/OutputSettings;
    .locals 3

    .prologue
    .line 321
    :try_start_0
    iget-object v0, p0, Lse/dirac/acs/api/AudioControlService;->service:Lse/dirac/acs/api/IAudioControlService;

    invoke-interface {v0, p1}, Lse/dirac/acs/api/IAudioControlService;->getCurrentOutputSettings(Lse/dirac/acs/api/Output;)Lse/dirac/acs/api/OutputSettings;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 323
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Exception thrown in getOutput"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getUser()Ljava/lang/String;
    .locals 3

    .prologue
    .line 380
    :try_start_0
    iget-object v0, p0, Lse/dirac/acs/api/AudioControlService;->service:Lse/dirac/acs/api/IAudioControlService;

    invoke-interface {v0}, Lse/dirac/acs/api/IAudioControlService;->getUser()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 382
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Exception thrown in getUser"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getVendorData(Lse/dirac/acs/api/Device;)[B
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 265
    if-eqz p1, :cond_0

    .line 269
    :try_start_0
    iget-object v0, p0, Lse/dirac/acs/api/AudioControlService;->service:Lse/dirac/acs/api/IAudioControlService;

    iget-wide v2, p1, Lse/dirac/acs/api/Device;->id:J

    invoke-interface {v0, v2, v3}, Lse/dirac/acs/api/IAudioControlService;->getDeviceVendorData(J)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 266
    :cond_0
    return-object v0

    .line 269
    :catch_0
    move-exception v0

    .line 271
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Exception thrown in getVendorData"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public listDevices(Lse/dirac/acs/api/Output;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lse/dirac/acs/api/Output;",
            ")",
            "Ljava/util/List",
            "<",
            "Lse/dirac/acs/api/Device;",
            ">;"
        }
    .end annotation

    .prologue
    .line 254
    iget-object v0, p0, Lse/dirac/acs/api/AudioControlService;->locale:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lse/dirac/acs/api/AudioControlService;->listDevices(Ljava/lang/String;Lse/dirac/acs/api/Output;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public registerCallback(Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lse/dirac/acs/api/AudioControlService;->deviceListChangedFunctor:Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor;

    .line 189
    return-void
.end method

.method public registerCallback(Lse/dirac/acs/api/AudioControlService$RoutingChangedFunctor;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lse/dirac/acs/api/AudioControlService;->routingChangedFunctor:Lse/dirac/acs/api/AudioControlService$RoutingChangedFunctor;

    .line 205
    return-void
.end method

.method public registerCallback(Lse/dirac/acs/api/AudioControlService$SetUserFunctor;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lse/dirac/acs/api/AudioControlService;->setUserFunctor:Lse/dirac/acs/api/AudioControlService$SetUserFunctor;

    .line 213
    return-void
.end method

.method public registerCallback(Lse/dirac/acs/api/AudioControlService$SettingsChangedFunctor;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lse/dirac/acs/api/AudioControlService;->settingsChangedFunctor:Lse/dirac/acs/api/AudioControlService$SettingsChangedFunctor;

    .line 197
    return-void
.end method

.method public requestSync(Lse/dirac/acs/api/AudioControlService$SyncDoneFunctor;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 338
    if-eqz p1, :cond_0

    .line 342
    iget-object v1, p0, Lse/dirac/acs/api/AudioControlService;->mSyncDoneFunctor:Lse/dirac/acs/api/AudioControlService$SyncDoneFunctor;

    if-nez v1, :cond_1

    .line 345
    iput-object p1, p0, Lse/dirac/acs/api/AudioControlService;->mSyncDoneFunctor:Lse/dirac/acs/api/AudioControlService$SyncDoneFunctor;

    .line 348
    :try_start_0
    iget-object v1, p0, Lse/dirac/acs/api/AudioControlService;->service:Lse/dirac/acs/api/IAudioControlService;

    invoke-interface {v1}, Lse/dirac/acs/api/IAudioControlService;->requestSync()I

    move-result v1

    invoke-static {v1}, Lse/dirac/acs/api/SyncRequestReply;->fromInt(I)Lse/dirac/acs/api/SyncRequestReply;

    move-result-object v1

    sget-object v2, Lse/dirac/acs/api/SyncRequestReply;->NOT_STARTED:Lse/dirac/acs/api/SyncRequestReply;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v2, :cond_2

    :goto_0
    return v0

    .line 339
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 343
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "sync already requested"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x1

    .line 348
    goto :goto_0

    :catch_0
    move-exception v1

    .line 351
    iput-object v2, p0, Lse/dirac/acs/api/AudioControlService;->mSyncDoneFunctor:Lse/dirac/acs/api/AudioControlService$SyncDoneFunctor;

    .line 352
    return v0
.end method

.method public setDisabled(Lse/dirac/acs/api/Output;)V
    .locals 3

    .prologue
    .line 306
    :try_start_0
    iget-object v0, p0, Lse/dirac/acs/api/AudioControlService;->service:Lse/dirac/acs/api/IAudioControlService;

    invoke-interface {v0, p1}, Lse/dirac/acs/api/IAudioControlService;->setDisabled(Lse/dirac/acs/api/Output;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    return-void

    .line 309
    :catch_0
    move-exception v0

    .line 308
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Exception thrown in setDisabled"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setOutput(Lse/dirac/acs/api/OutputSettings;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 286
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lse/dirac/acs/api/AudioControlService;->service:Lse/dirac/acs/api/IAudioControlService;

    invoke-interface {v1, p1}, Lse/dirac/acs/api/IAudioControlService;->setOutput(Lse/dirac/acs/api/OutputSettings;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 288
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Exception thrown in setOutput"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setOutput(Lse/dirac/acs/api/OutputSettings;Lse/dirac/acs/api/AudioControlService$OnSetOutputDone;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 295
    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lse/dirac/acs/api/AudioControlService;->asyncSetOutput:Lse/dirac/acs/api/AsyncHelper;

    invoke-static {p2}, Lse/dirac/acs/api/AudioControlService$OnSetOutputDone;->access$300(Lse/dirac/acs/api/AudioControlService$OnSetOutputDone;)Lse/dirac/acs/api/AsyncHelper$Function;

    move-result-object v2

    iget-object v3, p0, Lse/dirac/acs/api/AudioControlService;->context:Landroid/content/Context;

    invoke-virtual {v1, p1, v2, v3}, Lse/dirac/acs/api/AsyncHelper;->execute(Ljava/lang/Object;Lse/dirac/acs/api/AsyncHelper$Function;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setUser(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 443
    if-eqz p1, :cond_2

    .line 446
    :cond_0
    if-nez p1, :cond_3

    .line 447
    :cond_1
    return v4

    .line 443
    :cond_2
    if-nez p2, :cond_0

    .line 444
    invoke-virtual {p0, p1, p2}, Lse/dirac/acs/api/AudioControlService;->setUserAsync(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 446
    :cond_3
    if-eqz p2, :cond_1

    .line 449
    iget-object v0, p0, Lse/dirac/acs/api/AudioControlService;->setUserFunctor:Lse/dirac/acs/api/AudioControlService$SetUserFunctor;

    .line 450
    new-array v1, v3, [Z

    .line 451
    aput-boolean v4, v1, v4

    .line 453
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 454
    new-instance v3, Lse/dirac/acs/api/AudioControlService$1;

    invoke-direct {v3, p0, v1, p1, v2}, Lse/dirac/acs/api/AudioControlService$1;-><init>(Lse/dirac/acs/api/AudioControlService;[ZLjava/lang/String;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v3}, Lse/dirac/acs/api/AudioControlService;->registerCallback(Lse/dirac/acs/api/AudioControlService$SetUserFunctor;)V

    .line 462
    invoke-virtual {p0, p1, p2}, Lse/dirac/acs/api/AudioControlService;->setUserAsync(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 470
    :goto_0
    invoke-virtual {p0, v0}, Lse/dirac/acs/api/AudioControlService;->registerCallback(Lse/dirac/acs/api/AudioControlService$SetUserFunctor;)V

    .line 472
    aget-boolean v0, v1, v4

    return v0

    .line 464
    :cond_4
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 467
    :catch_0
    move-exception v2

    const-string/jumbo v2, "se.dirac.acs-api"

    const-string/jumbo v3, "Set user interrupted, somehow"

    .line 466
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setUserAsync(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 421
    :try_start_0
    iget-object v0, p0, Lse/dirac/acs/api/AudioControlService;->service:Lse/dirac/acs/api/IAudioControlService;

    invoke-interface {v0, p1, p2}, Lse/dirac/acs/api/IAudioControlService;->setUser(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    .line 423
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Exception thrown in requestSync"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public userHasLicense(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 366
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lse/dirac/acs/api/AudioControlService;->service:Lse/dirac/acs/api/IAudioControlService;

    invoke-interface {v1, p1}, Lse/dirac/acs/api/IAudioControlService;->userHasLicense(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 368
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Exception thrown in userHasLicense"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
