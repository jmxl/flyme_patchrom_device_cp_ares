.class final Lcom/android/server/am/AudioLoopbackManager$userSwitchReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioLoopbackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AudioLoopbackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "userSwitchReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AudioLoopbackManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/AudioLoopbackManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/AudioLoopbackManager;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/server/am/AudioLoopbackManager$userSwitchReceiver;->this$0:Lcom/android/server/am/AudioLoopbackManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 173
    iget-object v1, p0, Lcom/android/server/am/AudioLoopbackManager$userSwitchReceiver;->this$0:Lcom/android/server/am/AudioLoopbackManager;

    iget-object v1, v1, Lcom/android/server/am/AudioLoopbackManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "audio_loopback_setting"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 175
    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 176
    iget-object v1, p0, Lcom/android/server/am/AudioLoopbackManager$userSwitchReceiver;->this$0:Lcom/android/server/am/AudioLoopbackManager;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/am/AudioLoopbackManager;->-set1(Lcom/android/server/am/AudioLoopbackManager;Z)Z

    .line 181
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/AudioLoopbackManager$userSwitchReceiver;->this$0:Lcom/android/server/am/AudioLoopbackManager;

    invoke-virtual {v1}, Lcom/android/server/am/AudioLoopbackManager;->dataBaseChange()V

    .line 172
    :cond_0
    return-void

    .line 179
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/AudioLoopbackManager$userSwitchReceiver;->this$0:Lcom/android/server/am/AudioLoopbackManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/am/AudioLoopbackManager;->-set1(Lcom/android/server/am/AudioLoopbackManager;Z)Z

    goto :goto_0
.end method
