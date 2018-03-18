.class Lcom/android/server/BatteryService$7;
.super Ljava/lang/Thread;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService;->registerListenerAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/android/server/BatteryService$7;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 295
    const/4 v4, 0x0

    .line 296
    .local v4, "times":I
    const/16 v1, 0x32

    .local v1, "delay":I
    move v5, v4

    .line 297
    .end local v4    # "times":I
    .local v5, "times":I
    :goto_0
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "times":I
    .restart local v4    # "times":I
    const/16 v6, 0xa

    if-ge v5, v6, :cond_1

    .line 299
    int-to-long v6, v1

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    mul-int/lit8 v1, v1, 0x2

    .line 304
    :goto_1
    iget-object v6, p0, Lcom/android/server/BatteryService$7;->this$0:Lcom/android/server/BatteryService;

    const-string/jumbo v7, "batteryproperties"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/BatteryService;->-set0(Lcom/android/server/BatteryService;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 306
    iget-object v6, p0, Lcom/android/server/BatteryService$7;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v6}, Lcom/android/server/BatteryService;->-get5(Lcom/android/server/BatteryService;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/IBatteryPropertiesRegistrar$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IBatteryPropertiesRegistrar;

    move-result-object v0

    .line 308
    .local v0, "batteryPropertiesRegistrar":Landroid/os/IBatteryPropertiesRegistrar;
    iget-object v6, p0, Lcom/android/server/BatteryService$7;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v6}, Lcom/android/server/BatteryService;->-get5(Lcom/android/server/BatteryService;)Landroid/os/IBinder;

    move-result-object v6

    if-nez v6, :cond_0

    .line 309
    const-string/jumbo v6, "BatteryService"

    const-string/jumbo v7, "try register to healthd later"

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v4

    .line 310
    .end local v4    # "times":I
    .restart local v5    # "times":I
    goto :goto_0

    .line 301
    .end local v0    # "batteryPropertiesRegistrar":Landroid/os/IBatteryPropertiesRegistrar;
    .end local v5    # "times":I
    .restart local v4    # "times":I
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 314
    .end local v3    # "e":Ljava/lang/InterruptedException;
    .restart local v0    # "batteryPropertiesRegistrar":Landroid/os/IBatteryPropertiesRegistrar;
    :cond_0
    :try_start_1
    const-string/jumbo v6, "BatteryService"

    const-string/jumbo v7, "register to healthd"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    new-instance v6, Lcom/android/server/BatteryService$BatteryListener;

    iget-object v7, p0, Lcom/android/server/BatteryService$7;->this$0:Lcom/android/server/BatteryService;

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/android/server/BatteryService$BatteryListener;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$BatteryListener;)V

    invoke-interface {v0, v6}, Landroid/os/IBatteryPropertiesRegistrar;->registerListener(Landroid/os/IBatteryPropertiesListener;)V

    .line 316
    iget-object v6, p0, Lcom/android/server/BatteryService$7;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v6}, Lcom/android/server/BatteryService;->-get5(Lcom/android/server/BatteryService;)Landroid/os/IBinder;

    move-result-object v6

    new-instance v7, Lcom/android/server/BatteryService$7$1;

    invoke-direct {v7, p0}, Lcom/android/server/BatteryService$7$1;-><init>(Lcom/android/server/BatteryService$7;)V

    .line 322
    const/4 v8, 0x0

    .line 316
    invoke-interface {v6, v7, v8}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 329
    .end local v0    # "batteryPropertiesRegistrar":Landroid/os/IBatteryPropertiesRegistrar;
    :cond_1
    :goto_2
    const-string/jumbo v6, "BatteryService"

    const-string/jumbo v7, "register thread exit"

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    return-void

    .line 323
    .restart local v0    # "batteryPropertiesRegistrar":Landroid/os/IBatteryPropertiesRegistrar;
    :catch_1
    move-exception v2

    .line 325
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "BatteryService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
