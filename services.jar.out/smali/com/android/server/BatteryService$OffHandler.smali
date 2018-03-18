.class Lcom/android/server/BatteryService$OffHandler;
.super Landroid/os/Handler;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OffHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 1257
    iput-object p1, p0, Lcom/android/server/BatteryService$OffHandler;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    .line 1260
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1261
    iget v3, p1, Landroid/os/Message;->what:I

    if-lez v3, :cond_1

    .line 1262
    iget-object v3, p0, Lcom/android/server/BatteryService$OffHandler;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v3}, Lcom/android/server/BatteryService;->-get7(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const v5, 0x104062d

    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1263
    .local v2, "str":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/BatteryService$OffHandler;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v3}, Lcom/android/server/BatteryService;->-get12(Lcom/android/server/BatteryService;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1259
    .end local v2    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1265
    :cond_1
    iget-object v3, p0, Lcom/android/server/BatteryService$OffHandler;->this$0:Lcom/android/server/BatteryService;

    iget-object v3, v3, Lcom/android/server/BatteryService;->countdownDialog:Lcom/zeusis/widget/dialog/AlertDialog;

    invoke-virtual {v3}, Lcom/zeusis/widget/dialog/AlertDialog;->dismiss()V

    .line 1266
    iget-object v3, p0, Lcom/android/server/BatteryService$OffHandler;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v3}, Lcom/android/server/BatteryService;->-get13(Lcom/android/server/BatteryService;)Ljava/util/Timer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    .line 1267
    invoke-static {}, Lcom/android/server/BatteryService;->-get1()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "low temperature countdown finished and shutdown now"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1269
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1270
    .local v1, "junkMap":Ljava/util/HashMap;
    const-string/jumbo v3, "shutdown_reason"

    const-string/jumbo v4, "shutdownIfUnderTemperatureLimit"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1271
    invoke-static {}, Lcom/android/server/BatteryService;->-get1()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/util/JunkEvent;->FRAMEWORK_EVENT_ID_6:Ljava/lang/String;

    invoke-static {v3, v4, v1, v6}, Landroid/util/JunkEvent;->sendFrameworkJunk(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Z)V

    .line 1272
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1273
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "android.intent.extra.KEY_CONFIRM"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1274
    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1275
    iget-object v3, p0, Lcom/android/server/BatteryService$OffHandler;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v3}, Lcom/android/server/BatteryService;->-get7(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method
