.class Lcom/android/server/policy/global/GlobalActionViewMediator$3;
.super Landroid/content/BroadcastReceiver;
.source "GlobalActionViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/global/GlobalActionViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/global/GlobalActionViewMediator;


# direct methods
.method constructor <init>(Lcom/android/server/policy/global/GlobalActionViewMediator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/global/GlobalActionViewMediator;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator$3;->this$0:Lcom/android/server/policy/global/GlobalActionViewMediator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x2

    .line 163
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 165
    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 164
    if-eqz v2, :cond_2

    .line 166
    :cond_0
    const-string/jumbo v2, "reason"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, "reason":Ljava/lang/String;
    const-string/jumbo v2, "globalactions"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 168
    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionViewMediator$3;->this$0:Lcom/android/server/policy/global/GlobalActionViewMediator;

    invoke-static {v2}, Lcom/android/server/policy/global/GlobalActionViewMediator;->-get0(Lcom/android/server/policy/global/GlobalActionViewMediator;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "received screen off broadcast"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionViewMediator$3;->this$0:Lcom/android/server/policy/global/GlobalActionViewMediator;

    invoke-static {v2}, Lcom/android/server/policy/global/GlobalActionViewMediator;->-get5(Lcom/android/server/policy/global/GlobalActionViewMediator;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 162
    .end local v1    # "reason":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 171
    :cond_2
    const-string/jumbo v2, "android.intent.action.PHONE_STATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 172
    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionViewMediator$3;->this$0:Lcom/android/server/policy/global/GlobalActionViewMediator;

    invoke-static {v2}, Lcom/android/server/policy/global/GlobalActionViewMediator;->-get5(Lcom/android/server/policy/global/GlobalActionViewMediator;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
