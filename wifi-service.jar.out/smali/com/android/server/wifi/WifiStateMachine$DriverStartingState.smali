.class Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DriverStartingState"
.end annotation


# instance fields
.field private mTries:I

.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 5032
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    .line 5036
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->mTries:I

    .line 5038
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    .line 5039
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get20(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-set10(Lcom/android/server/wifi/WifiStateMachine;I)I

    move-result v2

    .line 5038
    const v3, 0x20013

    .line 5039
    const/4 v4, 0x0

    .line 5038
    invoke-virtual {v1, v3, v2, v4}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 5039
    const-wide/16 v2, 0x2710

    .line 5038
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 5035
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 5043
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1, p1, p0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Lcom/android/internal/util/State;)V

    .line 5045
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 5097
    return v5

    .line 5047
    :sswitch_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap1(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)Landroid/net/wifi/SupplicantState;

    move-result-object v0

    .line 5052
    .local v0, "state":Landroid/net/wifi/SupplicantState;
    invoke-static {v0}, Landroid/net/wifi/SupplicantState;->isDriverActive(Landroid/net/wifi/SupplicantState;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5053
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get21(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap49(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 5099
    .end local v0    # "state":Landroid/net/wifi/SupplicantState;
    :cond_0
    :goto_0
    :sswitch_1
    return v6

    .line 5057
    :sswitch_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get20(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 5058
    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->mTries:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    .line 5059
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to start driver after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->mTries:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 5060
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1, v5}, Lcom/android/server/wifi/WifiStateMachine;->setSupplicantRunning(Z)V

    .line 5061
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1, v6}, Lcom/android/server/wifi/WifiStateMachine;->setSupplicantRunning(Z)V

    goto :goto_0

    .line 5063
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v2, "Driver start failed, retrying"

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 5064
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get79(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 5065
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get91(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiNative;->startDriver()Z

    .line 5066
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get79(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 5068
    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->mTries:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->mTries:I

    .line 5070
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    .line 5071
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get20(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->-set10(Lcom/android/server/wifi/WifiStateMachine;I)I

    move-result v3

    .line 5070
    const v4, 0x20013

    invoke-virtual {v2, v4, v3, v5}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 5071
    const-wide/16 v4, 0x2710

    .line 5070
    invoke-virtual {v1, v2, v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_0

    .line 5088
    :sswitch_3
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get1()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-set44(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 5089
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap19(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 5045
    :sswitch_data_0
    .sparse-switch
        0x2000d -> :sswitch_3
        0x2000e -> :sswitch_3
        0x20013 -> :sswitch_2
        0x20047 -> :sswitch_3
        0x20049 -> :sswitch_3
        0x2004a -> :sswitch_3
        0x2004b -> :sswitch_3
        0x2005a -> :sswitch_3
        0x24003 -> :sswitch_3
        0x24004 -> :sswitch_3
        0x24005 -> :sswitch_1
        0x24006 -> :sswitch_0
        0x24007 -> :sswitch_3
        0x2400a -> :sswitch_3
        0x24011 -> :sswitch_1
        0x2402b -> :sswitch_3
    .end sparse-switch
.end method
