.class Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WpsRunningState"
.end annotation


# instance fields
.field private mSourceMessage:Landroid/os/Message;

.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 8089
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 1

    .prologue
    .line 8094
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap2(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    .line 8093
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 8194
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get81(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigManager;->enableAllNetworks()V

    .line 8195
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get81(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigManager;->loadConfiguredNetworks()V

    .line 8196
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get32(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8197
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap7(Lcom/android/server/wifi/WifiStateMachine;)Z

    .line 8198
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set13(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 8193
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    const v4, 0x2500c

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8098
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, p1, p0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Lcom/android/internal/util/State;)V

    .line 8100
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 8187
    return v2

    .line 8105
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    const v2, 0x2500d

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap34(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    .line 8106
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 8107
    iput-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    .line 8108
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap19(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    .line 8109
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get18(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap49(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 8189
    :cond_0
    :goto_0
    :sswitch_1
    return v3

    .line 8112
    :sswitch_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    .line 8113
    const/4 v2, 0x3

    .line 8112
    invoke-static {v0, v1, v4, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap35(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    .line 8114
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 8115
    iput-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    .line 8116
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get18(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap49(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 8120
    :sswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_1

    iget v0, p1, Landroid/os/Message;->arg2:I

    if-eqz v0, :cond_2

    .line 8121
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v4, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap35(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    .line 8122
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 8123
    iput-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    .line 8124
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get18(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap49(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 8126
    :cond_2
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v1, "Ignore unspecified fail event during WPS connection"

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 8130
    :sswitch_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    .line 8131
    const/4 v2, 0x7

    .line 8130
    invoke-static {v0, v1, v4, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap35(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    .line 8132
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 8133
    iput-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    .line 8134
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get18(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap49(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 8137
    :sswitch_5
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, p1, v4, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap35(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto :goto_0

    .line 8140
    :sswitch_6
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get91(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->cancelWps()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8141
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v1, 0x25010

    invoke-static {v0, p1, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap34(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    .line 8145
    :goto_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get18(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap49(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 8143
    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v1, 0x2500f

    invoke-static {v0, p1, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap35(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto :goto_1

    .line 8158
    :sswitch_7
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap19(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 8162
    :sswitch_8
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get2()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set44(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 8163
    return v3

    .line 8165
    :sswitch_9
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get2()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set44(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 8166
    return v3

    .line 8168
    :sswitch_a
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v1, "Network connection lost"

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 8169
    :cond_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap26(Lcom/android/server/wifi/WifiStateMachine;)V

    goto/16 :goto_0

    .line 8172
    :sswitch_b
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v1, "Ignore Assoc reject event during WPS Connection"

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 8179
    :sswitch_c
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v1, "Ignore auth failure during WPS connection"

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 8100
    :sswitch_data_0
    .sparse-switch
        0x2000e -> :sswitch_7
        0x20036 -> :sswitch_7
        0x20037 -> :sswitch_7
        0x20047 -> :sswitch_9
        0x20048 -> :sswitch_7
        0x2004a -> :sswitch_7
        0x2004b -> :sswitch_7
        0x2008f -> :sswitch_8
        0x20091 -> :sswitch_8
        0x24003 -> :sswitch_0
        0x24004 -> :sswitch_a
        0x24006 -> :sswitch_1
        0x24007 -> :sswitch_c
        0x24008 -> :sswitch_1
        0x24009 -> :sswitch_3
        0x2400a -> :sswitch_2
        0x2400b -> :sswitch_4
        0x2402b -> :sswitch_b
        0x25001 -> :sswitch_7
        0x2500a -> :sswitch_5
        0x2500e -> :sswitch_6
    .end sparse-switch
.end method
