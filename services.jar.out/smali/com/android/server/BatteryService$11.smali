.class Lcom/android/server/BatteryService$11;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService;->shutdownIfOverTempLocked()V
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
    .line 513
    iput-object p1, p0, Lcom/android/server/BatteryService$11;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 516
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 517
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 518
    .local v1, "junkMap":Ljava/util/HashMap;
    const-string/jumbo v2, "shutdown_reason"

    const-string/jumbo v3, "shutdownIfOverTemperatureLimit"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    invoke-static {}, Lcom/android/server/BatteryService;->-get1()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/util/JunkEvent;->FRAMEWORK_EVENT_ID_6:Ljava/lang/String;

    invoke-static {v2, v3, v1, v4}, Landroid/util/JunkEvent;->sendFrameworkJunk(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Z)V

    .line 520
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 521
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.extra.KEY_CONFIRM"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 522
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 523
    iget-object v2, p0, Lcom/android/server/BatteryService$11;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get7(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 515
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "junkMap":Ljava/util/HashMap;
    :cond_0
    return-void
.end method
